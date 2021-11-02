<?php

namespace App\Http\Controllers\auth;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Http\Requests\authRequest;
use App\Models\guru;
use App\Models\kelas;
use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Firebase\JWT\JWT;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Session;

// eevnt

class AuthController extends Controller
{
    protected $token;
    public function __construct()
    {
        $this->middleware('guest', ['except' => ['logout','time_log']]);
    }
    public function index()
    {

        return view('auth.login');
    }
    public function postlogin(authRequest $request)
    {
        $validate = $request->validated();
        $remember = $request->remember == 'on' ? true : false; // rememberme
        if (Auth::attempt($request->only('username', 'password'), $remember)) {
            switch (Auth()->user()->role) {
                case 'siswa':
                    $request->session()->regenerate();
                    return redirect('/user/dashboard');
                    break;
                case  'bkk' or 'tu' or 'kepsek' or'hubin' or 'kurikulum' or 'kesiswaan' or 'litbang' or 'sarpras':
                    $request->session()->regenerate();
                    return redirect('/admin/dashboard');
                    break;
            }
        } else {
            return redirect('/')->withInput()->withErrors(['password' => 'password anda salah','username' => 'username anda salah']);
        }
    }
    public function logout(Request $request)
    {
        Auth::logout();
        session()->flush();
        return response()->json(['success' => "berhasil logout",'role' => $_COOKIE['sitakols_role']]);
      // Cookie::queue(Cookie::forget('sitakols_secreat'));
    }

    public function time_log(Request $request)
    {
        $waktu = 'Logged in ' . session()->get('last_login_at')->locale('en_US')->diffForHumans();
        return response()->json($data = $waktu);
    }

    public function token($token){
        if (empty($token)) {
            return back();
        }
        // get post data api/me
        $ch = curl_init(); // curl post ke web sekolah
        curl_setopt_array(
            $ch,
            array(
                // CURLOPT_URL => 'http://127.0.0.1:8000/api/me', // seusai sama url
                CURLOPT_URL => 'http://new.smktarunabhakti.net/api/me', // seusai sama url 
                // CURLOPT_URL => 'http://117.102.67.70/api/me', // seusai sama url
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_HTTPHEADER => array(
                    "X-Requested-With: XMLHttpRequest",
                    'Authorization: Bearer ' . $token,
                ),
            )
        );
        // Send the request
        $response = curl_exec($ch); // get reponse

        // Check for errors
        if ($response === false) {
            die(curl_error($ch));
        }
        // Close the cURL handler
        curl_close($ch);;
        // Print the date from the response
        $api_res = json_decode($response, true);  // decode response dari json ke arrau

        // decode token response dari api/me web sekolah
        $jwt_token = JWT::decode($api_res['token'], "1342423424324324234", array('HS256')); // decode token
        // dd($jwt_token);
        // mencari data user  yang sudah ada
        $user = User::where('username', $jwt_token->auth->username)->first();
        // cek role
        switch ($jwt_token->auth->role) {
            case 'siswa':
                $role = $jwt_token->user->spesifc_role;
                Cookie::queue("sitakols_role", $jwt_token->auth->role, time() * 3600);
                break;
            case 'guru':
                $role =  $jwt_token->user->spesifc_role; // guru
                Cookie::queue("sitakols_role", $jwt_token->auth->role, time() * 3600);
                break;
            case 'manager':
                $role =  $jwt_token->user->spesifc_role;
                Cookie::queue("sitakols_role", $jwt_token->auth->role, time() * 3600);
                break;
            default:
                # code...fggngn
                break;
        }
        // jika ada login lalu update
        if (Auth::attempt(['username' => $jwt_token->auth->username, 'password' => $jwt_token->auth->password])) {
            $user->update(['username' => $jwt_token->auth->username, 'password' => Hash::make($jwt_token->auth->password), 'role' => $role]);
            switch ($jwt_token->auth->role) {
                case 'siswa':
                    Siswa::where('id_user', $user->id)->update([
                        'nipd' => $jwt_token->user->nomor_induk,
                        'nama_siswa' => $jwt_token->user->name,
                        'nisn' => 'empty',
                        'tempat_lahir' => 'empty',
                        // 'tanggal_lahir' => '0000-00-00',
                        'tanggal_lahir' => Carbon::now()->format('Y-m-d'),
                        'kelas' =>  $jwt_token->kelas->kelas,
                        'jurusan' => $jwt_token->kelas->jurusan,
                    ]);
                    session()->regenerate();
                    return redirect('/user/dashboard');
                    break;
                    break;
                case 'guru':
                case 'manager':
                    guru::where('id_user', $user->id)->update([
                        'nik' => $jwt_token->user->nomor_induk  ,
                        'nama' =>  $jwt_token->user->name ,
                        'jabatan' => $jwt_token->user->spesifc_role,
                        'no_telp' => '00000000',
                    ]);
                    session()->regenerate();
                    return redirect('/admin/dashboard');
                    break;
            }
        }else{ // jika password salah
            if(isset($user)){ // jik user masih ada setelah itu update sesuai sama role nya
                $user->update(['username' => $jwt_token->auth->username, 'password' => Hash::make($jwt_token->auth->password), 'role' => $role]);
                switch ($jwt_token->auth->role) {
                    case 'siswa':
                        Siswa::where('id_user', $user->id)->update([
                            'nipd' => $jwt_token->user->nomor_induk,
                            'nama_siswa' => $jwt_token->user->nomor_induk,
                            'nisn' => 'empty',
                            'tempat_lahir' => 'empty',
                            // 'tanggal_lahir' => '0000-00-00',
                            'tanggal_lahir' => Carbon::now()->format('Y-m-d'),
                            'kelas' =>  $jwt_token->kelas->kelas,
                            'jurusan' => $jwt_token->kelas->jurusan,
                        ]);
                        break;
                    case 'guru':
                    case 'manager':
                        guru::where('id_user', $user->id)->update([
                            'nik' => $jwt_token->user->nomor_induk,
                            'nama' =>  $jwt_token->user->name,
                            'jabatan' => $jwt_token->user->spesifc_role,
                            'no_telp' => '00000000',
                        ]);
                        break;
                }
                // attemp
                if (Auth::attempt(['username' => $jwt_token->auth->username, 'password' => $jwt_token->auth->password])) {
                    switch ($jwt_token->user->spesifc_role) {
                        case 'siswa':
                            session()->regenerate();
                            return redirect('/user/dashboard');
                            break;
                        case  'bkk' or 'tu' or 'kepsek' or 'hubin' or 'kurikulum' or 'kesiswaan' or 'litbang' or 'sarpras' :
                            session()->regenerate();
                            return redirect('/admin/dashboard');
                            break;
                    }
                }
            }else{ // jika user tisak ada buat baru
                $user = User::create([
                    'username' => $jwt_token->auth->username,
                    'password' => Hash::make($jwt_token->auth->password),
                    'role' => $jwt_token->user->spesifc_role
                ]);
                if ($jwt_token->auth->role == "siswa") {
                    $siswa = Siswa::create([
                        'nipd' => $jwt_token->user->nomor_induk,
                        'nama_siswa' => $jwt_token->user->name,
                        'nisn' => 'empty',
                        'tempat_lahir' => 'empty',
                        'tanggal_lahir' => Carbon::now()->format('Y-m-d'),
                        'kelas' =>  $jwt_token->kelas->kelas,
                        'jurusan' => $jwt_token->kelas->jurusan,
                        'id_user' => $user->id,
                    ]);
                    // attemp
                } else {
                    guru::create([
                        'nik' => $jwt_token->user->nomor_induk,
                        'nama' =>  $jwt_token->user->name,
                        'jabatan' => null,
                        'no_telp' => '00000000',
                        'id_user' => $user->id
                    ]);
                }


                if (Auth::attempt(['username' => $jwt_token->auth->username, 'password' => $jwt_token->auth->password])) {
                    switch ($jwt_token->user->spesifc_role) {
                        case 'siswa':
                            session()->regenerate();
                            return redirect('/user/dashboard');
                            break;
                        default:
                            session()->regenerate();
                            return redirect('/admin/dashboard');
                            break;
                    }
                }

            }
        }
    }
}
