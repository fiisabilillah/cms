<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>

<?= $this->section('content') ?>
<?= $this->include('/backend/' . $folder . '/datatable-js'); ?>

<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="page-title">
                    <h4 class="text-light"><i class="mdi mdi-sitemap"></i> Sub Menu <?= $menuinduk ?></h4>

                </div>
            </div>
            <div class="col-sm-6">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">
                        <!-- <li class="breadcrumb-item"><a href="javascript: void(0);">Morvin</a></li> -->
                        <li class="breadcrumb-item"><a href="<?= base_url('menu/') ?>">Menu</a></li>
                        <li class="breadcrumb-item"><a href="#">Sub Menu</a></li>
                        <li class="breadcrumb-item active"> <?= $menuinduk ?></li>
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
                        <i class="far fa-clone"></i> Pengaturan Menu <a class="text-primary"> <b><?= $menuinduk ?></b></a>
                    </h6>
                </div> -->
                <input type="hidden" name="menu_id" value="<?= $menu_id ?>" id="menu_id" name="menu_id">

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
    function listsubmenu() {
        menu_id = $("#menu_id").val();

        $.ajax({
            type: "post",
            data: {
                csrf_tokencmsdatagoe: $('input[name=csrf_tokencmsdatagoe]').val(),
                menu_id: menu_id,
            },
            url: "<?= site_url('menu/getsubmenu') ?>",
            dataType: "json",
            success: function(response) {
                $('input[name=csrf_tokencmsdatagoe]').val(response.csrf_tokencmsdatagoe);
                $('.viewdata').html(response.data);
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
                        window.location = '../dashboard';
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
        listsubmenu();

    });
</script>


<?= $this->endSection() ?>