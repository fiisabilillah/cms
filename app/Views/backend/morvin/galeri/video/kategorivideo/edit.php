<div class="modal fade" id="modaledit" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title  ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>
            <?= form_open('video/updatekategori', ['class' => 'formedit']) ?>
            <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" id="csrf_tokencmsdatagoe" />

            <div class="modal-body">
                <input type="hidden" class="form-control" id="kategorivideo_id" value="<?= $kategorivideo_id ?>" name="kategorivideo_id" readonly>
                <div class="form-group row">
                    <label for="" class="col-sm-3 col-form-label">Kategori</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="nama_kategori_video" value="<?= $nama_kategori_video ?>" name="nama_kategori_video">
                        <div class="invalid-feedback errorNamakategori"></div>
                    </div>
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
        $('.formedit').submit(function(e) {
            e.preventDefault();
            let title = $('input#nama_kategori_video').val()
            $.ajax({
                type: "post",
                url: $(this).attr('action'),
                data: {
                    csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                    kategorivideo_id: $('input#kategorivideo_id').val(),
                    nama_kategori_video: $('input#nama_kategori_video').val(),
                    slug_kategori_video: title.replace(/[^a-z0-9]/gi, '-').replace(/-+/g, '-').replace(/^-|-$/g, '')

                },
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
                        if (response.error.nama_kategori_video) {
                            $('#nama_kategori_video').addClass('is-invalid');
                            $('.errorNamakategori').html(response.error.nama_kategori_video);
                        } else {
                            $('#nama_kategori_video').removeClass('is-invalid');
                            $('.errorNamakategori').html('');
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
                        listkategorivideo();
                    }
                },

                error: function(xhr, ajaxOptions, thrownerror) {
                    toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );
                    $('#modaledit').modal('hide');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            });
        })
    });
</script>