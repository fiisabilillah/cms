
<link href="<?= base_url('/public/template/backend/morvin/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css') ?>" rel="stylesheet">
<script src="<?= base_url('/public/template/backend/morvin/assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js') ?>"></script>

<div class="modal fade" id="modaledit">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title  ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>

            <?= form_open_multipart('', ['class' => 'formedit']) ?>


            <div class="modal-body">
                <input type="hidden" value="<?= $agenda_id ?>" name="agenda_id">

                <div class="form-group mb-2">
                    <label> <i class="mdi mdi-text-shadow"></i>
                        Tema Agenda
                    </label>
                    <input type="text" id="tema" name="tema" value="<?= $tema ?>" class="form-control">
                    <div class="invalid-feedback errortema"></div>
                </div>

                <div class="form-group mb-2">
                    <label> <i class="ion-ios7-settings-strong"></i>
                        Deskripsi
                    </label>
                    <textarea type="text" id="isi_agenda" name="isi_agenda"> <?= $isi_agenda ?></textarea>

                    <div class="invalid-feedback errorisi_agenda"></div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-send"></i>
                            Penyelenggara / Pengirim
                        </label>
                        <input type="text" id="pengirim" name="pengirim" value="<?= $pengirim ?>" class="form-control">
                        <div class="invalid-feedback errorpengirim"></div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label> <i class="mdi mdi-toy-brick-marker-outline"></i>
                            Tempat
                        </label>
                        <input type="text" id="tempat" name="tempat" value="<?= $tempat ?>" class=" form-control">
                        <div class="invalid-feedback errortempat"></div>
                    </div>

                    <div class="form-group col-md-4 col-12 mb-2" id="tglmulai">
                        <label> <i class="mdi mdi-calendar-range"></i>
                            Tanggal Mulai
                        </label>
                        <input type="text" class="form-control" id="tgl_mulai" name="tgl_mulai" value="<?= shortdate_indo($tgl_mulai) ?>" data-date-format="dd M, yyyy" data-date-container='#tglmulai' data-provide="datepicker" data-date-autoclose="true">
                        <!-- <input type="text" class="form-control" name="tgl_mulai" value="<?= shortdate_indo($tgl_mulai) ?>" data-date-format="dd M, yyyy" data-date-container='#tgl_mulai' data-provide="datepicker" data-date-autoclose="true"> -->
                        <div class="invalid-feedback errortgl_mulai"></div>
                    </div>

                    <div class="form-group col-md-4 col-12 mb-2" id="tglselesai">
                        <label> <i class="mdi mdi-calendar-range"></i>
                            Tanggal Selesai
                        </label>
                        <input type="text" class="form-control" id="tgl_selesai" name="tgl_selesai" value="<?= shortdate_indo($tgl_selesai) ?>" data-date-format="dd M, yyyy" data-date-container='#tglselesai' data-provide="datepicker" data-date-autoclose="true">
                        <!-- <input type="text" name="tgl_selesai" value="<?= shortdate_indo($tgl_selesai) ?>" class=" form-control date-picker" placeholder="dd-mm-yyyy"> -->
                        <div class="invalid-feedback errortgl_selesai"></div>
                    </div>

                    <div class="form-group col-md-4 col-12 mb-2">
                        <label> <i class="mdi mdi-update"></i>
                            Jam s/d Selesai
                        </label>
                        <input type="text" id="jam" name="jam" value="<?= $jam ?>" class=" form-control">
                        <div class="invalid-feedback errorjam"></div>
                    </div>
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

        $('textarea#isi_agenda').summernote({
            height: 250,
            fontSizes: ['11', '12', '13', '14', '15', '16', '17', '18', '20', '24', '36', '40', '48'],
            toolbar: [
                ['style', ['style']],
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['height', ['height']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['color', ['color']],
                ['insert', ['picture', 'link', 'video', 'table']],
                // ['view', ['fullscreen']],

            ],
        });
        var noteBar = $('.note-toolbar');
        noteBar.find('[data-toggle]').each(function() {
            $(this).attr('data-bs-toggle', $(this).attr('data-toggle')).removeAttr('data-toggle');
        });


        $('.btnupdate').click(function(e) {
            e.preventDefault();
            let form = $('.formedit')[0];
            let data = new FormData(form);

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

                $.ajax({
                    type: "post",
                    url: '<?= site_url('agenda/updateagenda') ?>',
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

                            if (response.error.tema) {
                                $('#tema').addClass('is-invalid');
                                $('.errortema').html(response.error.tema);
                            } else {
                                $('#tema').removeClass('is-invalid');
                                $('.errortema').html('');
                            }

                            if (response.error.isi_agenda) {
                                $('#isi_agenda').addClass('is-invalid');
                                $('.errorisi_agenda').html(response.error.isi_agenda);
                            } else {
                                $('#isi_agenda').removeClass('is-invalid');
                                $('.errorisi_agenda').html('');
                            }

                            if (response.error.tempat) {
                                $('#tempat').addClass('is-invalid');
                                $('.errortempat').html(response.error.tempat);
                            } else {
                                $('#tempat').removeClass('is-invalid');
                                $('.errortempat').html('');
                            }

                            if (response.error.tgl_mulai) {
                                $('#tgl_mulai').addClass('is-invalid');
                                $('.errortgl_mulai').html(response.error.tgl_mulai);
                            } else {
                                $('#tgl_mulai').removeClass('is-invalid');
                                $('.errortgl_mulai').html('');
                            }

                            if (response.error.tgl_selesai) {
                                $('#tgl_selesai').addClass('is-invalid');
                                $('.errortgl_selesai').html(response.error.tgl_selesai);
                            } else {
                                $('#tgl_selesai').removeClass('is-invalid');
                                $('.errortgl_selesai').html('');
                            }

                            if (response.error.jam) {
                                $('#jam').addClass('is-invalid');
                                $('.errorjam').html(response.error.jam);
                            } else {
                                $('#jam').removeClass('is-invalid');
                                $('.errorjam').html('');
                            }

                            if (response.error.pengirim) {
                                $('#pengirim').addClass('is-invalid');
                                $('.errorpengirim').html(response.error.pengirim);
                            } else {
                                $('#pengirim').removeClass('is-invalid');
                                $('.errorpengirim').html('');
                            }
                            $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);

                        } else {

                            toastr["success"](response.sukses)
                            $('#modaledit').modal('hide');
                            $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                            listagenda();

                        }
                    },
                    error: function(xhr, ajaxOptions, thrownerror) {

                        toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), )
                        $('#modaledit').modal('hide');
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);

                    }
                });
        });
    });
</script>