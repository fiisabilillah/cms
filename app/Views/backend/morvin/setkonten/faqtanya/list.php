<?php

use App\Models\M_Prj_master;

$this->masterdata = new M_Prj_master();

?>
<?= form_open('tanyajawab/hapusall', ['class' => 'formhapus']) ?>
<?php if ($tambah == 1) { ?>
    <button type="submit" class="btn btn-success btn-sm tambah">
        <i class="fas fa fa-plus-circle"></i> Tambah Data
    </button>
<?php } ?>
<?php if ($hapus == 1) { ?>
    <button type="submit" class="btn btn-danger btn-sm tblhapus">
        <i class="far fa-trash-alt text-light"></i> Hapus yang dipilih
    </button>
<?php } ?>
<hr>
<div class="table-responsive b-0">
    <table id="listfaqtanya" class="table table-hover table-striped table-bordered">

        <thead>
            <tr>
                <th width="4">
                    <input type="checkbox" id="centangSemua" class="text-center">
                </th>
                <th width="10"># </th>
                <th>Pertanyaan</th>
                <th>Kategori</th>
                <th width="55" class="text-center">Aksi </th>
            </tr>
        </thead>
        <tbody>
            <?php $nomor = 0;
            foreach ($list as $data) :
                $nomor++;
                $kat            = $this->masterdata->find($data['kat_faq']);
            ?>
                <tr>
                    <td class="p-1 text-center">
                        <input type="checkbox" name="faq_tanyaid[]" class="centang_id" value="<?= $data['faq_tanyaid'] ?>">
                    </td>
                    <td class="p-1 text-center"><?= $nomor ?></td>
                    <td class="p-1">
                        <a href="<?= base_url('tanyajawab/jawaban/' . $data['faq_tanyaid']) ?>" class="text-primary" title="Manajemen Jawaban">
                            <?= $data['faqtanya'] ?>
                        </a>

                    </td>
                    <td class="p-1"> &nbsp;<?= $kat['nama_master'] ?></td>
                    <td class="text-center p-1">
                        <?php if ($ubah == 1) { ?>
                            <button type="button" class="btn btn-light btn-sm p-1" onclick="edit('<?= $data['faq_tanyaid'] ?>')">
                                <i class="icon fas fa-edit text-info"></i>
                            </button>
                        <?php } else { ?>
                            <button type="button" class="btn btn-light btn-sm p-1">
                                <i class="icon fas fa-edit text-secondary"></i>
                            </button>
                        <?php } ?>
                        <?php if ($hapus == 1) { ?>
                            <button type="button" class="btn btn-light btn-sm p-1" onclick="hapus('<?= $data['faq_tanyaid'] ?>','<?= $data['faqtanya'] ?>')">
                                <i class="far fa-trash-alt text-danger"></i>
                            </button>
                        <?php } else { ?>
                            <button type="button" class="btn btn-light btn-sm p-1">
                                <i class="far fa-trash-alt text-secondary"></i>
                            </button>
                        <?php } ?>
                    </td>

                </tr>
            <?php endforeach; ?>
        </tbody>
        <tfoot>
            <tr>

                <th>
                    <input type="checkbox" class="text-center" disabled>
                </th>
                <th>#</th>
                <th>Pertanyaan</th>
                <th>Kategori</th>
                <th class="text-center">Aksi </th>

            </tr>
        </tfoot>
    </table>
</div>
<?= form_close() ?>

<script>
    $(document).ready(function() {

        $('#listfaqtanya').DataTable({
            "ordering": false,
        });

        $('#centangSemua').click(function(e) {
            if ($(this).is(':checked')) {
                $('.centang_id').prop('checked', true);
            } else {
                $('.centang_id').prop('checked', false);
            }
        });

        $('.formhapus').submit(function(e) {
            e.preventDefault();
            let jmldata = $('.centang_id:checked');
            if (jmldata.length === 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Ooops!',
                    text: 'Silahkan pilih data!',
                    showConfirmButton: false,
                    timer: 1500
                })
            } else {
                Swal.fire({
                    title: `Apakah anda yakin menghapus ${jmldata.length} data ini?`,
                    text: 'Semua data yang terpilih akan terhapus!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Ya, Hapus!',
                    cancelButtonText: 'Tidak'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            type: "post",
                            url: $(this).attr('action'),
                            data: $(this).serialize(),
                            dataType: "json",
                            beforeSend: function() {
                                $('.tblhapus').attr('disable', 'disable');
                                $('.tblhapus').html('<span class="spinner-border spinner-grow-sm" role="status" aria-hidden="true"></span> <i>Loading...</i>');
                            },
                            complete: function() {
                                $('.tblhapus').removeAttr('disable', 'disable');
                                $('.tblhapus').html('<i class="far fa-trash-alt text-light"></i>  Hapus yang diceklist');
                            },
                            success: function(response) {
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
                                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                                listfaqtanya();
                            },
                            error: function(xhr, ajaxOptions, thrownerror) {
                                toastr["error"]("Maaf gagal hapus Kode Error:  " + (xhr.status + "\n"), )
                                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                            }
                        });
                    }
                })
            }
        });
    });

    function edit(faq_tanyaid) {

        $.ajax({
            type: "post",
            url: "<?= site_url('tanyajawab/formedit') ?>",
            data: {
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                faq_tanyaid: faq_tanyaid,
            },
            dataType: "json",
            success: function(response) {
                if (response.sukses) {
                    $('.viewmodal').html(response.sukses).show();
                    $('#modaledit').modal({
                        backdrop: 'static',
                        keyboard: false
                    });
                    $('#modaledit').modal('show');
                    $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
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
            }
        });
    }

    function hapus(faq_tanyaid, pertanyaan) {
        Swal.fire({

            html: `Apakah anda yakin menghapus <strong>${pertanyaan}</strong> ini?`,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Hapus!',
            cancelButtonText: 'Tidak'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "<?= site_url('tanyajawab/hapus') ?>",
                    type: "post",
                    dataType: "json",
                    data: {
                        csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                        faq_tanyaid: faq_tanyaid
                    },
                    success: function(response) {
                        if (response.sukses) {
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
                            $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                            listfaqtanya();
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownerror) {
                        toastr["error"]("Maaf gagal hapus Kode Error:  " + (xhr.status + "\n"), )
                        $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                    }
                });
            }
        })
    }


    //tambah data
    $(document).ready(function() {

        $('.tambah').click(function(e) {
            e.preventDefault();
            $.ajax({
                url: "<?= site_url('tanyajawab/formtambah') ?>",
                data: {
                    // survey_id: survey_id,
                },
                dataType: "json",
                success: function(response) {
                    $('.viewmodal').html(response.data).show();
                    $('#modaltambah').modal({
                        backdrop: 'static',
                        keyboard: false
                    });
                    $('#modaltambah').modal('show');
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
                }
            });
        });
    });
</script>