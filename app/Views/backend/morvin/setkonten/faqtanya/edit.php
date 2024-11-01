<div class="modal fade" id="modaledit">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>

            <?= form_open_multipart('', ['class' => 'formedit']) ?>

            <div class="modal-body">
                <input type="hidden" value="<?= $faq_tanyaid ?>" name="faq_tanyaid">
                <div class="form-group">
                    <label> <i class="ion-ios7-settings-strong"></i>
                        Pertanyaan
                    </label>
                    <textarea type="text" id="faqtanya" name="faqtanya" class="form-control"><?= esc($faqtanya) ?></textarea>
                    <div class="invalid-feedback errorfaqtanya"></div>
                </div>
                <div class="form-group">
                    <label>Kategori</label>
                    <select name="kat_faq" id="kat_faq" class="form-select pointer">
                        <option Disabled=true Selected=true>-- Pilih Kategori --</option>
                        <?php foreach ($kategori as $key => $value) { ?>
                            <option value="<?= $value['id_masterdata'] ?>" <?= $kat_faq ==  $value['id_masterdata'] ? 'selected' : '' ?>><?= $value['nama_master'] ?></option>
                        <?php } ?>

                    </select>
                </div>
            </div>

            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btnupdate"><i class="mdi mdi-content-save-all"></i> Simpan</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="mdi mdi-cancel"></i> Batal</button>
            </div>
            <?php echo form_close() ?>
        </div>
    </div>
</div>


<script>
    $(document).ready(function() {

        $('.btnupdate').click(function(e) {
            e.preventDefault();
            let form = $('.formedit')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('tanyajawab/updatefaqtanya') ?>',
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

                        if (response.error.faqtanya) {
                            $('#faqtanya').addClass('is-invalid');
                            $('.errorfaqtanya').html(response.error.faqtanya);
                        } else {
                            $('#faqtanya').removeClass('is-invalid');
                            $('.errorfaqtanya').html('');
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
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                        listfaqtanya();
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