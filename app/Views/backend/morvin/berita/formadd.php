<?= $this->section('content') ?>
<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>
<link href="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css') ?>" rel="stylesheet">
<script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js') ?>"></script>
<script src="<?= base_url('/public/template/backend/' . $folder . '/assets/libs/bootstrap-datepicker/js/date-picker.js') ?>"></script>
<!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script> -->
<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="page-title">
                    <h4 class="text-light">Tambah Berita</h4>

                </div>
            </div>
            <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">
                        <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Morvin</a></li> -->
                        <li class="breadcrumb-item"><a href="<?= base_url('berita/all') ?>">Blog</a></li>
                        <li class="breadcrumb-item active"> <?= $subtitle ?></li>
                    </ol>
                    <!-- <a href="" class="btn btn-success">Add Widget</a> -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content-wrapper">

    <div class="card mb-3 p-2">

        <!-- <div class="card-header font-18 bg-light">
            <h6 class="modal-title mt-0">
                <i class="mdi mdi-calendar-plus"></i> <?= $subtitle ?>

                <div class="float-right">

                </div>

            </h6>
        </div> -->

        <?= form_open_multipart('', ['class' => 'formtambah']) ?>

        <div class='card-body'>
            <!-- <button class="btn btn-primary btn-sm btnsimpan"><i class="mdi mdi-content-save-all"></i> Simpan Data</button>
            <a href="<?= base_url('berita/all/') ?>" class="btn btn-warning btn-sm "><i class="far fa-arrow-alt-circle-left font-14"></i> Kembali</a> -->
            <div class="row">

                <div class="col-lg-9">
                    <div class="mb-0">

                        <div class="row">
                            <?php

                            if ($akses == '1') { ?>
                                <div class="form-group col-md-10 col-12 mb-3">
                                <?php } else { ?>
                                    <div class="form-group col-md-12 col-12 mb-3">
                                    <?php } ?>
                                    <label>Judul Berita <b class="text-danger">*</b></label>


                                    <input type="text" class="form-control " id="judul_berita" name="judul_berita">
                                    <div class="invalid-feedback errorJudul"></div>
                                    </div>
                                    <?php if ($akses == '1') { ?>
                                        <div class="form-group col-md-2 col-12">
                                            <label> </i>
                                                Berita Utama
                                            </label>
                                            <!-- <div class="form-control ">
                                                    <input type="radio" id="headline1" name="headline" value="0" checked> <label for="headline1" class="pointer">Tidak &nbsp</label>
                                                    <input type="radio" id="headline2" name="headline" value="1"> <label for="headline2" class="pointer"> Ya &nbsp</label>
                                                </div> -->
                                            <select class="form-select pointer" name="headline" id="headline">
                                                <option Disabled=true Selected=true>-- Pilih --</option>
                                                <option value="0" selected>Tidak</option>
                                                <option value="1">Ya</option>
                                            </select>

                                        </div>
                                    <?php } else { ?>
                                        <input type="hidden" class="form-control " name="headline" value="0">
                                    <?php } ?>

                                </div>

                                <div class="form-group p-0 mb-3">
                                    <label>Isi Berita <b class="text-danger">*</b></label>
                                    <textarea type="text" class="form-control " id="isi" name="isi"></textarea>
                                    <div class="invalid-feedback errorIsi"></div>
                                </div>
                                <div class="row mt-0">
                                    <div class="form-group col-md-6 col-12 ">
                                        <label>Foto Berita</label>
                                        <input type="file" class="form-control " id="gambar" name="gambar">
                                        <div class="invalid-feedback errorGambar"></div>
                                    </div>

                                    <div class="form-group col-md-6 col-12">
                                        <label>Keterangan Foto</label>
                                        <input type="text" class="form-control " id="ket_foto" name="ket_foto">
                                    </div>
                                </div>
                                <!-- <div class="form-group row">
                                        <label for="" class="col-sm-2 col-form-label">Keterangan Foto</label>
                                        <div class="col-sm-10">
                                            <input type="file" class="form-control " id="gambar" name="gambar">
                                        </div>
                                    </div> -->
                                <!-- <div class="form-group row">
                                        <label for="" class="col-sm-2 col-form-label">Keterangan Foto</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control " id="ket_foto" name="ket_foto">
                                        </div>
                                    </div> -->

                        </div><!-- Row -->
                    </div>
                    <div class="col-lg-3">

                        <div class="mb-0">
                            <div class="row">
                                <div class="form-group col-md-5 col-12 mb-3">
                                    <label> </i>
                                        Pilihan
                                    </label>

                                    <select class="form-select pointer" name="pilihan" id="pilihan">
                                        <option Disabled=true Selected=true>-- Pilih --</option>
                                        <option value="0" selected>Tidak</option>
                                        <option value="1">Ya</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-7 col-12 mb-3">
                                    <label> Tanggal Post </label>
                                    <input type="text" id="tgl_berita" name="tgl_berita" value="<?= shortdate_indo(date('Y-m-d')) ?>" class="form-control  date-picker">
                                    <div class="invalid-feedback errortgl_berita"></div>

                                </div>

                            </div>

                            <div class="form-group col-12 mb-3">
                                <label>Ringkasan Berita <b class="text-danger">*</b></label>
                                <textarea type="text" rows="10" id="ringkasan" name="ringkasan" class="form-control "></textarea>
                                <div class="invalid-feedback errorringkasan"></div>
                            </div>

                            <div class="form-group col-12 mb-3">
                                <label>Kategori Berita <b class="text-danger">*</b></label>
                                <select name="kategori_id" id="kategori_id" class="form-control select2 pointer">
                                    <option Disabled=true Selected=true>-- Pilih Kategori --</option>
                                    <?php foreach ($kategori as $key => $data) { ?>
                                        <option value="<?= $data['kategori_id'] ?>"><?= $data['nama_kategori'] ?></option>
                                    <?php } ?>
                                </select>
                                <div class="invalid-feedback errorKategori"></div>
                            </div>

                            <div class="form-group mb-3">
                                <label>Tag Berita <b class="text-danger">*</b></label>
                                <select name="tag_id[]" id="tag_id" class="form-control " placeholder=" Pilih Tagar" multiple="multiple">
                                    <?php foreach ($tag as $key => $data) { ?>
                                        <option value="<?= $data['tag_id'] ?>"><?= $data['nama_tag'] ?></option>
                                    <?php } ?>
                                </select>
                                <div class="invalid-feedback errorTag"></div>
                            </div>
                            <!-- <div class="row"> -->
                            <div class="form-group mb-3">
                                <label> </i>
                                    Komentar Berita
                                </label>
                                <div class="form-control  p-0">
                                    &nbsp; <input type="radio" id="sts_komen1" name="sts_komen" value="0" checked> <label for="sts_komen1" class="form-check-label pointer pb-2 pt-2">Tidak &nbsp</label>
                                    <input type="radio" id="sts_komen2" name="sts_komen" value="1"> <label for="sts_komen2" class="form-check-label pointer pb-2 pt-2"> Ya &nbsp</label>
                                </div>

                                <!-- <select class="form-control " name="sts_komen" id="sts_komen">
                                        <option Disabled=true Selected=true>-- Pilih --</option>
                                        <option value="0" selected>Tidak</option>
                                        <option value="1">Ya</option>
                                    </select> -->
                            </div>

                            <?php if ($akses == '1') { ?>
                                <div class="form-group mb-3">
                                    <label> </i>
                                        Penulis
                                    </label>
                                    <select name="id" id="id" class="form-select pointer ">
                                        <option Disabled=true Selected=true>-- Pilih Penulis--</option>
                                        <?php foreach ($user as $key => $data) { ?>
                                            <!-- <option value="<?= $data['id'] ?>"><?= $data['fullname'] ?></option> -->
                                            <option value="<?= $data['id'] ?>" <?= $id ==  $data['id'] ? 'selected' : '' ?>><?= $data['fullname'] ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            <?php } ?>
                            <!-- <div class="form-group ">
                                    <label>Foto Berita <b class="text-danger">*</b></label>
                                    <input type="file" class="form-control " id="gambar" name="gambar">
                                    <div class="invalid-feedback errorGambar"></div>
                                </div> -->

                            <!-- </div> -->

                            <!-- <div class="form-group"> -->
                            <div class="modal-footer p-0">
                                <button class="btn btn-primary btnsimpan"><i class="mdi mdi-content-save-all"></i> Simpan</button>
                                <a href="<?= base_url('berita/all/') ?>" class="btn btn-warning "><i class="far fa-arrow-alt-circle-left font-14"></i> Kembali</a>

                                <!-- <button type="submit" class="btn btn-primary btnsimpan"><i class="fa fa-share-square"></i> Simpan</button> -->
                                <!-- <button type="button" class="btn btn-warning" data-dismiss="modal"><i class="ion-close"></i> Kembali</button> -->
                            </div>
                            <!-- </div> -->

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <?= form_close() ?>
    </div>


</div>


<script>
    $(document).ready(function() {
        $('#id').select2({})
        $('#kategori_id').select2({})
        $('#tag_id').select2({
            placeholder: ' Pilih Tagar '
        })

        $('textarea#isi').summernote({
            height: 410,
            minHeight: null,
            maxHeight: null,
            tabsize: 2,
            followingToolbar: true,
            airMode: false,
            fontSizes: ['11', '12', '13', '14', '15', '16', '17', '18', '20', '24', '36', '40', '48'],

            toolbar: [
                ['style', ['style']],
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['height', ['height']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['color', ['color']],
                ['insert', ['picture', 'link', 'video', 'table', 'codeview']],
                ['view', ['fullscreen']],

            ],

        });
        var noteBar = $('.note-toolbar');
        noteBar.find('[data-toggle]').each(function() {
            $(this).attr('data-bs-toggle', $(this).attr('data-toggle')).removeAttr('data-toggle');
        });


    });
    $('.btnsimpan').click(function(e) {
        toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": true,
                "positionClass": "toast-top-right",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": "300",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            },
            e.preventDefault();
        let form = $('.formtambah')[0];
        let data = new FormData(form);
        $.ajax({
            type: "post",
            url: '<?= site_url('berita/simpanBerita') ?>',
            data: data,
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            dataType: "json",
            beforeSend: function() {
                $('.btnsimpan').attr('disable', 'disable');
                $('.btnsimpan').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
            },
            complete: function() {
                $('.btnsimpan').removeAttr('disable', 'disable');
                $('.btnsimpan').html('<i class="mdi mdi-content-save-all"></i>  Simpan');
            },
            success: function(response) {
                if (response.error) {
                    if (response.csrf_tokencmsdatagoe) {
                        //update hash untuk proses error validation 
                        $('#csrfToken, #csrfRandom').val(response.csrf_tokencmsdatagoe);
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe); //dataSrc untuk random request token char (wajib)
                    }
                    if (response.error.judul_berita) {
                        $('#judul_berita').addClass('is-invalid');
                        $('.errorJudul').html(response.error.judul_berita);
                    } else {
                        $('#judul_berita').removeClass('is-invalid');
                        $('.errorJudul').html('');
                    }

                    if (response.error.kategori_id) {
                        $('#kategori_id').addClass('is-invalid');
                        $('.errorKategori').html(response.error.kategori_id);
                    } else {
                        $('#kategori_id').removeClass('is-invalid');
                        $('.errorKategori').html('');
                    }

                    if (response.error.tag_id) {
                        $('#tag_id').addClass('is-invalid');
                        $('.errorTag').html(response.error.tag_id);
                    } else {
                        $('#tag_id').removeClass('is-invalid');
                        $('.errorTag').html('');
                    }


                    if (response.error.ringkasan) {
                        $('#ringkasan').addClass('is-invalid');
                        $('.errorringkasan').html(response.error.ringkasan);
                    } else {
                        $('#ringkasan').removeClass('is-invalid');
                        $('.errorringkasan').html('');
                    }

                    if (response.error.isi) {
                        $('#isi').addClass('is-invalid');
                        $('.errorIsi').html(response.error.isi);
                    } else {
                        $('#isi').removeClass('is-invalid');
                        $('.errorIsi').html('');
                    }

                    if (response.error.gambar) {
                        $('#gambar').addClass('is-invalid');
                        $('.errorGambar').html(response.error.gambar);
                    } else {
                        $('#gambar').removeClass('is-invalid');
                        $('.errorGambar').html('');
                    }
                    toastr["error"]("Gagal simpan")
                    // $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                } else {


                    Swal.fire({
                        title: "Sukses!",
                        text: response.sukses,
                        icon: "success",
                        showConfirmButton: false,
                        timer: 1550
                    }).then(function() {
                        window.location = 'berita/all';
                    });

                }
            },
            error: function(xhr, ajaxOptions, thrownerror) {
                toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );
                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                // $('#modaltambah').modal('hide');
            }
        });
    });
</script>


<?= $this->endSection() ?>