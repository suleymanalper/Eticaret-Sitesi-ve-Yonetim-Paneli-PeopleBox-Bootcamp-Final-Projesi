<div class="main-slide">
	<div id="sync1" class="owl-carousel">


		<?php 

		$slidersor=$db->prepare("SELECT * FROM slider");
		$slidersor->execute();

		while($slidercek=$slidersor->fetch(PDO::FETCH_ASSOC)) {

		 ?>


		<div class="item">
			<div class="slide-desc">
				<div class="inner">
					<h1><?php echo $slidercek['slider_ad'] ?></h1>
					<p>
						Yaz indirimleri başladı Sezon sonuna kadar indirimlerimiz devam edecektir
					</p>
				</div>
				<div class="inner">
					<div class="pro-pricetag big-deal">
						<div class="inner">
							<span class="oldprice">₺200</span>
							<span>₺100</span>
							<span class="ondeal">En iyi Fiyat</span>
						</div>
					</div>
				</div>
			</div>
			<div class="slide-type-1">
				<a href="<?php echo $slidercek['slider_link'] ?>"><img src="<?php echo $slidercek['slider_resimyol'] ?>" alt="" class="img-responsive"></a>
			</div>
		</div>

		<?php } ?>




	</div>
</div>

	