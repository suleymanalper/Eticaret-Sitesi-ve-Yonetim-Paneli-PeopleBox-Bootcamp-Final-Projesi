﻿<?php 

include 'header.php'; 

$urunsor = $db->prepare("SELECT * FROM urun WHERE urun_id = :urun_id");
$urunsor->execute(array(
    'urun_id' => $_GET['urun_id']
));

$uruncek = $urunsor->fetch(PDO::FETCH_ASSOC);

if ($urunsor->rowCount() == 0) {
    header("Location:index.php?durum=girilmez");
    exit;
}
?>

<head>
    <title><?php echo $uruncek['urun_ad'] ?> - Udemy E-Ticaret</title>
    <!-- fancy Style -->
    <link rel="stylesheet" type="text/css" href="js/product/jquery.fancybox.css?v=2.1.5" media="screen">
</head>

<?php 
if (isset($_GET['durum']) && $_GET['durum'] == "ok") { ?>
    <script type="text/javascript">
        alert("Yorum Başarıyla Eklendi");
    </script>
<?php } ?>

<div class="container">
    <div class="clearfix"></div>
    <div class="lines"></div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-9"><!--Main content-->
            <div class="title-bg">
                <div class="title"><?php echo $uruncek['urun_ad'] ?></div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <?php
                    $urun_id = $uruncek['urun_id'];
                    $urunfotosor = $db->prepare("SELECT * FROM urunfoto WHERE urun_id = :urun_id ORDER BY urunfoto_sira ASC LIMIT 1");
                    $urunfotosor->execute(array(
                        'urun_id' => $urun_id
                    ));

                    $urunfotocek = $urunfotosor->fetch(PDO::FETCH_ASSOC);
                    ?>
                    <div class="dt-img">
                        <div class="detpricetag">
                            <div class="inner"><?php echo $uruncek['urun_fiyat'] ?> TL</div>
                        </div>
                        <a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon">
                            <img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive">
                        </a>
                    </div>
                    <?php
                    $urunfotosor = $db->prepare("SELECT * FROM urunfoto WHERE urun_id = :urun_id ORDER BY urunfoto_sira ASC LIMIT 1,3");
                    $urunfotosor->execute(array(
                        'urun_id' => $urun_id
                    ));

                    while ($urunfotocek = $urunfotosor->fetch(PDO::FETCH_ASSOC)) { ?>
                        <div class="thumb-img">
                            <a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon">
                                <img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                    <?php } ?>
                </div>
                <div class="col-md-6 det-desc">
                    <div class="productdata">
                        <div class="infospan">Ürün Kodu <span><?php echo $uruncek['urun_id']; ?></span></div>
                        <div class="infospan">Ürün Fiyat <span><?php echo $uruncek['urun_fiyat']; ?></span></div>
                        <div class="clearfix"></div>
                        <hr>
                        <form action="nedmin/netting/islem.php" method="POST">
                            <div class="form-group">
                                <label for="qty" class="col-sm-2 control-label">Adet</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" value="1" name="urun_adet">
                                </div>
                                <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">
                                <input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">
                                <div class="col-sm-4">
                                    <?php if (isset($_SESSION['userkullanici_mail'])) { ?>
                                        <button type="submit" name="sepetekle" class="btn btn-default btn-red btn-sm"><span class="addchart">Sepete Ekle</span></button>
                                    <?php } else { ?>
                                        <button type="submit" name="sepetekle" disabled class="btn btn-default btn-red btn-sm"><span class="addchart">Giriş Yapın</span></button>
                                    <?php } ?>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                        <div class="sharing">
                            <div class="share-bt">
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_counter addthis_pill_style"></a>
                                </div>
                                <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f0d0827271d1c3b"></script>
                                <div class="clearfix"></div>
                            </div>
                            <div class="avatock"><span>
                                <?php 
                                if ($uruncek['urun_stok'] >= 1) {
                                    echo "Stok Adeti : " . $uruncek['urun_stok'];
                                } else {
                                    echo "Ürün Kalmadı";
                                } 
                                ?>
                            </span></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-review">
                <ul id="myTab" class="nav nav-tabs shop-tab">
                    <li class="active"><a href="#desc" data-toggle="tab">Açıklama</a></li>
                    <li><a href="#rev" data-toggle="tab">Yorumlar (<?php 
                        $yorumSayisi = $db->prepare("SELECT COUNT(*) FROM yorumlar WHERE urun_id = :urun_id AND yorum_onay = 1");
                        $yorumSayisi->execute(array('urun_id' => $urun_id));
                        echo $yorumSayisi->fetchColumn();
                    ?>)</a></li>
                    <li><a href="#video" data-toggle="tab">Ürün Video</a></li>
                </ul>
                <div id="myTabContent" class="tab-content shop-tab-ct">
                    <div class="tab-pane fade active in" id="desc">
                        <p><?php echo $uruncek['urun_detay'] ?></p>
                    </div>
                    <div class="tab-pane fade" id="rev">
                        <?php
                        $yorumsor = $db->prepare("SELECT * FROM yorumlar WHERE urun_id = :urun_id AND yorum_onay = 1");
                        $yorumsor->execute(array('urun_id' => $urun_id));

                        while ($yorumcek = $yorumsor->fetch(PDO::FETCH_ASSOC)) {
                            $ykullanici_id = $yorumcek['kullanici_id'];
                            $ykullanicisor = $db->prepare("SELECT * FROM kullanici WHERE kullanici_id = :id");
                            $ykullanicisor->execute(array('id' => $ykullanici_id));
                            $ykullanicicek = $ykullanicisor->fetch(PDO::FETCH_ASSOC);
                        ?>
                            <p class="dash">
                                <span><?php echo $ykullanicicek['kullanici_adsoyad'] ?></span> (<?php echo $yorumcek['yorum_zaman'] ?>)<br><br>
                                <?php echo $yorumcek['yorum_detay'] ?>
                            </p>
                        <?php } ?>
                        <h4>Yorum Yazın</h4>
                        <?php if (isset($_SESSION['userkullanici_mail'])) { ?>
                            <form action="nedmin/netting/islem.php" method="POST" role="form">
                                <div class="form-group">
                                    <textarea name="yorum_detay" class="form-control" placeholder="Lütfen yorumunuzu buraya yazınız..." id="text"></textarea>
                                </div>
                                <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">
                                <input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">
                                <input type="hidden" name="gelen_url" value="<?php echo "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>">
                                <button type="submit" name="yorumkaydet" class="btn btn-default btn-red btn-sm">Yorumu Gönder</button>
                            </form>
                        <?php } else { ?>
                            Yorum yazabilmek için <a style="color:red" href="register">kayıt</a> olmalı yada üyemizseniz giriş yapmalısınız...
                        <?php } ?>
                    </div>
                    <div class="tab-pane fade" id="video">
                        <p>
                            <?php 
                            if (strlen($uruncek['urun_video']) > 0) { ?>
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $uruncek['urun_video'] ?>" frameborder="0" allowfullscreen></iframe>
                            <?php } else {
                                echo "Bu ürüne video eklenmemiştir";
                            }
                            ?>
                        </p>
                    </div>
                </div>
            </div>
            <div id="title-bg">
                <div class="title">Benzer Ürünler</div>
            </div>
            <div class="row prdct"><!--Products-->
                <?php 
                $kategori_id = $uruncek['kategori_id'];
                $urunaltsor = $db->prepare("SELECT * FROM urun WHERE kategori_id = :kategori_id ORDER BY RAND() LIMIT 3");
                $urunaltsor->execute(array('kategori_id' => $kategori_id));

                while ($urunaltcek = $urunaltsor->fetch(PDO::FETCH_ASSOC)) { ?>
                    <div class="col-md-4">
                        <div class="productwrap">
                            <div class="pr-img">
                                <div class="hot"></div>
                                <a href="urun-<?=seo($urunaltcek["urun_ad"]).'-'.$urunaltcek["urun_id"]?>">
                                    <img src="images/sample-3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="pricetag on-sale">
                                    <div class="inner on-sale">
                                        <span class="onsale">
                                            <span class="oldprice"><?php echo $urunaltcek['urun_fiyat'] * 1.50 ?> TL</span>
                                            <?php echo $urunaltcek['urun_fiyat'] ?> TL
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <span class="smalltitle"><a href="product.htm"><?php echo $urunaltcek['urun_ad'] ?></a></span>
                            <span class="smalldesc">Ürün Kodu.: <?php echo $urunaltcek['urun_id'] ?></span>
                        </div>
                    </div>
                <?php } ?>
            </div><!--Products-->
            <div class="spacer"></div>
        </div><!--Main content-->
        <?php include 'sidebar.php' ?>
    </div>
</div>
<?php include 'footer.php' ?>
