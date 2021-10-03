$(document).ready(function () {
    $('#logout').click(function () {
        root = window.location.protocol + '//' + window.location.host;
        url = root + '/logout';
        Swal.fire({
            title: 'Apa anda ingin logout?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Ya',
            cancelButtonText: 'Tidak'
        }).then((result) => {
            if (result.value) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: url,
                    type: "POST",

                    data: '',
                    success: function (response) {
                        console.log(response);
                        // mengambil token jika memakai url
                        // jika tidak redirect ke dashboard
                        root = window.location.protocol + '//' + window.location.host;
                        switch (response.role) {
                            case 'siswa':
                                window.location.href = "http:///127.0.0.1:8000/siswa/dashboard";
                                break;
                            case 'guru':
                                window.location.href = "http://127.0.0.1:8000/guru/dashboard";
                                break;
                            case 'manager':
                                window.location.href = "http:///127.0.0.1:8000/manager/dashboard";
                                break;
                        }

                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            } else if (result.dismiss === Swal.DismissReason.cancel) {}
        })
    });
});
