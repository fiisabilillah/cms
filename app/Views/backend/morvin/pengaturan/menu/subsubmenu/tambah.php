<div class="modal fade" id="modaltambah" tabindex="-1" data-bs-backdrop="static">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0"><?= $title ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                </button>
            </div>
            <?= form_open('menu/simpansubsubmenu', ['class' => 'formtambah']) ?>

            <div class="modal-body">
                <input type="hidden" class="form-control" id="submenu_id" value="<?= $submenu_id ?>" name="submenu_id" readonly>

                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Nama Menu</label>
                        <input type="text" id="nama_subsubmenu" name="nama_subsubmenu" class="form-control">
                        <div class="invalid-feedback errornama_subsubmenu"></div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Sumber Link</label>
                        <select class="form-select pointer" name="sumberlink" id="sumberlink">
                            <option Disabled=true Selected=true>-- Pilih Sumber Link--</option>
                            <option value="1" data-linkexternalssm="N">Kategori Berita</option>
                            <option value="2" data-linkexternalssm="N">Halaman</option>
                            <option value="3" data-linkexternalssm="N">Modul CMS</option>
                            <option value="4" data-linkexternalssm="Y">Eksternal</option>
                        </select>
                    </div>
                </div>

                <div class="form-group mb-2" id="berita">
                    <label>Pilih Kategori Berita</label>
                    <select name="dberita" id="dberita" class="form-select pointer">
                        <option Disabled=true Selected=true>--Pilih Kategori Berita--</option>
                        <?php foreach ($kategoriberita as $key => $data) { ?>
                            <option data-link_subsubmenu="category/<?= esc($data['slug_kategori']) ?>"><?= $data['nama_kategori'] ?></option>
                        <?php } ?>
                    </select>
                    <div class="invalid-feedback errorKategori"></div>
                </div>

                <div class="form-group mb-2" id="halaman">
                    <label>Pilih Halaman</label>
                    <select name="dhalaman" id="dhalaman" class="form-select pointer">
                        <option Disabled=true Selected=true>--Pilih Halaman--</option>
                        <?php foreach ($halaman as $key => $data) { ?>
                            <option data-link_subsubmenu="page/<?= esc($data['slug_berita']) ?>"><?= $data['judul_berita'] ?></option>
                        <?php } ?>
                    </select>
                    <div class="invalid-feedback errorKategori"></div>
                </div>

                <div class="form-group mb-2" id="modul">
                    <label>Pilih Modul CMS</label>
                    <select class="form-select" name="modulcms" id="modulcms">
                        <option Disabled=true Selected=true>-- Pilih Modul CMS--</option>
                        <?php foreach ($modulpublic as $key => $data) { ?>
                            <option data-link_subsubmenu="<?= esc($data['link']) ?>"><?= $data['modpublic'] ?></option>
                        <?php } ?>
                    </select>
                    <div class="invalid-feedback errormenu_link"></div>
                </div>

                <div class="form-group mb-2" id="eksternal">
                    <label>
                        Link URL <small class="text-danger">(Misalnya: http://cms.datagoe.com/)</small>
                    </label>
                    <input type="text" id="link_subsubmenu" name="link_subsubmenu" class="form-control">
                    <div class="invalid-feedback errorlink_subsubmenu"></div>
                </div>
                <input type="hidden" id="linkexternalssm" name="linkexternalssm" class="form-control">


                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Urutan Menu</label>
                        <input type="number" class="form-control" id="urutanssm" name="urutanssm">
                        <div class="invalid-feedback errorurutanssm"></div>
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Target</label>
                        <div class="form-control p-0">

                            &nbsp;<input type="radio" id="targetsm1" name="targetssm" value="_parent" checked><label for="targetsm1" class="pointer pt-2">&nbsp_parent &nbsp</label>
                            <input type="radio" id="targetsm2" name="targetssm" value="_blank"><label for="targetsm2" class="pointer pt-2">&nbsp_blank &nbsp</label>

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Icon Sub Menu</label>
                        <input type="text" class="form-control" id="iconssm" name="iconssm">
                    </div>

                    <div class="form-group col-md-6 col-12 mb-2">
                        <label>Lihat Icon</label>
                        <div class="btn-group mr-2">
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light mr-1" data-bs-toggle="modal" data-bs-target=".fontawesome">Awesome</button>
                            <button type="button" onclick="openMyModal2()" class="btn btn-outline-secondary waves-effect waves-light" data-bs-toggle="modal" data-bs-target=".mdideril">Material Design</button>
                        </div>
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
    function openMyModal2() {
        let myModal = new
        bootstrap.Modal(document.getElementById('modaltambah'), {});
        myModal.show();
    }
    $(document).ready(function() {

        $("#eksternal").hide();
        $("#berita").hide();
        $("#halaman").hide();
        $("#modul").hide();
        $('[name=link_subsubmenu]').val('#');
        $('[name=linkexternalssm]').val('N');


        // Pilihan Sumber Link 
        $('#sumberlink').on('change', function() {
            const linkexternalssm = $('#sumberlink option:selected').data('linkexternalssm');
            $('[name=linkexternalssm]').val(linkexternalssm);
        });

        // Pilihan Modul CMS
        $('#modulcms').on('change', function() {

            const link_subsubmenu = $('#modulcms option:selected').data('link_subsubmenu');
            $('[name=link_subsubmenu]').val(link_subsubmenu);
        });
        // Pilihan Kategori Berita
        $('#dberita').on('change', function() {

            const link_subsubmenu = $('#dberita option:selected').data('link_subsubmenu');
            $('[name=link_subsubmenu]').val(link_subsubmenu);
        });

        // Pilihan Halaman
        $('#dhalaman').on('change', function() {
            const link_subsubmenu = $('#dhalaman option:selected').data('link_subsubmenu');
            $('[name=link_subsubmenu]').val(link_subsubmenu);
        });

        $('#sumberlink').on('change', function() {
            $('[name=dberita]').val('');
            $('[name=dhalaman]').val('');
            $('[name=modulcms]').val('');

            if ($('#sumberlink').val() == '1') {
                $("#eksternal").hide();
                $("#berita").show();
                $("#halaman").hide();
                $("#modul").hide();
                $('[name=link_subsubmenu]').val('');
            } else if ($('#sumberlink').val() == '2') {
                $("#eksternal").hide();
                $("#berita").hide();
                $("#halaman").show();
                $("#modul").hide();
                $('[name=link_subsubmenu]').val('');
            } else if ($('#sumberlink').val() == '3') {
                $("#eksternal").hide();
                $("#berita").hide();
                $("#halaman").hide();
                $("#modul").show();
                $('[name=link_subsubmenu]').val('');
            } else {
                $("#eksternal").show();
                $("#berita").hide();
                $("#halaman").hide();
                $("#modul").hide();
                $('[name=link_subsubmenu]').val('');
            }
        });


        $('.btnsimpan').click(function(e) {
            e.preventDefault();
            let form = $('.formtambah')[0];
            let data = new FormData(form);
            $.ajax({
                type: "post",
                url: '<?= site_url('menu/simpansubsubmenu') ?>',
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

                        if (response.error.nama_subsubmenu) {
                            $('#nama_subsubmenu').addClass('is-invalid');
                            $('.errornama_subsubmenu').html(response.error.nama_subsubmenu);
                        } else {
                            $('#nama_subsubmenu').removeClass('is-invalid');
                            $('.errornama_subsubmenu').html('');
                        }


                        if (response.error.link_subsubmenu) {
                            $('#link_subsubmenu').addClass('is-invalid');
                            $('.errorlink_subsubmenu').html(response.error.link_subsubmenu);
                        } else {
                            $('#link_subsubmenu').removeClass('is-invalid');
                            $('.errorlink_subsubmenu').html('');
                        }

                        if (response.error.urutanssm) {
                            $('#urutanssm').addClass('is-invalid');
                            $('.errorurutanssm').html(response.error.urutanssm);
                        } else {
                            $('#urutanssm').removeClass('is-invalid');
                            $('.errorurutanssm').html('');
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
                        listsubsubmenu();
                    }
                },
                error: function(xhr, ajaxOptions, thrownerror) {
                    toastr["error"]("Maaf gagal proses Kode Error:  " + (xhr.status + "\n"), );
                    $('#modaltambah').modal('hide');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                }
            });
        });
    });
</script>