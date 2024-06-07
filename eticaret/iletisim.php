<?php include 'header.php'; ?>

<head>
    <title>İletişim Sayfası</title>
</head>

<div class="container text-center">
    <div class="clearfix"></div>
    <div class="lines"></div>
</div>

<div class="container text-center">
    <div class="row">
    </div>
    <div class="title-bg">
        <div class="title">İletişim Sayfası</div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <p class="page-content">
                Bize aşağıdaki bilgilerden ulaşabilirsiniz yada form maili kullanabilirsiniz.
            </p>
            <ul class="contact-widget list-unstyled">
                <li class="fphone"><?php echo $ayarcek['ayar_tel']; ?></li>
                <li class="fmobile"><?php echo $ayarcek['ayar_gsm']; ?></li>
                <li class="fmail lastone"><?php echo $ayarcek['ayar_mail']; ?></li>
            </ul>
        </div>
    </div>
    <div class="title-bg">
        <div class="title">İletişim Formu</div>
    </div>
    <div class="qc d-inline-block text-left" style="width: 100%; max-width: 600px; margin: 0 auto;">
        <form action="http://www.suleymanalper.com.tr/btest/mailphp/mail.php" method="POST" role="form">
            <div class="form-group">
                <label for="name">Ad Soyad<span>*</span></label>
                <input type="text" name="adsoyad" class="form-control" id="name">
            </div>
            <div class="form-group">
                <label for="email">Mail<span>*</span></label>
                <input type="email" name="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="text">Mesaj<span>*</span></label>
                <textarea name="mesaj" class="form-control" id="text" rows="5"></textarea>
            </div>

            <?php 
            $sayi1 = rand(10, 30);
            $sayi2 = rand(0, 10);
            $toplam = $sayi1 + $sayi2;
            ?>

            <input type="hidden" value="<?php echo $toplam; ?>" name="toplam">
            <div class="form-group">
                <label for="islem">İşlem Sonucu?<span>*</span></label>
                <input type="text" name="islem" placeholder="<?php echo $sayi1 . " + " . $sayi2 . " kaçtır ?"; ?>" class="form-control" id="islem">
            </div>
            <button type="submit" class="btn btn-default btn-red btn-sm">Formu Gönder</button>
        </form>
    </div>
    <div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>
