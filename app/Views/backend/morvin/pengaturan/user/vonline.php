<div id="viewonline">

    <?php
    $dir = "./writable/session/";


    $open    = opendir($dir) or die('Folder tidak ditemukan ...!');

    while ($file    = readdir($open)) {
        if ($file != '.' && $file != '..') {
            $files[] = $file;
        }
    }

    $jumlah_file    = count($files);

    use App\Models\M_Dge_grupakses;

    $this->grupakses = new M_Dge_grupakses();

    $db             = \Config\Database::connect();
    $id_grup        = session()->get('id_grup');
    $userid         = session()->get('id');

    $list           = $db->table('users')->where('id', $userid)->get()->getRowArray();
    $listgrupno     = $db->table('cms__usergrup')->where('id_grup', $id_grup)->get()->getRowArray();

    if ($listgrupno) {
        $role = $listgrupno['nama_grup'];
    } else {
        $role = '-';
    }

    $gm = 'Pengaturan';

    $listgrupakses =  $this->grupakses->grupaksessubmenu($id_grup, $gm);
    if ($listgrupakses) {

        foreach ($listgrupakses as $data) :

            $akses = $data['akses'];

            if ($akses == '1') {

                if ($data['urlmenu'] == 'user') { ?>
                    <!-- <h6 class="header-title border-bottom ">TERAKHIR LOGIN</h6> -->
                    <div class="card-body ">
                        <h4 class="header-title mb-2">Informasi Login</h4>
                        <div data-simplebar style="max-height: 205px;">
                            <ul class="list-unstyled chat-list">
                                <?php if ($user) {
                                    foreach ($user as $data) :
                                        $id_grupr = $data['id_grup'];
                                        $listgrup = $db->table('cms__usergrup')->where('id_grup', $id_grupr)->get()->getRowArray();

                                        if ($listgrup) {
                                            $namagrup = $listgrup['nama_grup'];
                                        } else {
                                            $namagrup = '-';
                                        }
                                        $blnk = date('m', strtotime($data["last_login"]));
                                        $blnck = bulan($blnk);
                                        $tglk = date('d', strtotime($data["last_login"]));
                                        $thnk = date('Y', strtotime($data["last_login"]));
                                        $jamk = date('H:i:s', strtotime($data["last_login"]));
                                        if ($data['user_image'] != 'default.png' && file_exists('public/img/user/' . $data['user_image'])) {
                                            $profil = $data['user_image'];
                                        } else {
                                            $profil = 'default.png';
                                        }
                                ?>
                                        <li class="">
                                            <a href="#">
                                                <div class="media">
                                                    <div class="align-self-center me-3">
                                                        <i class="mdi mdi-circle text-<?= ($data['sts_on'] == 1) ? 'success' : 'warning' ?> font-size-10"></i>
                                                    </div>
                                                    <div class="align-self-center me-3">
                                                        <img src="<?= base_url('public/img/user/' . $profil) ?>" class="rounded-circle avatar-xs" alt="">
                                                    </div>

                                                    <div class="media-body overflow-hidden">
                                                        <h5 class="text-truncate font-size-14 mb-1"><?= $data['fullname'] ?> <small class="text-danger">(<?= $namagrup ?>)</small></h5>
                                                        <p class="text-truncate mb-0 font-size-12"><?= $tglk . ' ' . $blnck . ' ' . $thnk . ' ' . $jamk ?></p>
                                                    </div>
                                                    <!-- <div class="font-size-11"> <?= $namagrup ?></div> -->
                                                </div>
                                            </a>
                                        </li>
                                        <!-- <hr class="mt-2 mb-1" /> -->
                                    <?php endforeach; ?>
                            </ul>
                        </div>
                        <!-- Tombol bawah -->
                        <div class="text-center border-top pt-2">
                            <a href="<?= base_url('user') ?>" type="button" class="btn btn-primary btn-sm">
                                <i class="fas fa-list-ul"></i> User All
                            </a>
                            <button type="button" class="btn btn-warning btn-sm waves-effect waves-light refresh" title="Klik disini untuk OFFkan status Online bila pengguna keluar tanpa Logoff." onclick="reseton('')">
                                <i class="mdi mdi-account-convert text-light"></i> Reset
                            </button>
                            <?php if ($jumlah_file > 100) { ?>
                                <button type="button" class="btn btn-danger btn-sm waves-effect waves-light delfile" title="Klik disini untuk hapus file session." onclick="hapusfile('')">
                                    <i class="mdi mdi-recycle text-light"></i> Hapus <?= $jumlah_file ?> File
                                </button>
                            <?php } else {  ?>
                                <button type="button" class="btn btn-light btn-sm waves-effect waves-light" title="Jumlah File yang ada di folder session.">
                                    <i class="mdi mdi-restore"></i> <?= $jumlah_file ?> File session
                                </button>
                            <?php } ?>
                        </div>
                    <?php } ?>

                    </div>
        <?php }
            }
        endforeach;
        # end administrator
    } else { ?>

        <div class="card-body pt-1">

            <!-- jika ada yg online selain dia -->
            <?php if ($useron) { ?>
                <h6 class="header-title border-bottom p-2">Informasi Login</h6>
                <div data-simplebar style="max-height: 205px;">
                    <ul class="list-unstyled chat-list">
                        <?php
                        foreach ($useron as $data) :
                            $id_grupr = $data['id_grup'];
                            $listgrup = $db->table('cms__usergrup')->where('id_grup', $id_grupr)->get()->getRowArray();

                            if ($listgrup) {
                                $namagrup = $listgrup['nama_grup'];
                            } else {
                                $namagrup = '-';
                            }
                            $blnk = date('m', strtotime($data["last_login"]));
                            $blnck = bulan($blnk);
                            $tglk = date('d', strtotime($data["last_login"]));
                            $thnk = date('Y', strtotime($data["last_login"]));
                            $jamk = date('H:i:s', strtotime($data["last_login"]));

                            if ($data['user_image'] != 'default.png' && file_exists('public/img/user/' . $data['user_image'])) {
                                $profil = $data['user_image'];
                            } else {
                                $profil = 'default.png';
                            }

                        ?>

                            <li class="">
                                <a href="#">
                                    <div class="media">
                                        <div class="align-self-center me-3">
                                            <i class="mdi mdi-circle text-<?= ($data['sts_on'] == 1) ? 'success' : 'warning' ?> font-size-10"></i>
                                        </div>
                                        <div class="align-self-center me-3">
                                            <img src="<?= base_url('public/img/user/' . $profil) ?>" class="rounded-circle avatar-xs" alt="">
                                        </div>

                                        <div class="media-body overflow-hidden">
                                            <h5 class="text-truncate font-size-14 mb-1"><?= $data['fullname'] ?> <small class="text-danger">(<?= $namagrup ?>)</small></h5>
                                            <p class="text-truncate mb-0 font-size-12"><?= $tglk . ' ' . $blnck . ' ' . $thnk . ' ' . $jamk ?></p>
                                        </div>
                                        <!-- <div class="font-size-11"> <?= $namagrup ?></div> -->
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <hr class="mt-0" />
            <?php } else {
                $blnk = date('m', strtotime($list["last_login"]));
                $blnck = bulan($blnk);
                $tglk = date('d', strtotime($list["last_login"]));
                $thnk = date('Y', strtotime($list["last_login"]));
                $jamk = date('H:i:s', strtotime($list["last_login"]));

                if ($list['user_image'] != 'default.png' && file_exists('public/img/user/' . $list['user_image'])) {
                    $profil2 = $list['user_image'];
                } else {
                    $profil2 = 'default.png';
                }

            ?>

                <!-- Jika tidak ada online -->
                <div data-simplebar style="max-height: 205px;">
                    <ul class="list-unstyled chat-list">

                        <li class="">
                            <a href="<?= base_url('akun') ?>">
                                <div class="media">
                                    <div class="align-self-center me-3">
                                        <i class="mdi mdi-circle text-<?= ($list['sts_on'] == 1) ? 'success' : 'warning' ?> font-size-10"></i>
                                    </div>
                                    <div class="align-self-center me-3">
                                        <img src="<?= base_url('public/img/user/' . $profil2) ?>" class="rounded-circle avatar-xs" alt="">
                                    </div>

                                    <div class="media-body overflow-hidden">
                                        <h5 class="text-truncate font-size-14 mb-1"> <?= $list['fullname'] ?> <small class="text-danger">(<?= $role ?>)</small></h5>
                                        <p class="text-truncate mb-0 font-size-12"><?= $tglk . ' ' . $blnck . ' ' . $thnk . ' ' . $jamk ?></p>
                                    </div>

                                </div>
                            </a>
                        </li>

                        <div class="border-top text-center mt-2">
                            <div class="alert alert-info alert-dismissible fade show mb-0" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                Dapatkan produk berkualitas DATAGOE SOFTWARE lainnya, <a target="_blank" href="https://datagoe.com/">disini</a>..!
                            </div>
                            <!-- <img class="" src="<?= base_url('public/template/backend/morvin/assets/images/err.png') ?>" alt="not found" width="180" height="100%"> -->
                        </div>
                    </ul>
                </div>

        <?php }
        } ?>
        <!-- =======================================================
      * CMS DATAGOE (Tidak perlu menghapus informasi ini bro ^_^)
      * Content Management System.
      *
      * @author			Vian Taum <viantaum17@gmail.com>
      * @website		www.datagoe.com
      * @copyright		(c) 2023 - Datagoe Software
        ======================================================== -->


        <!-- <div class="border-top m-auto">
            <label class="d-block text-primary mb-0 text-center"> <i class="mdi mdi-console"></i> CMS VER: <?= $vercms ?> | CI: <?= esc(\CodeIgniter\CodeIgniter::CI_VERSION) ?> </label>

            <p class="text-center"><a href="https:/datagoe.com/" class="text-dark" style="font-size: 12px;">Last update 10 Agustus 2024 | Tema <span class="text-success"><?= $template['nama'] ?></span> </a>
                <a class="d-block text-dark mb-0 text-center" style="font-size: 13px;"> Tema Terpasang <i><?= $template['nama'] ?></i></a>
                <? $kunjungan ?>
            </p>
        </div> -->
        </div>
</div>

<script>
    function reseton() {

        $.ajax({

            url: "<?= site_url('admin/offuser') ?>",
            dataType: "json",

            beforeSend: function() {

                $('.refresh').attr('disable', 'disable');
                $('.refresh').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
            },
            complete: function() {
                $('.refresh').removeAttr('disable', 'disable');
                $('.refresh').html('<i class="mdi mdi-account-convert text-light"></i>  Reset');
            },

            success: function(response) {
                $('.viewonline').html(response.data);
                // window.location = '';
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val()
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal load data!",
                    html: `Ada kesalahan Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    icon: "error",
                    // showConfirmButton: false,
                    // timer: 3100
                });
            }
        });


    }

    function hapusfile() {

        $.ajax({

            url: "<?= site_url('admin/hapusfile') ?>",
            dataType: "json",

            beforeSend: function() {

                $('.delfile').attr('disable', 'disable');
                $('.delfile').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>On Proses...</i>');
            },
            complete: function() {
                $('.delfile').removeAttr('disable', 'disable');
                $('.delfile').html('<i class="mdi mdi-recycle text-light"></i> Hapus File');
            },

            success: function(response) {
                $('.viewonline').html(response.data);
                window.location = '';
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal load data!",
                    html: `Ada kesalahan Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    icon: "error",
                    // showConfirmButton: false,
                    // timer: 3100
                });
            }
        });


    }
</script>