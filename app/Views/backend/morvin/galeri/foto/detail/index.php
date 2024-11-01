<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>
<?= $this->section('content') ?>
<?= $this->include('/backend/' . $folder . '/datatable-js'); ?>

<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="page-title pt-2">
                    <h4 class="text-light "><i class="fas fa-image"></i> Foto <?= $kategori ?></h4>

                </div>
            </div>
            <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">

                        <li class="breadcrumb-item"><a href="#">Galeri</a></li>
                        <li class="breadcrumb-item"><a href="<?= base_url('foto/all/') ?>">Foto</a></li>
                        <li class="breadcrumb-item active"> <?= $kategori ?></li>
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

                <input type="hidden" name="kategorifoto_id" value="<?= $kategorifoto_id ?>" id="kategorifoto_id" name="kategorifoto_id">
                <!-- <div class="card-header font-18 bg-light">
                    <h6 class="modal-title mt-0">
                        <i class="fas fa-images"></i> Data Foto <?= $kategori ?>
                    </h6>
                </div> -->
                <div class="card-body">
                    <div class="viewdata"></div>
                    <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" id="csrf_tokencmsdatagoe" />

                </div>

                <div class="viewmodal"></div>

            </div>

        </div>

    </div>

    <script>
        function listfoto() {
            kategorifoto_id = $("#kategorifoto_id").val();

            $.ajax({
                type: "post",
                url: "<?= site_url('foto/getdetailft') ?>",
                data: {
                    csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                    kategorifoto_id: kategorifoto_id,
                },
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
                            window.location = '../';
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
                            window.location = '../admin';
                        })
                    }
                    $(kembali).hide();

                },
                error: function(xhr, ajaxOptions, thrownerror) {

                    // Swal.fire({
                    //     title: "Maaf gagal load data!",
                    //     html: `Silahkan Cek kembali Kode Error: <strong>${(xhr.status + "\n")}</strong> `,
                    //     icon: "error",
                    //     // showConfirmButton: false,
                    //     // timer: 3100
                    // }).then(function() {
                    //     window.location = '';
                    // })
                }
            });
        }

        $(document).ready(function() {
            listfoto();

        });
    </script>

    <?= $this->endSection() ?>