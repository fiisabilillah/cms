<!-- =======================================================
      * CMS DATAGOE
      * Content Management System.
      *
      * @author			Vian Taum <viantaum17@gmail.com>
      * @website		www.datagoe.com
      * @copyright		(c) 2023 - Datagoe Software
 ======================================================== -->

<!DOCTYPE html>
<html lang="in">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">

    <title>Registrasi Pengguna</title>
    <meta content="Admin Dashboard" name="Datagoe Software" />
    <meta content="CMS Datagoe" name="Vian Taum" />
    <link rel="shortcut icon" href="<?= base_url('/public/img/konfigurasi/icon/' . $konfigurasi->icon) ?>">
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/sweetalert2/sweetalert2.min.css') ?>" rel="stylesheet" type="text/css" />

    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/bootstrap.min.css') ?>" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/icons.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/app.min.css?v2') ?>" id="app-style" rel="stylesheet" type="text/css" />
    <link href="<?= base_url('/public/template/backend/' . $folder . '/assets/css/page-auth.css') ?>" id="app-style" rel="stylesheet" type="text/css" />


    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body class="authentication-bg bg-infox">

    <style>
        .pointer {
            cursor: pointer;
        }
    </style>
    <div class="container-xxl pt-3">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card shadow-lg ">
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-branxd justify-content-center ">
                            <a href="<?= base_url('') ?>" class="x">

                                <?php if (file_exists('public/img/konfigurasi/logo/' . $konfigurasi->logo)) {
                                    $img = $konfigurasi->logo;
                                } else {
                                    $img = 'default.png';
                                }
                                ?>
                                <div class="text-center pb-0">
                                    <a href="<?= base_url() ?>">
                                        <img src="<?= base_url('/public/img/konfigurasi/logo/' . $img) ?>" height="90%" alt="logo">
                                    </a>
                                </div>
                            </a>
                        </div>
                        <!-- <h4 class="text-danger font-13 m-b-5 text-center">REGISTRASI PENGGUNA</h4> -->
                        <hr>
                        <!-- <p class="mb-4">Please sign-in to your account and start the adventure</p> -->
                        <?= form_open_multipart('', ['class' => 'formregis']) ?>
                        <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" id="csrf_tokencmsdatagoe" />

                        <form class="mb-2" autocomplete="off | unknown-autocomplete-value">

                            <?php if ($opd != '') { ?>

                                <div class="form-group mb-3">
                                    <label> Unit Kerja</label>
                                    <div>
                                        <select name="opd_id" id="opd_id" class="form-select pointer">
                                            <option Disabled=true Selected=true>-- Pilih Unit Kerja --</option>
                                            <?php foreach ($opd as $key => $data) { ?>
                                                <option value="<?= $data['opd_id'] ?>"><?= $data['nama_opd'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="invalid-feedback erroropd_id">Silahkan pilih unit kerja</div>
                                    </div>
                                </div>

                            <?php } ?>

                            <div class="form-group mb-3">
                                <label>Nama Lengkap</label>
                                <div>
                                    <input type=" text" class="form-control" name="fullname" id="fullname" value="<?= htmlentities(set_value('fullname'), ENT_QUOTES) ?>" placeholder="Nama Lengkap" autofocus>
                                    <div class="invalid-feedback errorFullname"></div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6 col-12 mb-3">
                                    <label>
                                        E-mail
                                    </label>
                                    <input type="email" class="form-control" name="email" id="email" value="<?= htmlentities(set_value('email'), ENT_QUOTES) ?>" placeholder="E-mail">
                                    <div class="invalid-feedback erroremail"></div>
                                </div>

                                <div class="form-group col-md-6 col-12 mb-3">
                                    <label>
                                        Nama User
                                    </label>
                                    <input type="text" class="form-control" name="username" id="username" value="<?= htmlentities(set_value('username'), ENT_QUOTES) ?>" placeholder="Username">
                                    <div class="invalid-feedback errorusername"></div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="form-group col-md-6 col-12 mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password" value="<?= htmlentities(set_value('password'), ENT_QUOTES) ?>" placeholder="Enter password">

                                    <div class="invalid-feedback errorpassword"></div>
                                </div>

                                <div class="form-group col-md-6 col-12 mb-3">
                                    <label for="password_confirm">Ulangi Kembali</label>
                                    <input type="password" class="form-control" name="password_confirm" id="password_confirm" value="<?= htmlentities(set_value('password_confirm'), ENT_QUOTES) ?>" placeholder="Enter password">

                                    <div class="invalid-feedback errorpassword_confirm"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Foto Profil</label>
                                <div>
                                    <div class="input-group">
                                        <input type="file" id="user_image" name="user_image" class="form-control">
                                        <div class="invalid-feedback erroruser_image"></div>
                                    </div>
                                </div>
                            </div>


                            <div class="mb-3 mt-3">
                                <div class="form-check">
                                    <div class="g-recaptcha" data-sitekey="<?= $sitekey ?>"></div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <button class="btn btn-primary d-grid w-100 btnsimpan" type="submit">Registrasi</button>
                            </div>
                        </form>
                        <?= form_close() ?>
                        <p class="text-center">

                            <span>Sudah Punya Akun?</span>
                            <a href="<?= base_url('login') ?>">
                                <span>Login disini</span>
                            </a>

                        </p>
                    </div>
                </div>
                <div class="container border-top text-center pt-1 mb-3">

                    © <script>
                        document.write(new Date().getFullYear())
                    </script> <?= $konfigurasi->nama ?> <br> <small><i class="mdi mdi-console text-dark"></i> Versi <?= $konfigurasi->vercms ?></small>

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
    $(document).ready(function() {

        // $('#opd_id').select2({})

        $('.btnsimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formregis')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('login/daftarakun') ?>',
                data: data,
                enctype: 'multipart/form-data',
                processData: false,
                contentType: false,
                cache: false,
                dataType: "json",
                beforeSend: function() {
                    $('.btnsimpan').attr('disable', 'disable');
                    $('.btnsimpan').html(`<i><span class="spinner-border text-light" style="width: 1rem; height: 1rem;" aria-hidden="true"></span> Loading...</i>`);

                },
                complete: function() {
                    $('.btnsimpan').removeAttr('disable', 'disable');
                    $('.btnsimpan').html(' Register');
                },
                success: function(response) {
                    if (response.error) {

                        if (response.error.username) {
                            $('#username').addClass('is-invalid');
                            $('.errorusername').html(response.error.username);
                        } else {
                            $('#username').removeClass('is-invalid');
                            $('.errorusername').html('');
                            $('#username').addClass('is-valid');
                        }

                        if (response.error.password) {
                            $('#password').addClass('is-invalid');
                            $('.errorpassword').html(response.error.password);
                        } else {
                            $('#password').removeClass('is-invalid');
                            $('.errorpassword').html('');
                            $('#password').addClass('is-valid');
                        }

                        if (response.error.password_confirm) {
                            $('#password_confirm').addClass('is-invalid');
                            $('.errorpassword_confirm').html(response.error.password_confirm);
                        } else {
                            $('#password_confirm').removeClass('is-invalid');
                            $('.errorpassword_confirm').html();
                        }

                        if (response.error.fullname) {
                            $('#fullname').addClass('is-invalid');
                            $('.errorFullname').html(response.error.fullname);
                        } else {
                            $('#fullname').removeClass('is-invalid');
                            $('.errorFullname').html('');
                            $('#fullname').addClass('is-valid');
                        }


                        if (response.error.email) {
                            $('#email').addClass('is-invalid');
                            $('.erroremail').html(response.error.email);
                        } else {
                            $('#email').removeClass('is-invalid');
                            $('.erroremail').html('');
                            $('#email').addClass('is-valid');
                        }

                        if (response.error.user_image) {
                            $('#user_image').addClass('is-invalid');
                            $('.erroruser_image').html(response.error.user_image);
                        } else {
                            $('#user_image').removeClass('is-invalid');
                            $('.erroruser_image').html('');

                        }
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    }
                    if (response.gopdid) {
                        $('#opd_id').addClass('is-invalid');
                        $('.erroropd_id').html(response.gopdid.opd_id);
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);

                    }
                    if (response.gagalcap) {
                        Swal.fire({
                            title: "Maaf...!",
                            text: response.gagalcap,
                            icon: "error",
                            // showConfirmButton: false,
                            // timer: 4550
                        }).then(function() {
                            window.location = '';
                        });
                    }

                    if (response.sukses) {

                        Swal.fire({
                            title: "Sukses Registrasi Akun",
                            text: " Silahkan menunggu proses Verifikasi dan Aktivasi Akun oleh Administrator..!",
                            icon: "success",

                        }).then(function() {
                            window.location = '<?= base_url('') ?>';
                        })
                    }

                },
                error: function(xhr, ajaxOptions, thrownerror) {
                    Swal.fire({
                        title: "Maaf gagal registrasi!",
                        html: `Ada kesalahan `,
                        icon: "error",
                        // showConfirmButton: false,
                        // timer: 3100
                    }).then(function() {
                        window.location = '';
                    });
                }
            });
        });

    });
</script>