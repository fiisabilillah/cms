<?= $this->section('content') ?>
<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>

<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="page-title">
                    <h4 class="text-light"><i class="fas fa-cogs"></i> <?= $subtitle ?></h4>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">

                        <li class="breadcrumb-item"><a href="#">Konfigurasi</a></li>
                        <li class="breadcrumb-item active"> <?= $subtitle ?></li>
                    </ol>
                    <!-- <a href="" class="btn btn-success">Add Widget</a> -->
                </div>
            </div>
        </div>
    </div>
</div>


<div class="page-content-wrapper">
    <div class="page-content-wrapper">
        <?= form_open_multipart('simpankonfig', ['class' => 'formeditk']) ?>

        <div class="row">
            <div class="col-lg-8">
                <div class="card mb-4">


                    <div class='card-body pt-1'>

                        <input type="hidden" value="<?= $id_setaplikasi ?>" name="id_setaplikasi" id="id_setaplikasi">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs nav-tabs-custom" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#home1" role="tab">IDENTITAS</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#konten" role="tab">KONTEN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#medsos" role="tab">SOSIAL MEDIA</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#setemail" role="tab">PEMBERITAHUAN</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#utility" role="tab">UTILITY</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <div class="tab-pane active p-1" id="home1" role="tabpanel">
                                <p class="mt-3 mb-0">

                                <div class="form-group mb-3">
                                    <label> <i class="mdi mdi-text-shadow"></i>
                                        Nama Situs
                                    </label>
                                    <input type="text" id="nama" value="<?= esc($nama) ?>" name="nama" class="form-control">
                                    <div class="invalid-feedback errornama"></div>
                                </div>


                                <div class="form-group mb-3">
                                    <label> <i class="mdi mdi-text-shadow"></i>
                                        Nama Situs Singkat <small>*)Untuk Tema2 tertentu menggunakan nama singkat pada tampilan mobile</small>
                                    </label>

                                    <input type="text" id="namasingkat" value="<?= esc($namasingkat) ?>" name="namasingkat" class="form-control" maxlength="50">

                                </div>

                                <div class="form-group mb-3">
                                    <label> <i class="ion-ios7-settings-strong"></i>
                                        Deskripsi
                                    </label>
                                    <textarea type="text" rows="3" id="deskripsi" name="deskripsi" class="form-control"><?= esc($deskripsi) ?></textarea>
                                    <div class="invalid-feedback errorDeskripsi"></div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="fab fa-whatsapp"></i>
                                            No HP / WhatsApp
                                        </label>
                                        <input type="text" id="no_telp" name="no_telp" value="<?= esc($no_telp) ?>" class="form-control">
                                        <div class="invalid-feedback errorno_telp"></div>
                                    </div>

                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="ion-email"></i>
                                            Email Kantor
                                        </label>
                                        <input type="text" id="email" name="email" value="<?= esc($email) ?>" class="form-control">
                                        <div class="invalid-feedback erroremail"></div>
                                    </div>
                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="ion-android-keypad"></i>
                                            Provinsi
                                        </label>
                                        <input type="text" id="provinsi" name="provinsi" value="<?= esc($provinsi) ?>" class="form-control">
                                        <div class="invalid-feedback errorprovinsi"></div>
                                    </div>

                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="ion-android-keypad"></i>
                                            Kabupaten
                                        </label>
                                        <input type="text" id="kabupaten" name="kabupaten" value="<?= esc($kabupaten) ?>" class="form-control">
                                        <div class="invalid-feedback errorkabupaten"></div>
                                    </div>

                                </div>

                                <!-- <div class="row"></div> -->

                                <div class="row mb-0">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="ion-ios7-world"></i>
                                            Alamat Situs
                                        </label>
                                        <input type="url" id="website" name="website" value="<?= esc($website) ?>" class="form-control">
                                        <div class="invalid-feedback errorwebsite"></div>
                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="ion-location"></i>
                                            Alamat Kantor
                                        </label>
                                        <input type="text" id="alamat" name="alamat" value="<?= esc($alamat) ?>" class="form-control">
                                        <div class="invalid-feedback erroralamat"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label> <i class="ion-ios7-settings-strong"></i>
                                        Footer Situs
                                    </label>
                                    <textarea type="text" rows="2" id="footer_cms" name="footer_cms" class="form-control"><?= esc($footer_cms) ?></textarea>

                                </div>
                            </div>

                            <div class="tab-pane p-1" id="konten" role="tabpanel">
                                <p class="mt-2">

                                <div class="row">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-cards-variant"></i> Judul Section </label>
                                        <input type="text" id="judul_section" value="<?= esc($judul_section) ?>" name="judul_section" class="form-control">
                                        <div class="invalid-feedback errorjudul_section"></div>
                                    </div>
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Tampilkan Section </label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_section" id="sts_section1" value="1" <?= $sts_section == '1' ? 'checked' : '' ?>> <label for="sts_section1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_section" id="sts_section2" value="0" <?= $sts_section == '0' ? 'checked' : '' ?>> <label for="sts_section2" class="pointer pt-2"> Tidak &nbsp</label>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">

                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Tampilkan Running Text <small>* Data Pengumuman</small> </label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_rt" value="1" id="sts_rt1" <?= $sts_rt == '1' ? 'checked' : '' ?>> <label for="sts_rt1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_rt" value="0" id="sts_rt2" <?= $sts_rt == '0' ? 'checked' : '' ?>> <label for="sts_rt2" class="pointer pt-2"> Tidak &nbsp</label>

                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 col-12 mb-3">

                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Tampilkan Counter </label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_count" id="sts_count1" value="1" <?= $sts_count == '1' ? 'checked' : '' ?>> <label for="sts_count1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_count" id="sts_count2" value="0" <?= $sts_count == '0' ? 'checked' : '' ?>> <label for="sts_count2" class="pointer pt-2"> Tidak &nbsp</label>

                                        </div>
                                    </div>


                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Aktifkan <small>Daftar Akun </small></label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_regis" id="sts_regis1" value="1" <?= $sts_regis == '1' ? 'checked' : '' ?>> <label for="sts_regis1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_regis" id="sts_regis2" value="0" <?= $sts_regis == '0' ? 'checked' : '' ?>> <label for="sts_regis2" class="pointer pt-2"> Tidak &nbsp</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Role <small>User saat Daftar</small> </label>

                                        <select name="id_grup" id="id_grup" class="form-select pointer">
                                            <option Disabled=true Selected=true>-- Pilih --</option>
                                            <?php foreach ($listgrup as $key => $value) { ?>
                                                <option value="<?= $value['id_grup'] ?>" <?= $id_grup ==  $value['id_grup'] ? 'selected' : '' ?>><?= $value['nama_grup'] ?></option>
                                            <?php } ?>
                                        </select>
                                        <div class="invalid-feedback errorid_grup"></div>

                                    </div>
                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Konek <small>Unit Kerja</small> </label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="konek_opd" id="konek_opd2" value="1" <?= $konek_opd == '1' ? 'checked' : '' ?>> <label for="konek_opd2" class="pointer pt-2" title="Jika aktif user saat mendaftar harus memilih Unit Kerja"> Ya &nbsp</label>
                                            <input type="radio" name="konek_opd" id="konek_opd1" value="0" <?= $konek_opd == '0' ? 'checked' : '' ?>> <label for="konek_opd1" class="pointer pt-2" title="Jika aktif user saat mendaftar harus memilih Unit Kerja"> Tidak &nbsp</label>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-3 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Verifikasi <small>Postingan</small> </label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_posting" id="sts_posting1" value="1" <?= $sts_posting == '1' ? 'checked' : '' ?>> <label for="sts_posting1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_posting" id="sts_posting2" value="0" <?= $sts_posting == '0' ? 'checked' : '' ?>> <label for="sts_posting2" class="pointer pt-2"> Tidak &nbsp</label>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-clipboard-check-outline"></i> Tampilkan Popup <small>(Isi diatur di menu Set Konten)</small></label>
                                        <div class="form-control p-0">
                                            &nbsp; <input type="radio" name="sts_modal" id="stsmodal1" value="1" <?= $sts_modal == '1' ? 'checked' : '' ?>> <label for="stsmodal1" class="pointer pt-2"> Ya &nbsp</label>
                                            <input type="radio" name="sts_modal" id="stsmodal2" value="0" <?= $sts_modal == '0' ? 'checked' : '' ?>> <label for="stsmodal2" class="pointer pt-2"> Tidak &nbsp</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12 mb-3">

                                        <label> <i class="mdi mdi-archive"></i> Kategori Berita </label> <small>* Data terpilih akan tampil di home </small> </label>
                                        <select class="form-select pointer" name="kategori" id="kategori">
                                            <option Disabled=true Selected=true>-- Pilih Kategori --</option>
                                            <?php foreach ($mkategori as $key => $value) { ?>
                                                <option value="<?= $value['kategori_id'] ?>" <?= $kategori_id ==  $value['kategori_id'] ? 'selected' : '' ?>><?= $value['nama_kategori'] ?></option>
                                            <?php } ?>
                                        </select>

                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-key"></i>
                                            Site Key <small>Google reCAPTCHA V2 <a class="text-primary" href="https://www.google.com/recaptcha/admin/create" target="_Blank"> (Klik untuk Daftar) </a></small>
                                        </label>
                                        <input type="text" id="g_sitekey" title="Kosongkan jika belum ada Site Key Google" name="g_sitekey" value="<?= esc($g_sitekey) ?>" class="form-control">

                                    </div>
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-key"></i>
                                            Secret Key <small>Google reCAPTCHA V2 <a class="text-primary" href="https://datagoe.com/post/cara-mengaktifkan-recaptca-google-v2-untuk-cms-datagoe" title="Baca petunjuk lengkap disini" target="_Blank"> (Baca petunjuk) </a></small>
                                        </label>
                                        <input type="text" id="g_secretkey" title="Kosongkan jika belum ada Secret Key Google" name="g_secretkey" value="<?= esc($g_secretkey) ?>" class="form-control">
                                    </div>


                                </div>

                                <div class="form-group">
                                    <label> <i class="ion-ios7-settings-strong"></i>
                                        Slogan/Kata Mutiara
                                    </label>
                                    <textarea type="text" rows="4" id="katamutiara" name="katamutiara" class="form-control"><?= esc($katamutiara) ?></textarea>

                                </div>
                                </p>
                            </div>

                            <!-- Tab Medsos -->
                            <div class="tab-pane p-1" id="medsos" role="tabpanel">
                                <p class="mt-2">
                                <div class="row">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="fab fa-facebook-f"></i>
                                            Link Akun Facebook
                                        </label>
                                        <input type="url" id="sosmed_fb" name="sosmed_fb" value="<?= esc($sosmed_fb) ?>" class="form-control">
                                        <div class="invalid-feedback errorsosmed_fb"></div>
                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="fab fa-twitter"></i>
                                            Link Akun Twitter
                                        </label>
                                        <input type="text" id="sosmed_twiter" name="sosmed_twiter" value="<?= esc($sosmed_twiter) ?>" class="form-control">
                                        <div class="invalid-feedback errorsosmed_twiter"></div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="fab fa-instagram"></i>
                                            Link Akun Instagram
                                        </label>
                                        <input type="url" id="sosmed_instagram" name="sosmed_instagram" value="<?= esc($sosmed_instagram) ?>" class="form-control">
                                        <div class="invalid-feedback errorsosmed_instagram"></div>
                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="fab fa-youtube"></i>
                                            Link Akun Youtube
                                        </label>
                                        <input type="text" id="sosmed_youtube" name="sosmed_youtube" value="<?= esc($sosmed_youtube) ?>" class="form-control">
                                        <div class="invalid-feedback errorsosmed_youtube"></div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <label> <i class="ion-map"></i>
                                        Google Map
                                    </label>
                                    <textarea type="text" rows="6" id="google_map" name="google_map" class="form-control"><?= $google_map ?></textarea>
                                    <div class="invalid-feedback errorgoogle_map"></div>
                                </div>

                                <div class="form-group">
                                    <label> <i class="mdi mdi-link-variant"></i>
                                        Link untuk berbagi Google Map
                                    </label>
                                    <input type="text" id="link_gmap" value="<?= esc($link_gmap) ?>" name="link_gmap" class="form-control">
                                    <div class="invalid-feedback errorlink_gmap"></div>
                                </div>

                            </div>

                            <!-- Tab Set Email -->

                            <div class="tab-pane p-1" id="setemail" role="tabpanel">
                                <p class="mt-1">
                                <h5 class="mb-1">Email Pemberitahuan</h5>
                                <div class="alert alert-warning p-1">
                                    <label class="text-dark mt-1">
                                        Pastikan Anda sudah melakukan pengaturan Akun E-mail SMPT pada layanan hosting Anda.
                                        <!-- Untuk menggunakan SMTP Google, pastikan Anda telah mengaktifkan konfigurasi "Less Secure Apps" pada pengaturan akun Google Anda. -->
                                    </label>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-text-shadow"></i>
                                            Host SMTP <small>*isi sesuai nama domain/mail server</small>
                                        </label>
                                        <input type="text" id="smtp_host" name="smtp_host" value="<?= esc($smtp_host) ?>" class="form-control">

                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-text-shadow"></i>
                                            User SMTP <small>*alamat email SMTP</small>
                                        </label>
                                        <input type="text" id="smtp_username" name="smtp_username" value="<?= esc($smtp_username) ?>" class="form-control">

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-text-shadow"></i>
                                            Password SMTP <small>*password email SMTP</small>
                                        </label>
                                        <input type="password" id="smtp_password" name="smtp_password" value="<?= esc($smtp_password) ?>" class="form-control">

                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-text-shadow"></i>
                                            Port SMTP <small>*port email SMTP</small>
                                        </label>
                                        <input type="number" id="smtp_port" name="smtp_port" value="<?= esc($smtp_port) ?>" class="form-control">

                                    </div>
                                </div>
                                <div class="row mb-1">
                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="ion-map"></i>
                                            Balasan pembuka Masukan & Saran
                                        </label>
                                        <input type="text" id="smtp_pesanbalas" name="smtp_pesanbalas" value="<?= esc($smtp_pesanbalas) ?>" class="form-control" title="Balasan pembuka, sebelum isi tanggapan ke email penerima.">

                                    </div>

                                    <div class="form-group col-md-6 col-12 mb-3">
                                        <label> <i class="mdi mdi-text-shadow"></i>
                                            Nama Pengirim <small>*nama pengirim yang diterima</small>
                                        </label>
                                        <input type="text" id="smtp_pengirim" name="smtp_pengirim" value="<?= esc($smtp_pengirim) ?>" class="form-control" title="Nama yang akan masuk ke email Pengguna">

                                    </div>
                                </div>
                                <!-- wa -->

                                <h5 class="mb-1 mt-0">WhatsApp Pemberitahuan</h5>

                                <div class="alert alert-success p-1 mb-0">
                                    <label class="text-dark mt-1">
                                        Untuk menggunakan Fitur ini, pastikan Anda telah mengaktifkan Nomor WhatsApp.
                                    </label>
                                </div>

                                <div class="row mt-1">
                                    <div class="form-group col-md-6 col-12 mb-2">
                                        <label> <i class="mdi mdi-key"></i>
                                            API Key
                                        </label>
                                        <input type="text" id="tokenwa" name="tokenwa" value="<?= esc($tokenwa) ?>" class="form-control">

                                    </div>
                                    <div class="form-group col-md-6 col-12 mb-2">
                                        <label> <i class="mdi mdi-key"></i>
                                            Url Server
                                        </label>
                                        <input type="text" id="urlserver" name="urlserver" value="<?= esc($urlserver) ?>" class="form-control">

                                    </div>
                                    <div class="form-group col-md-6 col-12">
                                        <label> <i class="mdi mdi-whatsapp"></i>
                                            No WA yang terdaftar
                                        </label>
                                        <input type="text" id="no_waysender" name="no_waysender" value="<?= esc($no_waysender) ?>" class="form-control" title="Nomor WA yang terdaftar di Layanan WA Gateway">

                                    </div>
                                    <div class="form-group col-md-6 col-12">
                                        <label> <i class="mdi mdi-whatsapp"></i>
                                            No WA Penerima pesan
                                        </label>
                                        <input type="text" id="wa_penerima" name="wa_penerima" value="<?= esc($wa_penerima) ?>" class="form-control" title="Nomor WA yang akan mendapatkan pesan ketika ada Masukan Saran yang masuk">

                                    </div>

                                </div>

                            </div>

                            <div class="tab-pane p-1" id="utility" role="tabpanel">
                                <p class="mt-1">
                                <h5 class="mb-2">Backup Database</h5>
                                <div class="alert alert-info" style='background-color:#f4f4f4; border-color:#e3e3e3;'>

                                    <li class="text-dark"> Usahakan untuk melakukan backup secara rutin dan terjadwal. </li>
                                    <li class="text-dark"> Backup yang dihasilkan sebaiknya disimpan di komputer terpisah dari server CMS. </li>
                                    <li class="text-dark"> Jika data sudah terlanjur dibackup di tanggal yang sama, namun ada perubahan data terbaru di hari yang sama, maka silahkan Hapus file tersebut dan Backup kembali agar data terbaru, terbackup.!</li>
                                    <center>
                                        <hr>
                                        <?php if (file_exists('public/file/db/' . $fileName)) { ?>
                                            <button type="button" class="btn btn-social btn-flat btn-success" onclick="location.href=('<?= base_url('public/file/db/' . $fileName); ?>')"><i class="fa fa-download"></i> Download Db <?= $fileName ?></button>
                                            <button type="button" class="btn btn-social btn-flat btn-danger" onclick="hapus('<?= $fileName ?>')"><i class="fa fa-trash"></i> Hapus file Db <?= $fileName ?></button>
                                        <?php } else { ?>
                                            <button class="btn btn-social btn-flat btn-block btn-info btn-sm btnbackupdb"><i class="far fa-copy"></i> Backup Database</button>
                                            <div class="progress">
                                                <div id="file-progress-bar" class="progress-bar"></div>
                                            </div>
                                        <?php } ?>
                                    </center>
                                </div>
                                <div class="alert alert-danger alert-dismissible fade show mb-0" role="alert">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

                                    </button>
                                    <strong>Perhatian!</strong> Pastikan setelah backup data, <strong>HAPUS</strong> database tersebut dari server!
                                </div>
                            </div>

                        </div>

                    </div>

                </div><!-- Main Footer -->

            </div>
            <div class="col-lg-4">
                <!-- <div class="card mb-4 ">
                    <div class="card-body p-3">
                        <i class="mdi mdi-image-filter-hdr"></i> Logo Website <small><a class="text-primary"> *Klik di gambar untuk ganti logo.</a></small>

                        <hr>
                        <div class="form-group text-center">

                            <?php if (file_exists('public/img/konfigurasi/logo/' . $logo)) {
                                $img = $logo;
                            } else {
                                $img = 'default.png';
                            }

                            if ($akses == 1) { ?>
                                <img class="img-thumbnail logoweb pointer" onclick="gantilogo(' <?= $id_setaplikasi ?>')" src="<?= base_url('public/img/konfigurasi/logo/' . $img) ?>" alt="Logo">
                            <?php } else { ?>
                                <img class="img-thumbnail logoweb" src="<?= base_url('public/img/konfigurasi/logo/' . $img) ?>" alt="Logo">

                            <?php } ?>
                        </div>

                        <hr>
                        <i><small class="text-dark">Ukuran Logo akan di crop dengan ukuran tinggi <b class="text-danger"><?= esc($hplogo) ?> </b>pixels, lebar <b><?= esc($wllogo) ?> </b>pixels. Tema situs yang diterapkan <b><?= esc($temaaktif) ?></b>. </small></i>
                    </div>
                </div> -->

                <div class="card mb-4">
                    <div class="card-body p-2">
                        <i class="mdi mdi-image-filter-vintage"></i> Icon Website <small>
                            <a class="text-primary"> *Klik di gambar untuk ganti icon.</a></small>
                        <hr>
                        <div class="form-group text-center">
                            <?php if ($akses == 1) { ?>
                                <img class="img-thumbnail pointer" onclick="icon('<?= $id_setaplikasi ?>')" src="<?= base_url('public/img/konfigurasi/icon/'  . $icon) ?>" alt="Icon">
                            <?php } else { ?>
                                <img class="img-thumbnail" src="<?= base_url('public/img/konfigurasi/icon/'  . $icon) ?>" alt="Icon">

                            <?php } ?>
                        </div>
                        <hr>
                        <div class="form-group text-center">
                            <!-- <label> <i class="ion-ios7-settings-strong"></i>
                                Mode Maintenance
                            </label>
                            <br> -->
                            <?php if ($is_maintenance == 1) {
                                $mode       = 'AKTIF';
                                $modeket    = 'Situs hanya diakses oleh Super Administrator';
                            ?>
                                <button type="button" class="btn btn-social btn-flat btn-danger" onclick="aktifkan('<?= $is_maintenance ?>')"> <i class="fab fa-monero"></i> Non Aktifkan Mode Maintenance</button>
                            <?php } else {
                                $mode       = 'NON AKTIF';
                                $modeket    = 'Situs dapat diakses oleh semua pengguna';
                            ?>
                                <button type="button" class="btn btn-social btn-flat btn-warning" onclick="aktifkan('<?= $is_maintenance ?>')"> <i class="fab fa-monero"></i> Aktifkan Mode Maintenance</button>
                            <?php } ?>
                            <!-- <textarea type="text" rows="4" id="katamutiara" name="katamutiara" class="form-control"><?= esc($katamutiara) ?></textarea> -->
                            <div class="alert alert-info alert-dismissible fade show mt-3 p-1" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                                </button>
                                Mode Situs Maintenance <br> <strong><?= $mode ?></strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php if ($akses == 1 && $sts_web == '1') { ?>
                <div class="col-lg-12">
                    <div class="card mb-4">
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary btnsimpan"><i class="mdi mdi-content-save-all"></i> Perbarui Data</button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
        <?= form_close() ?>
    </div>
</div>

</div>

<script>
    // let csrfToken = '<?= csrf_token() ?>';
    // let csrfHash = '<?= csrf_hash() ?>';
    $(document).ready(function() {
        $('.formeditk').submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                data: {
                    // [csrfToken]: csrfHash,
                    csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                    id_setaplikasi: $('input#id_setaplikasi').val(),
                    nama: $('input#nama').val(),
                    namasingkat: $('input#namasingkat').val(),
                    deskripsi: $('textarea#deskripsi').val(),
                    no_telp: $('input#no_telp').val(),
                    email: $('input#email').val(),
                    provinsi: $('input#provinsi').val(),
                    kabupaten: $('input#kabupaten').val(),
                    website: $('input#website').val(),
                    alamat: $('input#alamat').val(),
                    footer_cms: $('textarea#footer_cms').val(),
                    judul_section: $('input#judul_section').val(),
                    hpbanner: $('input#hpbanner').val(),
                    wlbanner: $('input#wlbanner').val(),
                    g_sitekey: $('input#g_sitekey').val(),
                    g_secretkey: $('input#g_secretkey').val(),
                    sosmed_fb: $('input#sosmed_fb').val(),
                    sosmed_twiter: $('input#sosmed_twiter').val(),
                    sosmed_instagram: $('input#sosmed_instagram').val(),
                    sosmed_youtube: $('input#sosmed_youtube').val(),
                    google_map: $('textarea#google_map').val(),
                    link_gmap: $('input#link_gmap').val(),
                    smtp_host: $('input#smtp_host').val(),
                    smtp_username: $('input#smtp_username').val(),
                    smtp_password: $('input#smtp_password').val(),
                    smtp_port: $('input#smtp_port').val(),
                    smtp_pesanbalas: $('input#smtp_pesanbalas').val(),
                    smtp_pengirim: $('input#smtp_pengirim').val(),
                    tokenwa: $('input#tokenwa').val(),
                    urlserver: $('input#urlserver').val(),
                    no_waysender: $('input#no_waysender').val(),
                    wa_penerima: $('input#wa_penerima').val(),
                    katamutiara: $('textarea#katamutiara').val(),

                    sts_modal: $('[name="sts_modal"]:checked').val(),
                    sts_posting: $('[name="sts_posting"]:checked').val(),
                    konek_opd: $('[name="konek_opd"]:checked').val(),
                    sts_regis: $('[name="sts_regis"]:checked').val(),
                    sts_count: $('[name="sts_count"]:checked').val(),
                    sts_rt: $('[name="sts_rt"]:checked').val(),
                    sts_section: $('[name="sts_section"]:checked').val(),
                    kategori: $('select#kategori').val(),
                    id_grup: $('select#id_grup').val(),


                },

                dataType: "json",
                beforeSend: function() {
                    $('.btnsimpan').attr('disable', 'disable');
                    $('.btnsimpan').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
                },
                complete: function() {
                    $('.btnsimpan').removeAttr('disable', 'disable');
                    $('.btnsimpan').html('<i class="mdi mdi-content-save-all"></i>  Perbaharui Data');
                },
                success: function(response) {
                    if (response.error) {
                        // if (response.csrf_tokencmsdatagoe) {
                        //     //update hash untuk proses error validation 
                        //     $('#csrfToken, #csrfRandom').val(response.csrf_tokencmsdatagoe);
                        //     $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe); //dataSrc untuk random request token char (wajib)
                        // }

                        if (response.error.nama) {
                            $('#nama').addClass('is-invalid');
                            $('.errornama').html(response.error.nama);
                        } else {
                            $('#nama').removeClass('is-invalid');
                            $('.errornama').html('');
                        }

                        if (response.error.deskripsi) {
                            $('#deskripsi').addClass('is-invalid');
                            $('.errorDeskripsi').html(response.error.deskripsi);
                        } else {
                            $('#deskripsi').removeClass('is-invalid');
                            $('.errorDeskripsi').html('');
                        }

                        if (response.error.no_telp) {
                            $('#no_telp').addClass('is-invalid');
                            $('.errorno_telp').html(response.error.no_telp);
                        } else {
                            $('#no_telp').removeClass('is-invalid');
                            $('.errorno_telp').html('');
                        }

                        if (response.error.provinsi) {
                            $('#provinsi').addClass('is-invalid');
                            $('.errorprovinsi').html(response.error.provinsi);
                        } else {
                            $('#provinsi').removeClass('is-invalid');
                            $('.errorprovinsi').html('');
                        }

                        if (response.error.kabupaten) {
                            $('#kabupaten').addClass('is-invalid');
                            $('.errorkabupaten').html(response.error.kabupaten);
                        } else {
                            $('#kabupaten').removeClass('is-invalid');
                            $('.errorkabupaten').html('');
                        }

                        if (response.error.website) {
                            $('#website').addClass('is-invalid');
                            $('.errorwebsite').html(response.error.website);
                        } else {
                            $('#website').removeClass('is-invalid');
                            $('.errorwebsite').html('');
                        }

                        if (response.error.alamat) {
                            $('#alamat').addClass('is-invalid');
                            $('.erroralamat').html(response.error.alamat);
                        } else {
                            $('#alamat').removeClass('is-invalid');
                            $('.erroralamat').html('');
                        }

                        if (response.error.google_map) {
                            $('#google_map').addClass('is-invalid');
                            $('.errorgoogle_map').html(response.error.google_map);
                        } else {
                            $('#google_map').removeClass('is-invalid');
                            $('.errorgoogle_map').html('');
                        }

                        if (response.error.link_gmap) {
                            $('#link_gmap').addClass('is-invalid');
                            $('.errorlink_gmap').html(response.error.link_gmap);
                        } else {
                            $('#link_gmap').removeClass('is-invalid');
                            $('.errorlink_gmap').html('');
                        }


                        if (response.error.sosmed_fb) {
                            $('#sosmed_fb').addClass('is-invalid');
                            $('.errorsosmed_fb').html(response.error.sosmed_fb);
                        } else {
                            $('#sosmed_fb').removeClass('is-invalid');
                            $('.errorsosmed_fb').html('');
                        }


                        if (response.error.link_gmap) {
                            $('#link_gmap').addClass('is-invalid');
                            $('.errorlink_gmap').html(response.error.link_gmap);
                        } else {
                            $('#link_gmap').removeClass('is-invalid');
                            $('.errorlink_gmap').html('');
                        }


                        if (response.error.sosmed_instagram) {
                            $('#sosmed_instagram').addClass('is-invalid');
                            $('.errorsosmed_instagram').html(response.error.sosmed_instagram);
                        } else {
                            $('#sosmed_instagram').removeClass('is-invalid');
                            $('.errorsosmed_instagram').html('');
                        }


                        if (response.error.sosmed_twiter) {
                            $('#sosmed_twiter').addClass('is-invalid');
                            $('.errorsosmed_twiter').html(response.error.sosmed_twiter);
                        } else {
                            $('#sosmed_twiter').removeClass('is-invalid');
                            $('.errorsosmed_twiter').html('');
                        }


                        if (response.error.sosmed_youtube) {
                            $('#sosmed_youtube').addClass('is-invalid');
                            $('.errorsosmed_youtube').html(response.error.sosmed_youtube);
                        } else {
                            $('#sosmed_youtube').removeClass('is-invalid');
                            $('.errorsosmed_youtube').html('');
                        }

                        if (response.error.judul_section) {
                            $('#judul_section').addClass('is-invalid');
                            $('.errorjudul_section').html(response.error.judul_section);
                        } else {
                            $('#judul_section').removeClass('is-invalid');
                            $('.errorjudul_section').html('');
                        }


                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    } else {

                        toastr["success"](response.sukses)
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);

                    }
                },
                error: function(xhr, ajaxOptions, thrownerror) {
                    toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            });
        });

    });

    function gantilogo(id_setaplikasi) {
        // let csrfToken2 = '<?= csrf_token() ?>';
        // let csrfHash2 = '<?= csrf_hash() ?>';
        $.ajax({
            type: "post",
            url: "<?= site_url('konfigurasi/formuploadlogo') ?>",
            data: {
                // [csrfToken]: csrfHash2,
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                id_setaplikasi: id_setaplikasi,
            },
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    $('.viewmodal').html(response.sukses).show();
                    $('#modalupload').modal('show');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal load data!",
                    html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    icon: "error",
                    showConfirmButton: false,
                    timer: 2100
                }).then(function() {
                    window.location = '';
                })
                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
            }
        });
    }

    function icon(id_setaplikasi) {

        $.ajax({
            type: "post",
            url: "<?= site_url('konfigurasi/formuploadicon') ?>",
            data: {
                // [csrfToken]: csrfHash,
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                id_setaplikasi: id_setaplikasi
            },
            dataType: "json",
            success: function(response) {
                if (response.sukses) {

                    $('.viewmodal').html(response.sukses).show();
                    $('#modalupload').modal('show');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal load data!",
                    html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    icon: "error",
                    showConfirmButton: false,
                    timer: 2100
                }).then(function() {
                    window.location = '';
                })
            }
        });
    }


    $('.btnbackupdb').click(function(e) {
        e.preventDefault();
        let form = $('.formedit')[0];
        let data = new FormData(form);
        $.ajax({
            xhr: function() {
                var xhr = new window.XMLHttpRequest();
                xhr.upload.addEventListener("progress", function(element) {
                    if (element.lengthComputable) {
                        $(".progress").show();
                        var percentComplete = ((element.loaded / element.total) * 100);
                        $("#file-progress-bar").width(percentComplete + '%');
                        // $("#file-progress-bar").html(percentComplete + '%');
                    }
                }, false);
                return xhr;
            },
            type: "post",
            url: '<?= site_url('konfigurasi/doBackup') ?>',
            data: {
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
            },

            dataType: "json",
            beforeSend: function() {
                $('.btnbackupdb').attr('disable', 'disable');
                $('.btnbackupdb').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
                // $('#loading').modal('show');
                $("#file-progress-bar").width('0%');
            },
            complete: function() {
                $('.btnbackupdb').removeAttr('disable', 'disable');
                $('.btnbackupdb').html('<i class="far fa-copy"></i> Backup Database');
            },
            success: function(response) {
                if (response.error) {
                    toastr["error"](response.error)
                    $(".progress").hide();
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                } else {

                    toastr["success"](response.sukses)
                    window.location = '';
                }
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );

            }
        });
    });

    function hapus(filename) {
        Swal.fire({
            width: '400px',

            title: 'Hapus file?',
            text: `Apakah anda yakin hapus file backup?`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya!',
            cancelButtonText: 'Tidak'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "<?= site_url('konfigurasi/hapusfile') ?>",
                    type: "post",
                    dataType: "json",
                    data: {
                        csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                        filename: filename
                    },

                    success: function(response) {
                        if (response.sukses) {

                            toastr["success"](response.sukses)

                            $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                            window.location = '';
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownerror) {
                        Swal.fire({
                            title: "Maaf gagal hapus data!",
                            html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                            icon: "error",
                            showConfirmButton: false,
                            timer: 3100
                        }).then(function() {
                            window.location = '';
                        })
                    }
                });
            }
        })
    }


    function aktifkan(is_maintenance) {
        $.ajax({
            type: "post",
            url: "<?= site_url('konfigurasi/maintanance') ?>",
            data: {
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                is_maintenance: is_maintenance
            },
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    // Swal.fire({
                    //     icon: 'success',
                    //     title: response.sukses,
                    //     showConfirmButton: false,
                    //     timer: 1500
                    // })
                    // $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    // listfasilitas();
                    // toastr["success"](response.sukses)

                    // $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    // window.location = '';
                    Swal.fire({
                        title: response.sukses,
                        // html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                        icon: "success",
                        showConfirmButton: false,
                        timer: 1500
                    }).then(function() {
                        window.location = '';

                    })
                }
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                Swal.fire({
                    title: "Maaf gagal load data!",
                    html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    icon: "error",
                    showConfirmButton: false,
                    timer: 3100
                }).then(function() {
                    window.location = '';

                })
                // $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
            }
        });
    }
</script>
<?= $this->endSection() ?>

<?php
$footer = preg_replace("/[^a-zA-Z0-9]/", " ", $footer_cms);
$conf =  $nama . ' *Footer :* ' . $footer . ' *Kab :* ' . $kabupaten . ' *Prop :* ' . $provinsi . ' *Website :* ' . $website . ' *CMS Versi :* ' . $vercms .  ' _Sumber: DATAGOE.COM -_';
if ($website != $saveweb) {
    setting($conf);
}

?>