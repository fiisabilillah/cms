<!-- Modal -->
<div class="modal fade" id="modaltambah" tabindex="-1" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <?= form_open_multipart('', ['class' => 'formtambah']) ?>

            <div class="modal-body">
                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            Nama Modul
                        </label>
                        <input type="text" id="modul" name="modul" class="form-control">
                        <div class="invalid-feedback errormodul"></div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            Grup Menu
                        </label>
                        <input type="text" id="gm" name="gm" value="<?= $gm ?>" class="form-control" readonly>

                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            Urutan
                        </label>
                        <input type="number" id="urut" name="urut" class="form-control">
                        <div class="invalid-feedback errorurut"></div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            URL Menu
                        </label>
                        <input type="text" id="urlmenu" name="urlmenu" placeholder="Link Controler utk Akses Modul" class="form-control">
                        <div class="invalid-feedback errorurlmenu"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-text-shadow"></i>
                            Ikon
                        </label>
                        <input type="text" id="ikonmn" name="ikonmn" class="form-control">
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Lihat Icon</label>
                        <div class="btn-group mr-2">
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light mr-1" data-bs-toggle="modal" data-bs-target=".fontawesome">Awesome</button>
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light" data-bs-toggle="modal" data-bs-target=".mdideril">Material Design</button>
                        </div>
                    </div>
                </div>

                <!-- <small> <strong class="text-warning"><i> Pembuatan modul ini, hanya untuk mendaftarkan Modul baru ..!</i></strong></small> -->

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
    function openMyModal2() {
        let myModal = new
        bootstrap.Modal(document.getElementById('modaltambah'), {});
        myModal.show();
    }
    $(document).ready(function() {

        $('.btnsimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formtambah')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('modul/simpanmodul') ?>',
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

                        if (response.error.modul) {
                            $('#modul').addClass('is-invalid');
                            $('.errormodul').html(response.error.modul);
                        } else {
                            $('#modul').removeClass('is-invalid');
                            $('.errormodul').html('');
                        }

                        if (response.error.urlmenu) {
                            $('#urlmenu').addClass('is-invalid');
                            $('.errorurlmenu').html(response.error.urlmenu);
                        } else {
                            $('#urlmenu').removeClass('is-invalid');
                            $('.errorurlmenu').html('');
                        }

                        if (response.error.urut) {
                            $('#urut').addClass('is-invalid');
                            $('.errorurut').html(response.error.urut);
                        } else {
                            $('#urut').removeClass('is-invalid');
                            $('.errorurut').html('');
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
                        listmodul();
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