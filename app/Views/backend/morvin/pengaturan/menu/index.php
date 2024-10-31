<?= $this->section('content') ?>
<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>
<?= $this->include('/backend/' . $folder . '/datatable-js'); ?>

<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="page-title">
                    <h4 class="text-light"><i class="mdi mdi-sitemap"></i> Data <?= $subtitle ?></h4>

                </div>
            </div>
            <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">
                        <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Morvin</a></li> -->
                        <li class="breadcrumb-item"><a href="#">Konfigurasi</a></li>
                        <!-- <li class="breadcrumb-item"><a href="<?= base_url('user/') ?>">Pengguna</a></li> -->
                        <li class="breadcrumb-item active"> <?= $subtitle ?></li>
                    </ol>
                    <!-- <a href="" class="btn btn-success">Add Widget</a> -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content-wrapper">
    <div class="row">
        <div class="col-12">
            <div class="card m-b-20">
                <!-- <div class="card-header font-18 bg-light">
                    <h6 class="modal-title mt-0">
                        <i class="mdi mdi-sitemap"></i> Pengaturan <?= $subtitle ?>
                    </h6>
                </div> -->
                <input type="hidden" id="posisimn" name="posisimn" class="form-control form-control-sm">
                <div class="card-body">
                    <div class="viewdata"></div>
                </div>
                <div class="viewmodal"></div>
                <!-- <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" id="csrf_tokencmsdatagoe" /> -->

            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
</div>

<script>
    function listmenu() {
        posisimn = $("#posisimn").val();

        $.ajax({
            type: "post",
            data: {
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                posisimn: posisimn,
            },
            url: "<?= site_url('menu/getmenu') ?>",
            dataType: "json",
            success: function(response) {
                $('.viewdata').html(response.data);
                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                if (response.noakses) {

                    Swal.fire({
                        title: "Gagal Akses!",
                        html: `Anda tidak berhak mengakses <strong>Modul ini</strong> `,
                        icon: "error",
                        showConfirmButton: false,
                        timer: 3100
                    }).then(function() {
                        window.location = './';
                    })
                }
                if (response.blmakses) {

                    Swal.fire({
                        title: "Maaf gagal load Modul!",
                        html: `Modul ini belum atau tidak didaftarkan `,
                        icon: "error",
                        showConfirmButton: false,
                        timer: 3100
                    }).then(function() {
                        window.location = './admin';
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
                });
            }
        });
    }

    $(document).ready(function() {
        // $('[name=posisimn]').val('0');
        if ($('#posisimn').val() == '') {
            $('[name=posisimn]').val('0');
        }
        listmenu();
    });
</script>
<?= $this->endSection() ?>