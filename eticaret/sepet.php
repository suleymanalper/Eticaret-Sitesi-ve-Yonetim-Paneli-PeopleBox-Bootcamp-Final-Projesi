﻿<?php include 'header.php' ?>

<div class="container">

	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			
		</div>
	</div>
	<div class="title-bg">
		<div class="title">Alışveriş Sepetim</div>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered chart">
			<thead>
				<tr>
					<th>Sil</th>
					<th>Ürün Resim</th>
					<th>Ürün ad</th>
					<th>Ürün Kodu</th>
					<th>Adet</th>
					<th>Toplam Fiyat</th>
				</tr>
			</thead>
			<tbody>

				<?php 
				$kullanici_id = $kullanicicek['kullanici_id'];
				$sepetsor = $db->prepare("SELECT * FROM sepet WHERE kullanici_id=:id");
				$sepetsor->execute(array(
					'id' => $kullanici_id
				));

				$toplam_fiyat = 0; // Toplam fiyatı başlat

				while ($sepetcek = $sepetsor->fetch(PDO::FETCH_ASSOC)) {

					$urun_id = $sepetcek['urun_id'];
					$urunsor = $db->prepare("SELECT * FROM urun WHERE urun_id=:urun_id");
					$urunsor->execute(array(
						'urun_id' => $urun_id
					));

					$uruncek = $urunsor->fetch(PDO::FETCH_ASSOC);

					$urun_fiyat = $uruncek['urun_fiyat'] * $sepetcek['urun_adet'];
					$toplam_fiyat += $urun_fiyat; // Toplam fiyata ekle

					?>

					<tr>
						<td><form><input type="checkbox"></form></td>
						<td><img src="images/demo-img.jpg" width="100" alt=""></td>
						<td><?php echo $uruncek['urun_ad'] ?></td>
						<td><?php echo $uruncek['urun_id'] ?></td>
						<td><form><input type="text" class="form-control quantity" value="<?php echo $sepetcek['urun_adet'] ?>"></form></td>
						<td><?php echo $urun_fiyat ?></td>
					</tr>
					<?php } ?>

				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-md-6">

			</div>
			<div class="col-md-3 col-md-offset-3">
				<div class="subtotal-wrap">

					<div class="total">Toplam Fiyat : <span class="bigprice"><?php echo $toplam_fiyat ?> TL</span></div>
					<div class="clearfix"></div>
					<a href="odeme" class="btn btn-default btn-yellow">Ödeme Sayfası</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="spacer"></div>
	</div>

	<?php include 'footer.php' ?>
