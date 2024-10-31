<!-- =======================================================
      * CMS DATAGOE
      * Content Management System.
      *
      * @author			Vian Taum <viantaum17@gmail.com>
      * @website		www.datagoe.com
      * @copyright		(c) 2023 - Datagoe Software
 ======================================================== -->

<?php

use App\Models\Modelkonfigurasi;

$this->konfigurasi = new Modelkonfigurasi();
$konfigurasi = $this->konfigurasi->orderBy('id_setaplikasi')->first();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">

    <title>Reset Password</title>
    <meta content="CMS DATAGOE" name="Datagoe Software" />
    <meta content="Themesbrand" name="Vian Taum" />

    <link rel="shortcut icon" href="<?= base_url('/public/img/konfigurasi/icon/' . $konfigurasi['icon']) ?>">
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/sweetalert2/sweetalert2.min.css') ?>" rel="stylesheet" type="text/css" />

    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/bootstrap.min.css') ?>" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/icons.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/app.min.css?v2') ?>" id="app-style" rel="stylesheet" type="text/css" />
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/page-auth.css') ?>" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body class="authentication-bg bg-infox">

    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card shadow-lg">
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-brandx justify-content-center ">
                            <a href="<?= base_url('') ?>" class="x">

                                <?php if (file_exists('public/img/konfigurasi/logo/' . $konfigurasi['logo'])) {
                                    $img = $konfigurasi['logo'];
                                } else {
                                    $img = 'default.png';
                                }
                                ?>
                                <div class="text-center pb-0">
                                    <a href="<?= base_url() ?>">
                                        <img src="<?= base_url('/public/img/konfigurasi/logo/' . $img) ?>" height="100%" alt="logo">
                                    </a>
                                </div>
                            </a>
                        </div>
                        <hr>
                        <!-- <p class="mb-3 font-size-14">Masukkan email untuk menerima instruksi selanjutnya!</p> -->
                        <?= form_open('login/prosesgantipass', ['class' => 'formlogin']) ?>

                        <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" id="csrf_tokencmsdatagoe" />

                        <form class="mb-1" autocomplete="off | unknown-autocomplete-value">

                            <div class="form-group mb-3">
                                <label for="password">Masukan Password Baru</label>
                                <input type="password" class="form-control" name="password" id="password" value="<?= htmlentities(set_value('password'), ENT_QUOTES) ?>" placeholder="Enter password">
                                <div class="invalid-feedback errorpassword"></div>
                            </div>

                            <div class="form-group mb-3">
                                <label for="password_confirm">Ulangi Kembali</label>
                                <input type="password" class="form-control" name="password_confirm" id="password_confirm" value="<?= htmlentities(set_value('password_confirm'), ENT_QUOTES) ?>" placeholder="Enter password">

                                <div class="invalid-feedback errorpassword_confirm"></div>
                            </div>
                            <input type="hidden" name="token" value="<?= $token ?>" />

                            <div class="mb-3">
                                <button class="btn btn-primary d-grid w-100 btnlogin" type="submit">Set New Password</button>
                            </div>
                        </form>
                        <?php echo form_close() ?>
                        <div class="text-center">
                            <a href="<?= base_url('login') ?>" class="d-flex align-items-center justify-content-center">
                                <i class="mdi mdi-chevron-left btn-sm font-size-16"></i>
                                Back to login
                            </a>
                        </div>

                    </div>
                </div>
                <div class="container border-top text-center pt-1">
                    © <script>
                        document.write(new Date().getFullYear())
                    </script> <?= $konfigurasi['nama'] ?> <br> <small><i class="mdi mdi-console text-dark"></i> Versi <?= $konfigurasi['vercms'] ?></small>

                </div>
            </div>
        </div>
    </div>

    <script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/jquery/jquery-3.7.1.min.js') ?>"></script>
    <script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/node-waves/waves.min.js') ?>"></script>
    <script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/sweetalert2/sweetalert2.min.js') ?>"></script>
    <script src="<?= base_url('/public/template/backend/' . $folder . '/assets/js/app.js') ?>"></script>

</body>

</html>

<script>
    $('.formlogin').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: "post",
            url: $(this).attr('action'),
            data: $(this).serialize(),
            dataType: "json",
            beforeSend: function() {
                $('.btnlogin').prop('disable', true);
                $('.btnlogin').html(`<i><span class="spinner-border text-light" style="width: 1rem; height: 1rem;" aria-hidden="true"></span> Loading...</i>`);


            },
            complete: function() {
                $('.btnlogin').prop('disable', false);
                $('.btnlogin').html('Set New Password')
                // $('.btnlogin').html('<i class="mdi mdi-content-save-settings"></i>  Set New Password');
            },
            success: function(response) {
                if (response.error) {

                    if (response.error.password) {
                        $('#password').addClass('is-invalid');
                        $('.errorpassword').html(response.error.password);
                    } else {
                        $('#password').removeClass('is-invalid');
                        $('.errorpassword').html();
                    }

                    if (response.error.password_confirm) {
                        $('#password_confirm').addClass('is-invalid');
                        $('.errorpassword_confirm').html(response.error.password_confirm);
                    } else {
                        $('#password_confirm').removeClass('is-invalid');
                        $('.errorpassword_confirm').html();
                    }
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }

                if (response.sukses) {
                    Swal.fire({
                        title: "Sukses Ganti Password",
                        text: "Password Anda telah berhasil diubah silahkan Login",
                        icon: "success",

                    }).then(function() {
                        window.location = '<?= base_url('login') ?>';
                    })
                }

            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal proses data!",
                    html: `Ada kesalahan silahkan coba lagi `,
                    icon: "error",
                    showConfirmButton: false,
                    timer: 3100
                });
                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
            }
        });
        return false;
    });
</script>