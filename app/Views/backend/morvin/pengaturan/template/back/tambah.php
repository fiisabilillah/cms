<script src="<?= base_url() ?>/public/template/backend/morvin/assets/libs/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<script src="<?= base_url() ?>/public/template/backend/morvin/assets/libs/bootstrap-colorpicker/js/form-advanced.js"></script>
<link href="<?= base_url() ?>/public/template/backend/morvin/assets/libs/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" /> -->

<div class="modal fade" id="modaltambah" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title  ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>
            <?= form_open_multipart('', ['class' => 'formtambah']) ?>

            <div class='card-body'>
                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            Nama Template
                        </label>
                        <input type="text" class="form-control" id="nama" name="nama">
                        <div class="invalid-feedback errornama"></div>
                    </div>
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="far fa-folder"></i>
                            Folder
                        </label>
                        <input type="text" class="form-control" id="folder" name="folder" title="Pastikan nama folder di public dan views sama..!" placeholder="Folder sama di Public & Views">
                        <div class="invalid-feedback errorfolder"></div>
                        <!-- <small> <strong class="text-warning"><i> Pastikan nama folder di public dan views sama..!</i></strong></small> -->
                    </div>
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label><i class="mdi mdi-format-color-fill"></i>Warna Topbar</label>
                        <input type="text" class="colorpicker-default form-control" id="warna_topbar" name="warna_topbar" value="#2784c5">
                    </div>
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-page-layout-sidebar-left"></i> Mode Sidebar</label>
                        <div class="form-control p-0">
                            &nbsp;<input type="radio" name="sidebar_mode" id="sidebar_mode2" value="0" checked> <label for="sidebar_mode2" class="pointer pt-2"> Light <small>Sidebar</small> </label>
                            <input type="radio" name="sidebar_mode" id="sidebar_mode1" value="1"> <label for="sidebar_mode1" class="pointer pt-2"> Dark <small>Sidebar</small> </label>
                        </div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="far fa-user"></i>
                            Sumber Pembuat
                        </label>
                        <input type="text" class="form-control" id="pembuat" name="pembuat">
                        <div class="invalid-feedback errorpembuat"></div>
                    </div>
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="ion-ios7-settings-strong"></i>
                            Keterangan
                        </label>
                        <input type="text" class="form-control" id="ket" name="ket">
                        <div class="invalid-feedback errorket"></div>
                    </div>
                </div>

                <div class="form-group mb-2">
                    <label>Foto Template</label>
                    <input type="file" class="form-control" id="img" name="img">
                    <div class="invalid-feedback errorimg"></div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btnsimpan"><i class="mdi mdi-content-save-all"></i> Simpan</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="mdi mdi-cancel"></i> Batal</button>
            </div>

            <?= form_close() ?>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {

        $('.btnsimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formtambah')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('template/simpantemplateback') ?>',
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


                        if (response.error.nama) {
                            $('#nama').addClass('is-invalid');
                            $('.errornama').html(response.error.nama);
                        } else {
                            $('#nama').removeClass('is-invalid');
                            $('.errornama').html('');
                        }

                        if (response.error.pembuat) {
                            $('#pembuat').addClass('is-invalid');
                            $('.errorpembuat').html(response.error.pembuat);
                        } else {
                            $('#pembuat').removeClass('is-invalid');
                            $('.errorpembuat').html('');
                        }

                        if (response.error.folder) {
                            $('#folder').addClass('is-invalid');
                            $('.errorfolder').html(response.error.folder);
                        } else {
                            $('#folder').removeClass('is-invalid');
                            $('.errorfolder').html('');
                        }
                        if (response.error.img) {
                            $('#img').addClass('is-invalid');
                            $('.errorimg').html(response.error.img);
                        } else {
                            $('#img').removeClass('is-invalid');
                            $('.errorimg').html('');
                        }

                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);

                    } else {

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
                            toastr["success"](response.sukses)
                        $('#modaltambah').modal('hide');
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                        listtemplateback();
                    }
                },
                error: function(xhr, ajaxOptions, thrownerror) {

                    toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), )
                    $('#modaltambah').modal('hide');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            });
        });
    });
</script>