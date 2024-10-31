<link href="<?= base_url() ?>/public/template/backend/morvin/assets/libs/spectrum-colorpicker2/spectrum.min.css" rel="stylesheet" type="text/css">
<link href="<?= base_url() ?>/public/template/backend/morvin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
<script src="<?= base_url() ?>/public/template/backend/morvin/assets/libs/spectrum-colorpicker2/spectrum.min.js"></script>
<script src="<?= base_url() ?>/public/template/backend/morvin/assets/js/pages/form-advanced.init.js"></script>

<div class="modal fade" id="modaledit" tabindex="-1" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title  ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>
            <?= form_open('', ['class' => 'formedit']) ?>

            <div class="modal-body">
                <input type="hidden" class="form-control" id="id_counter" value="<?= $id_counter ?>" name="id_counter" readonly>
                <div class="row">
                    <div class="form-group col-md-6 col-12">
                        <label>Nama</label>
                        <input type="text" class="form-control form-control-sm" id="nm" name="nm" value="<?= $nm ?>">
                        <div class="invalid-feedback errornm"></div>
                    </div>
                    <div class="form-group col-md-3 col-12">
                        <label>Jumlah</label>
                        <input type="number" class="form-control form-control-sm" id="jm" name="jm" value="<?= $jm ?>">
                        <div class="invalid-feedback errorjm"></div>
                    </div>
                    <div class="form-group col-md-3 col-12">
                        <label>Warna</label>
                        <!-- <input type="text" class="colorpicker-default form-control form-control-sm" id="bgc" name="bgc" value="<?= $bgc ?>"> -->
                        <input type="text" class="form-control form-control-sm" id="colorpicker-togglepaletteonly" name="bgc" value="<?= $bgc ?>">
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6 col-12">
                        <label>Sumber Data</label>
                        <input type="text" class="form-control form-control-sm" id="sumber" name="sumber" value="<?= $sumber ?>">
                        <div class="invalid-feedback errorsumber"></div>
                    </div>

                    <div class="form-group col-md-6 col-12">
                        <label>Link</label>
                        <input type="text" class="form-control form-control-sm" id="link" name="link" value="<?= $link ?>">

                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 col-12">
                        <label>Icon</label>
                        <input type="text" class="form-control form-control-sm" id="ic" name="ic" value="<?= $ic ?>">
                    </div>
                    <div class="form-group col-md-6 col-12">
                        <label>Lihat Icon</label>
                        <div class="btn-group mr-2">
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light btn-sm mr-1" data-bs-toggle="modal" data-bs-target=".fontawesome">Font Awesome</button>
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light btn-sm" data-bs-toggle="modal" data-bs-target=".mdideril">Material Design</button>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btnupdate"><i class="mdi mdi-content-save-all"></i> Simpan</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="mdi mdi-cancel"></i> Batal</button>
            </div>

            <?= form_close() ?>
        </div>
    </div>
</div>


<script>
    function openMyModal2() {
        let myModal = new
        bootstrap.Modal(document.getElementById('modaledit'), {});
        myModal.show();
    }
    $(document).ready(function() {


        $('.btnupdate').click(function(e) {
            e.preventDefault();
            let form = $('.formedit')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('counter/updatedata') ?>',
                data: data,
                enctype: 'multipart/form-data',
                processData: false,
                contentType: false,
                cache: false,
                dataType: "json",
                beforeSend: function() {
                    $('.btnupdate').attr('disable', 'disable');
                    $('.btnupdate').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
                },
                complete: function() {
                    $('.btnupdate').removeAttr('disable', 'disable');
                    $('.btnupdate').html('<i class="mdi mdi-content-save-all"></i> Simpan');
                },
                success: function(response) {
                    if (response.error) {

                        if (response.error.nm) {
                            $('#nm').addClass('is-invalid');
                            $('.errornm').html(response.error.nm);
                        } else {
                            $('#nm').removeClass('is-invalid');
                            $('.errornm').html('');
                        }

                        if (response.error.jm) {
                            $('#jm').addClass('is-invalid');
                            $('.errorjm').html(response.error.jm);
                        } else {
                            $('#jm').removeClass('is-invalid');
                            $('.errorjm').html('');
                        }

                        if (response.error.ic) {
                            $('#ic').addClass('is-invalid');
                            $('.erroric').html(response.error.ic);
                        } else {
                            $('#ic').removeClass('is-invalid');
                            $('.erroric').html('');
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
                        $('#modaledit').modal('hide');
                        listcount();
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    }
                },
                error: function(xhr, ajaxOptions, thrownerror) {
                    toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );
                    $('#modaledit').modal('hide');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            });
        });
    });
</script>