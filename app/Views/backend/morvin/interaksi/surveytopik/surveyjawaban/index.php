<?= $this->section('content') ?>
<?= $this->extend('backend/' . $folder . '/' . 'script'); ?>

<?= $this->include('/backend/' . $folder . '/datatable-js'); ?>
<?php
if ($list) {
    foreach ($list as $data) :
        $tanya  = ($data['pertanyaan']);
        $tanya1  = substr($data['pertanyaan'], 0, 60);
        $tanya2 = substr($data['pertanyaan'], 0, 20);
    endforeach;
} else {
    $tanya  = '';
    $tanya1  = '';
    $tanya2  = '';
}  ?>
<div class="page-title-box">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-sm-7">
                <div class="page-title">
                    <a class="text-light" title="<?= $tanya ?>" style="font-size: 15px;"><i class="mdi mdi-bullseye-arrow"></i> <?= $tanya1 ?>..</a>

                </div>
            </div>
            <div class="col-sm-5">
                <div class="float-end d-none d-sm-block">
                    <ol class="breadcrumb m-0">

                        <li class="breadcrumb-item"><a href="<?= base_url('survey/all/') ?>">Survei</a></li>
                        <li class="breadcrumb-item"><a href="#">Jawaban</a></li>
                        <!-- <li class="breadcrumb-item active" title="<?= $tanya ?>"> <?= $tanya2 ?></li> -->
                    </ol>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content-wrapper">
    <div class="row">
        <div class="col-12">
            <div class="card m-b-20">

                <div class="card-header font-14 bg-light">
                    <h6 class="modal-title mt-0">
                        <i class="mdi mdi-bullseye-arrow font-10"></i>Jawaban
                        <input type="hidden" value="<?= $pertanyaan_id ?>" id="pertanyaan_id" name="pertanyaan_id">

                        <?php
                        if ($list) {
                            foreach ($list as $data) :

                            endforeach
                        ?>

                            <a class="text-primary"><?= $data['pertanyaan'] ?></a>
                        <?php } ?>

                    </h6>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="viewdata"></div>
                </div>
                <div class="viewmodal"></div>
                <!-- /.card-body -->
            </div>

        </div>

    </div>

</div>

<script>
    function listjawaban() {

        pertanyaan_id = $("#pertanyaan_id").val();

        $.ajax({

            url: "<?= site_url('survey/getjawaban') ?>",
            data: {
                pertanyaan_id: pertanyaan_id,
            },
            dataType: "json",
            success: function(response) {
                $('.viewdata').html(response.data);
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
        listjawaban();

    });
</script>
<?= $this->endSection() ?>