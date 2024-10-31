<!DOCTYPE html>
<html lang="in">
<?php

use App\Models\ModelKonfigurasi;

$this->konfigurasi    = new ModelKonfigurasi();
$konfigurasi          = $this->konfigurasi->vkonfig();
?>

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('/public/img/konfigurasi/icon/' . $konfigurasi->icon) ?>">
    <title>Maintenance</title>
    <link href="https://fonts.googleapis.com/css?family=Neuton|Roboto" rel="stylesheet">
    <style>
        .holder {
            width: 480px;
            text-align: center;
            margin: 0 auto;
            padding-top: 120px;
        }

        .holder h1 {
            font-family: 'loveloblack', sans-serif;
            font-size: 5em;
            color: #2d2d2d;
            text-shadow: 3px 3px 0 #e3e3e3;
            line-height: 27px;
            margin-top: 12px;
            margin-bottom: 10px;
        }

        .holder h1 span.tbl {
            font-family: Dosis, Tahoma, sans-serif;
            font-size: 35px;
            color: #2d2d2d;
            line-height: 1em;
            font-weight: bold;
            letter-spacing: -1px;
            line-height: 1;
            text-shadow: -1px 1px 1px rgba(0, 0, 0, 0.3);
        }

        .holder h1 span {
            font-family: Dosis, Tahoma, sans-serif;
            font-size: 1em;
            color: #3d9df8;
            line-height: 1em;
            font-weight: bold;
            letter-spacing: -1px;
            line-height: 1;
            text-shadow: -1px 1px 1px rgba(0, 0, 0, 0.3);
        }

        p {
            font-size: 18px;
            font-weight: 600;
            color: #13447E;
            font-family: 'Neuton', serif;
        }
    </style>
    <style>
        /* body {
            text-align: center;
            padding: 40px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        h1 {
            font-size: 45px;
        }

        h2 {
            font-size: 20px;
        }

        body {
            font: 20px Helvetica, sans-serif;
            color: #333;
        }

        article {
            display: block;
            text-align: left;
            width: 650px;
            margin: 0 auto;
        }

        a {
            color: #dc8100;
            text-decoration: none;
        }

        a:hover {
            color: #333;
            text-decoration: none;
        } */

        /* @primary-text-day: #212121;
        @secondary-text-day: #757575;
        @gradient-start-day: #fafafa;
        @gradient-end-day: #deebfa;

        html,
        body {
            background: linear-gradient(180deg, @gradient-start-day, @gradient-end-day) fixed;
            font-family: 'Open Sans', sans-serif;
            height: 100%;
            margin: 0 auto;
            user-select: none;
        }

        main {
            height: 100%;
            display: flex;
            margin: 0 20px;
            text-align: center;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            svg {
                fill: #48c5fd;
                stroke: #2e7bfc;
                stroke-width: 1.5;
                height: 140px;
                width: 200px;
                margin-bottom: 25px;
            }

            h1 {
                color: @primary-text-day;
                font-size: 3.5em;
                font-weight: 300;
                margin: 0;
            }

            h2 {
                color: @secondary-text-day;
                font-size: 1.5em;
                font-weight: 400;
                margin-top: 10px;
                max-width: 670px;
            }
        } */
    </style>


</head>

<body>
    <div class="holder">
        <img src="<?= base_url('/public/img/konfigurasi/maintenance.png') ?>" width="300px" height="200px" alt="" class="img-fluid mx-auto d-block">
        <!-- <img src="<?= base_url('/public/img/konfigurasi/logo/' . $konfigurasi->logo) ?>" style="width:250px;" /> -->
        <h1><span class="tbl">Website sedang dalam Perbaikan.</span></h1>
        <p><span class="tbl">Maaf atas ketidaknyamanan ini. <br> Anda dapat menghubungi kami disini <a href="https://wa.me/<?= $konfigurasi->no_telp ?>?text=Halo,..<?= $konfigurasi->nama ?>"><?= $konfigurasi->no_telp ?></a> Terima kasih.</span></p><br>
        <!-- <p><span class="tbl">Maaf atas ketidaknyamanan ini. Kami akan segera kembali. We'll be back shortly.</span></p><br> -->
        <br />
    </div>


    <!-- <article>
        <h2>MOHON MAAF</h2>
        <h1>Website sedang dalam Perbaikan</h1>
        <div>
            <img src="<?= base_url('/public/img/konfigurasi/maintenance.png') ?>" width="300px" height="200px" alt="" class="img-fluid mx-auto d-block">
        </div>
        <div>
            <p>Sehubungan sedang dilakukannya pemeliharaan pada situs <?= $konfigurasi->nama ?> maka pelayanan online dihentikan sementara <a href="mailto:someone@example.com">contact us</a>, otherwise we&rsquo;ll be back online shortly!</p>
            <p>&mdash; The Team</p>
        </div>
    </article> -->
</body>
<!-- <main>
    <svg viewBox="0 0 100 68">
        <g id="large">
            <path d="M55.8 38.5l6.2-1.2c0-1.8-.1-3.5-.4-5.3l-6.3-.2c-.5-2-1.2-4-2.1-6l4.8-4c-.9-1.6-1.9-3-3-4.4l-5.6 3c-1.3-1.6-3-3-4.7-4.1l2-6A30 30 0 0 0 42 8l-3.3 5.4c-2-.7-4.2-1-6.2-1.2L31.3 6c-1.8 0-3.5.1-5.3.4l-.2 6.3c-2 .5-4 1.2-6 2.1l-4-4.8c-1.6.9-3 1.9-4.4 3l3 5.6c-1.6 1.3-3 3-4.1 4.7l-6-2A32.5 32.5 0 0 0 2 26l5.4 3.3c-.7 2-1 4.2-1.2 6.2L0 36.7c0 1.8.1 3.5.4 5.3l6.3.2c.5 2 1.2 4 2.1 6l-4.8 4c.9 1.6 1.9 3 3 4.4l5.6-3c1.4 1.6 3 3 4.7 4.1l-2 6A30.5 30.5 0 0 0 20 66l3.4-5.4c2 .7 4 1 6.1 1.2l1.2 6.2c1.8 0 3.5-.1 5.3-.4l.2-6.3c2-.5 4-1.2 6-2.1l4 4.8c1.6-.9 3-1.9 4.4-3l-3-5.6c1.6-1.3 3-3 4.1-4.7l6 2A32 32 0 0 0 60 48l-5.4-3.3c.7-2 1-4.2 1.2-6.2zm-13.5 4a12.5 12.5 0 1 1-22.6-11 12.5 12.5 0 0 1 22.6 11z" />
            <animateTransform attributeName="transform" begin="0s" dur="4.5s" from="0 31 37" repeatCount="indefinite" to="360 31 37" type="rotate" />
        </g>
        <g id="small">
            <path d="M93 19.3l6-3c-.4-1.6-1-3.2-1.7-4.8L90.8 13c-.9-1.4-2-2.7-3.4-3.8l2.1-6.3A21.8 21.8 0 0 0 85 .7l-3.6 5.5c-1.7-.4-3.4-.5-5.1-.3l-3-5.9c-1.6.4-3.2 1-4.7 1.7L70 8c-1.5 1-2.8 2-3.9 3.5L60 9.4a20.6 20.6 0 0 0-2.2 4.6l5.5 3.6a15 15 0 0 0-.3 5.1l-5.9 3c.4 1.6 1 3.2 1.7 4.7L65 29c1 1.5 2.1 2.8 3.5 3.9l-2.1 6.3a21 21 0 0 0 4.5 2.2l3.6-5.6c1.7.4 3.5.5 5.2.3l2.9 5.9c1.6-.4 3.2-1 4.8-1.7L86 34c1.4-1 2.7-2.1 3.8-3.5l6.3 2.1a21.5 21.5 0 0 0 2.2-4.5l-5.6-3.6c.4-1.7.5-3.5.3-5.1zM84.5 24a7 7 0 1 1-12.8-6.2 7 7 0 0 1 12.8 6.2z" />
            <animateTransform attributeName="transform" begin="0s" dur="3s" from="0 78 21" repeatCount="indefinite" to="-360 78 21" type="rotate" />
        </g>
    </svg>
    <h1>Under Maintenance</h1>
    <h2>We are sorry for the inconvenience. In the meantime, please contact the OSC for any questions.</h2>
</main> -->

</html>