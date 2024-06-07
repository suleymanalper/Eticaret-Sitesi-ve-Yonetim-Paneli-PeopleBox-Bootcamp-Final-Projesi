-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Haz 2024, 02:14:55
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) NOT NULL,
  `ayar_url` varchar(50) NOT NULL,
  `ayar_title` varchar(250) NOT NULL,
  `ayar_description` varchar(250) NOT NULL,
  `ayar_keywords` varchar(50) NOT NULL,
  `ayar_author` varchar(50) NOT NULL,
  `ayar_tel` varchar(50) NOT NULL,
  `ayar_gsm` varchar(50) NOT NULL,
  `ayar_faks` varchar(50) NOT NULL,
  `ayar_mail` varchar(50) NOT NULL,
  `ayar_ilce` varchar(50) NOT NULL,
  `ayar_il` varchar(50) NOT NULL,
  `ayar_adres` varchar(250) NOT NULL,
  `ayar_mesai` varchar(250) NOT NULL,
  `ayar_maps` varchar(250) NOT NULL,
  `ayar_analystic` varchar(50) NOT NULL,
  `ayar_zopim` varchar(250) NOT NULL,
  `ayar_facebook` varchar(50) NOT NULL,
  `ayar_twitter` varchar(50) NOT NULL,
  `ayar_google` varchar(50) NOT NULL,
  `ayar_youtube` varchar(50) NOT NULL,
  `ayar_smtphost` varchar(50) NOT NULL,
  `ayar_smtpuser` varchar(50) NOT NULL,
  `ayar_smtppassword` varchar(50) NOT NULL,
  `ayar_smtpport` varchar(50) NOT NULL,
  `ayar_bakim` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/30876salper-logo.png', '', 'Salper E-Ticaret Scripti', 'Salper E-Ticaret Scripti yazım eğitimi projesi', 'eticaret, shopping, php, learning, student php', 'Salper Eticaret', '0850 840 80 76', '0850 840 80 76', '0850 840 80 76', 'info@suleymanalper.com.tr', 'Eyüpsultan', 'İstanbul', 'Düğmeciler Mah.', '7x24 açık eticaret scripti', 'ayar_maps_api', 'ayar_analystic', 'ayar_zopim', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.alanadiniz.com', 'ayar_smtpuser', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) NOT NULL,
  `banka_iban` varchar(50) NOT NULL,
  `banka_hesapadsoyad` varchar(50) NOT NULL,
  `banka_durum` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR9876546219841651852', 'Süleyman Alper', '1'),
(2, 'Yapı Kredi', 'TR9845164895619845198', 'Süleyman Alper', '1'),
(3, 'Vakıfbank', 'TR5675612985619695625', 'Süleyman Alper', '1'),
(5, 'Ziraat Bankası', 'TR1895616506629654193', 'Süleyman Alper', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) NOT NULL,
  `hakkimizda_icerik` text NOT NULL,
  `hakkimizda_video` varchar(50) NOT NULL,
  `hakkimizda_vizyon` varchar(500) NOT NULL,
  `hakkimizda_misyon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Salper Ticaret Hakkımızda', 'Salper E-Ticaret, müşterilerine benzersiz bir alışveriş deneyimi sunan öncü bir online mağazadır. 2020 yılında kurulmuş olan şirketimiz, kaliteli ürünleri ve olağanüstü müşteri hizmetleriyle tanınmaktadır. Her bir müşterimizin memnuniyetini sağlamak için çaba gösteriyoruz ve bu yolda sürekli olarak kendimizi geliştiriyoruz.  E-ticaret alanında yenilikçi çözümler sunarak, müşterilerimizin hayatını kolaylaştırmayı hedefliyoruz. Geniş ürün yelpazemiz, rekabetçi fiyatlarımız ve hızlı teslimat seçeneklerimizle, alışverişin keyifli ve sorunsuz olmasını sağlıyoruz. Salper E-Ticaret olarak, her zaman daha iyisini yapmak için çalışıyoruz.  Müşteri hizmetlerinde mükemmelliği hedefleyen ekibimiz, sizlere en iyi alışveriş deneyimini sunmak için burada. Sorularınıza hızlı ve etkili çözümler üretmek, ihtiyaçlarınıza en uygun ürünleri sunmak ve alışveriş sürecinizin her adımında yanınızda olmak bizim için bir onurdur.', 'vFsVEn4ovNM', 'Vizyonumuz, müşterilerimize güvenilir, hızlı ve kullanıcı dostu bir alışveriş platformu sunmaktır. Teknolojiyi yakından takip ediyor ve sürekli olarak kendimizi geliştiriyoruz.', 'Misyonumuz, müşterilerimizin ihtiyaçlarını en iyi şekilde karşılamak ve onlara keyifli bir alışveriş deneyimi yaşatmaktır. Ürünlerimizi titizlikle seçiyor ve müşteri memnuniyetini her zaman ön planda tutuyoruz.\n\n\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) NOT NULL,
  `kategori_sira` int(11) NOT NULL,
  `kategori_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(2, 'Gömlekler', 0, 'gomlekler', 1, '1'),
(3, 'Tişortler', 0, 'tisortler', 2, '1'),
(4, 'Pantolon', 0, 'pantolon', 3, '1'),
(5, 'Blucin', 0, 'blucin', 4, '1'),
(6, 'Bluz', 0, 'bluz', 5, '1'),
(7, 'Şapkalar', 0, 'sapkalar', 6, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT current_timestamp(),
  `kullanici_resim` varchar(250) NOT NULL,
  `kullanici_tc` varchar(50) NOT NULL,
  `kullanici_ad` varchar(50) NOT NULL,
  `kullanici_mail` varchar(100) NOT NULL,
  `kullanici_gsm` varchar(50) NOT NULL,
  `kullanici_password` varchar(50) NOT NULL,
  `kullanici_adsoyad` varchar(50) NOT NULL,
  `kullanici_adres` varchar(250) NOT NULL,
  `kullanici_il` varchar(100) NOT NULL,
  `kullanici_ilce` varchar(100) NOT NULL,
  `kullanici_unvan` varchar(100) NOT NULL,
  `kullanici_yetki` varchar(50) NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(4, '2024-06-04 14:58:20', '', '', '', 'info@deneme.com.tr', '', 'e10adc3949ba59abbe56e057f20f883e', 'deneme yapılıyor', '', 'İstanbul', 'Eyüp', '', '1', 1),
(5, '2024-06-04 14:59:00', '', '', '', 'info@suleymanalper.com.tr', '', 'e10adc3949ba59abbe56e057f20f883e', 'Süleyman Alper', '', '', '', '', '5', 1),
(6, '2024-06-06 23:40:54', '', '', '', 'info@ahmetcakir.com.tr', '', 'e10adc3949ba59abbe56e057f20f883e', 'Ahmet Çakır', '', 'İstanbul ', 'Şişli', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) NOT NULL,
  `menu_ad` varchar(100) NOT NULL,
  `menu_detay` text NOT NULL,
  `menu_url` varchar(250) NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') NOT NULL,
  `menu_seourl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '<p>Merhaba! Biz&nbsp;Salper E-Ticaret&nbsp;ekibi olarak, m&uuml;şterilerimize en iyi alışveriş deneyimini sunmayı ama&ccedil;lıyoruz. Siz değerli m&uuml;şterilerimiz i&ccedil;in geniş bir &uuml;r&uuml;n yelpazesi sunuyoruz ve her zaman kaliteyi &ouml;n planda tutuyoruz.</p>\r\n\r\n<p>Vizyonumuz</p>\r\n\r\n<p>Vizyonumuz, m&uuml;şterilerimize g&uuml;venilir, hızlı ve kullanıcı dostu bir alışveriş platformu sunmaktır. Teknolojiyi yakından takip ediyor ve s&uuml;rekli olarak kendimizi geliştiriyoruz.</p>\r\n\r\n<p>Misyonumuz</p>\r\n\r\n<p>Misyonumuz, m&uuml;şterilerimizin ihtiya&ccedil;larını en iyi şekilde karşılamak ve onlara keyifli bir alışveriş deneyimi yaşatmaktır. &Uuml;r&uuml;nlerimizi titizlikle se&ccedil;iyor ve m&uuml;şteri memnuniyetini her zaman &ouml;n planda tutuyoruz.</p>\r\n\r\n<p>Ekibimiz</p>\r\n\r\n<p>Salper E-Ticaret&nbsp;ekibi, alanında uzman profesyonellerden oluşuyor. M&uuml;şteri hizmetleri, lojistik, satın alma ve teknik destek gibi farklı alanlarda &ccedil;alışan ekip &uuml;yelerimiz, sizin i&ccedil;in en iyisini yapmak i&ccedil;in burada.</p>\r\n\r\n<p>İletişim</p>\r\n\r\n<p>Sorularınız, &ouml;nerileriniz veya herhangi bir konuda iletişime ge&ccedil;mek isterseniz, l&uuml;tfen bizimle iletişime ge&ccedil;mekten &ccedil;ekinmeyin. Size yardımcı olmaktan mutluluk duyarız!</p>\r\n', 'hakkimizda', 1, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', 'iletisim.php', 25, '1', 'iletisim'),
(3, '0', 'Kategoriler', '', 'kategoriler', 3, '1', 'kategoriler'),
(5, '', 'Gizlilik Koşulları', '<p>Salper E-Ticaret&nbsp;olarak, m&uuml;şterilerimizin gizliliğine b&uuml;y&uuml;k &ouml;nem veriyoruz. Bu politika, web sitemizi kullanımınız sırasında topladığımız bilgiler ve bu bilgilerin nasıl kullanıldığı hakkında sizleri bilgilendirmek amacıyla hazırlanmıştır.</p>\r\n\r\n<p><strong>Bilgi Toplama</strong></p>\r\n\r\n<p>Web sitemizi ziyaret ettiğinizde, alışveriş deneyiminizi kişiselleştirmek ve iyileştirmek i&ccedil;in bazı kişisel bilgilerinizi toplamaktayız. Bu bilgiler; adınız, adresiniz, e-posta adresiniz ve telefon numaranız gibi iletişim bilgilerinizi i&ccedil;erebilir.</p>\r\n\r\n<p><strong>Bilgi Kullanımı</strong></p>\r\n\r\n<p>Topladığımız bilgiler, siparişlerinizi işleme koymak, &uuml;r&uuml;n ve hizmetlerimizi geliştirmek, m&uuml;şteri hizmetlerini sağlamak ve promosyonlar, indirimler veya &ouml;nemli duyurular hakkında sizi bilgilendirmek i&ccedil;in kullanılmaktadır.</p>\r\n\r\n<p><strong>Bilgi Paylaşımı</strong></p>\r\n\r\n<p>Kişisel bilgileriniz, yasaların gerektirdiği durumlar dışında, &uuml;&ccedil;&uuml;nc&uuml; taraflarla paylaşılmamaktadır. İş ortaklarımızla ve hizmet sağlayıcılarımızla yalnızca sipariş işlemlerinizi tamamlamak ve size daha iyi hizmet sunmak amacıyla gerekli olan bilgiler paylaşılmaktadır.</p>\r\n\r\n<p><strong>G&uuml;venlik</strong></p>\r\n\r\n<p>M&uuml;şterilerimizin kişisel bilgilerinin g&uuml;venliğini sağlamak i&ccedil;in en g&uuml;ncel g&uuml;venlik &ouml;nlemlerini kullanmaktayız. Web sitemiz SSL sertifikası ile korunmakta ve t&uuml;m veri aktarımları şifrelenmektedir.</p>\r\n\r\n<p><strong>&Ccedil;erezler (Cookies)</strong></p>\r\n\r\n<p>Web sitemiz, kullanıcı deneyimini iyileştirmek i&ccedil;in &ccedil;erezler kullanmaktadır. &Ccedil;erezler, web sitemizin daha verimli &ccedil;alışmasını sağlamak ve sizin tercihlerinizi hatırlamak i&ccedil;in kullanılır.</p>\r\n\r\n<p><strong>Değişiklikler</strong></p>\r\n\r\n<p>Gizlilik politikamızda yapılacak herhangi bir değişiklik, bu sayfada g&uuml;ncellenecek ve m&uuml;şterilerimize duyurulacaktır.</p>\r\n\r\n<p><strong>İletişim</strong></p>\r\n\r\n<p>Gizlilik politikamız hakkında herhangi bir sorunuz veya endişeniz varsa, l&uuml;tfen bizimle iletişime ge&ccedil;in.</p>\r\n', 'sayfa-gizlilik-kosullari', 4, '1', 'gizlilik-kosullari'),
(6, '', 'Mesafeli Satış Sözleşmesi', '<p>Mesafeli s&ouml;zleşme nedir?<br />\r\nSatıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da dahil olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmelerdir.<br />\r\n<br />\r\nMesafeli s&ouml;zleşmeler 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci maddesi ile bu maddeye dayanılarak hazırlanan Mesafeli S&ouml;zleşmeler Y&ouml;netmeliğinde d&uuml;zenlenmektedir.<br />\r\n&nbsp;<br />\r\nSosyal medya ve kısa mesaj gibi ortamlarda yapılan alışverişlerde meydana gelen uyuşmazlıklar mesafeli s&ouml;zleşme kapsamında değerlendirilebilir mi?<br />\r\nBir s&ouml;zleşmenin mesafeli s&ouml;zleşme olarak kabul edilebilmesi i&ccedil;in;</p>\r\n\r\n<p>Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığının bulunmaması,</p>\r\n\r\n<p>Uzaktan pazarlamaya y&ouml;nelik olarak oluşturulmuş bir sistemin kullanılması,</p>\r\n\r\n<p>S&ouml;zleşmenin kurulduğu ana kadar &ndash;s&ouml;zleşmenin kurulduğu an da d&acirc;hil olmak &uuml;zere- uzaktan iletişim ara&ccedil;larının kullanılması</p>\r\n\r\n<p>gibi &uuml;&ccedil; koşulun bir arada bulunması gerekir.</p>\r\n\r\n<p>Bu kapsamda, sosyal medya ve kısa mesaj gibi ortamlarda ger&ccedil;ekleştirilen alışverişler, s&ouml;z konusu ortamların bir mal ya da hizmetin satışına y&ouml;nelik olarak oluşturulan bir sistemin herhangi bir basamağına aracılık etmesi ve diğer iki koşulun da bulunması koşuluyla mesafeli s&ouml;zleşme kapsamında değerlendirilebilmektedir.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmeler kapsamında aracı hizmet sağlayıcı kimdir ve platform ne anlama gelmektedir?<br />\r\nAracı hizmet sağlayıcı, oluşturduğu sistem ile uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık eden ger&ccedil;ek veya t&uuml;zel kişidir.<br />\r\n<br />\r\nPlatform ise kamu hizmetlerinin tek noktadan sunulduğu ortak kamu elektronik platformu hari&ccedil; olmak &uuml;zere, aracı hizmet sağlayıcının mesafeli s&ouml;zleşme kurulmasına aracılık etmek &uuml;zere oluşturduğu sistemi ifade etmektedir.<br />\r\n&nbsp;<br />\r\nMesafeli y&ouml;ntemle alışveriş yaparken s&ouml;zleşme &ouml;ncesi bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml;n kapsamı nedir?<br />\r\nT&uuml;ketici, mesafeli s&ouml;zleşmeye dair bazı hususlarda s&ouml;zleşme kurulmadan (herhangi bir &ouml;deme yapmadan) &ouml;nce yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır. Bu husus Mesafeli S&ouml;zleşmeler Y&ouml;netmeliğinde &ldquo;&ouml;n bilgilendirme&rdquo; başlıklı 5 inci maddesinde d&uuml;zenlenmiştir.<br />\r\n<br />\r\nBuna g&ouml;re t&uuml;ketici;</p>\r\n\r\n<p>S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>Satıcı, sağlayıcı veya aracı hizmet sağlayıcının adı, unvanı, a&ccedil;ık adresi, telefon numarası,</p>\r\n\r\n<p>Mal veya hizmetin t&uuml;m vergiler d&acirc;hil toplam fiyatı,&nbsp;</p>\r\n\r\n<p>Varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar&nbsp;</p>\r\n\r\n<p>Cayma hakkının kullanımı,</p>\r\n\r\n<p>Hak arama yollarının kullanımı,</p>\r\n\r\n<p>gibi konularda &ouml;nceden bilgilendirilmek zorundadır. &nbsp;</p>\r\n\r\n<p>Satıcı, &ouml;n bilgilendirmeye ilişkin ayrıntıları Y&ouml;netmelikte belirtilen t&uuml;m hususlarda, t&uuml;keticiyi, kullanılan (telefon, internet gibi) uzaktan iletişim aracına uygun olarak anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde yazılı olarak veya kısa mesaj, e-posta, internet, CD, DVD, hafıza kartı gibi ara&ccedil; veya ortamları ifade eden kalıcı veri saklayıcısı ile bilgilendirmek zorundadır.&nbsp;<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde &ouml;n bilgilendirmenin yapılması konusunda aracı hizmet sağlayıcının g&ouml;rev ve sorumlulukları nelerdir?<br />\r\nAracı hizmet sağlayıcı, &ouml;n bilgilendirmenin yapılması, teyidi ve &ouml;n bilgilendirmenin yapıldığının ispatından satıcı veya sağlayıcı ile birlikte m&uuml;teselsilen sorumludur.<br />\r\n<br />\r\nVeri girişinin aracı hizmet sağlayıcı tarafından yapıldığı durumlarda, Mesafeli S&ouml;zleşmeler Y&ouml;netmeliğinin 5 inci maddesinde belirlenen &ouml;n bilgilendirmede bulunması zorunlu hususlardaki eksikliklerden aracı hizmet sağlayıcı sorumludur. Ayrıca platform &uuml;zerinden yapılan reklam ve tanıtımlarda taahh&uuml;t edilen bilgiler ile &ouml;n bilgilendirmede bulunması zorunlu hususların uyumlu olmasından ve ispatından aracı hizmet sağlayıcı sorumludur.<br />\r\n&nbsp;<br />\r\nSatıcının &ouml;n bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; gereği gibi yerine getirmemesinin sonu&ccedil;ları nelerdir?<br />\r\nMesafeli s&ouml;zleşmelerde &ouml;n bilgilendirmenin gereği gibi yapılmamasının &ouml;nemli sonu&ccedil;ları vardır. &Ouml;rneğin, satıcı ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemişse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir. Yine satıcı, t&uuml;keticiye cayma hakkı konusunda gerektiği şekilde &ouml;n bilgilendirme yapmamışsa, t&uuml;ketici cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;re ile de bağlı değildir. Bu s&uuml;re, cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.<br />\r\n<br />\r\nDiğer taraftan, satıcı, t&uuml;keticinin siparişini onaylamasından hemen &ouml;nce, s&ouml;z konusu siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir. Satıcı, t&uuml;keticinin &ouml;n bilgileri edindiğini kullanılan (telefon, internet gibi) uzaktan iletişim aracına uygun olarak teyit etmek zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılacaktır.<br />\r\n&nbsp;<br />\r\nİnternet veya telefon aracılığıyla alışveriş yapılırken nelere dikkat edilmelidir?</p>\r\n\r\n<p>İnternet veya telefon aracılığıyla alışveriş yapılırken;</p>\r\n\r\n<p>Alışveriş yapılması d&uuml;ş&uuml;n&uuml;len internet sitesi hakkında &ouml;n araştırma yapılması,</p>\r\n\r\n<p>İnternet sitesi &uuml;zerinden satıcının &ldquo;ticari unvanı&rdquo;, &ldquo;a&ccedil;ık adres&rdquo; ve &ldquo;iletişim bilgileri&rdquo; gibi bilgilerinin kontrol edilmesi,</p>\r\n\r\n<p>Alışveriş yapılmadan &ouml;nce fiyat araştırması yapılarak &uuml;r&uuml;n&uuml;n yaklaşık fiyatı ile ilgili bilgi edinilmesi,</p>\r\n\r\n<p>&Uuml;r&uuml;ne ait a&ccedil;ıklamanın ya da fiyatın ger&ccedil;ek&ccedil;i bulunmadığı durumlarda alışverişin tercih edilmemesi</p>\r\n\r\n<p>gibi konulara dikkat edilmesi g&uuml;venilir satıcılara ulaşılmasında ve mağduriyet yaşanması durumunda hak arama yollarına başvurmada kolaylık sağlayacaktır.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşme kapsamında satın alınan &uuml;r&uuml;n ne kadar s&uuml;rede teslim edilmelidir?<br />\r\nİnternet veya telefon &uuml;zerinden yapılan alışverişlerde&nbsp;taahh&uuml;t edilen bir s&uuml;re yoksa en ge&ccedil; otuz g&uuml;n i&ccedil;erisinde satıcı malı g&ouml;ndermek zorundadır. Eğer bu s&uuml;re i&ccedil;erisinde mal g&ouml;nderilmez ise, t&uuml;ketici s&ouml;zleşmeyi feshederek on d&ouml;rt g&uuml;n i&ccedil;erisinde yasal faiziyle birlikte t&uuml;m &ouml;demelerini geri alma hakkına sahiptir.<br />\r\n<br />\r\nSipariş konusu mal ya da hizmet edimin yerine getirilmesinin &ldquo;imkansızlaştığı&rdquo; hallerde satıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile durumu bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur.<br />\r\nMalın stokta bulunmaması imkansızlaşma olarak kabul edilmemektedir. T&uuml;keticinin isteği veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmelerde ise bu s&uuml;re daha uzun kararlaştırılabilir.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde malın t&uuml;keticiye teslimine kadar oluşan kayıp ve hasardan kim sorumludur?<br />\r\nSatıcı, malın t&uuml;keticiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur. Eğer t&uuml;ketici malın satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile g&ouml;nderilmesini talep etmişse malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşme y&ouml;ntemiyle yapılan alışverişlerde cayma hakkı hangi s&uuml;rede ve nasıl kullanılmalıdır?&nbsp;Telefon ile cayma hakkı kullanılabilir mi?<br />\r\nT&uuml;ketici mesafeli s&ouml;zleşmede on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &uuml;stlenmeksizin cayma hakkına sahiptir. Bu s&uuml;re eğer &ldquo;mal&rdquo; satın alınacak ise malın tesliminden itibaren; &ldquo;hizmet&rdquo; satın alınacak ise hizmet s&ouml;zleşmesinin kurulduğu andan itibaren başlar. Bunun yanı sıra s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de t&uuml;ketici her zaman cayma hakkını kullanabilir.<br />\r\n<br />\r\nCayma hakkı yazılı olarak veya kısa mesaj, e-posta, internet, CD, DVD, hafıza kartı gibi ara&ccedil; veya ortamları ifade eden kalıcı veri saklayıcısı aracılığıyla kullanılabilir.<br />\r\nİspat a&ccedil;ısından sıkıntı yaratabileceğinden ve mevzuatta da yer almadığından mesafeli s&ouml;zleşmelerde telefon ile cayma hakkı kullanılamamaktadır.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde, &uuml;r&uuml;n&uuml;n fiyatı dışındaki ilave &ouml;demeler nasıl d&uuml;zenlenmiştir?<br />\r\nS&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında &ouml;rneğin satın alınan malın kurulumu gibi herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının alınması zorunludur.<br />\r\n<br />\r\nŞayet t&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin &ldquo;kendiliğinden se&ccedil;ili olarak sunulmuş olmasından&rdquo; dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise satıcı veya sağlayıcı ile platform &uuml;zerinden kurulan mesafeli s&ouml;zleşmelerde satıcı veya sağlayıcı adına bedel tahsil etmesi halinde aracı hizmet sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır. &Ouml;rneğin u&ccedil;ak bileti satın alırken yiyecek veya koltuk se&ccedil;imi gibi hizmetler i&ccedil;in t&uuml;keticinin biletin &uuml;cretine ilave olarak bir &ouml;demede bulunması.<br />\r\n&nbsp;<br />\r\nCayma hakkına başvurulurken Mesafeli S&ouml;zleşmeler Y&ouml;netmeliğinin ekinde yer alan &ldquo;&Ouml;rnek Cayma Formu&rdquo; nun kullanılması zorunlu mudur?<br />\r\n&ldquo;&Ouml;rnek Cayma Formu&rdquo;nun kullanımı mecburi olmayıp bu form bazı &ouml;zel durumlarda t&uuml;keticilere kolaylık sağlanması amacıyla Y&ouml;netmeliğe eklenmiştir. Cayma hakkının kullanılmasında t&uuml;ketici, formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir.<br />\r\n<br />\r\nSesli iletişim yoluyla telefon aracılığıyla yapılan satışlarda, satıcı veya sağlayıcı bu formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar g&ouml;ndermek zorundadır. Ancak, bu durum yine formun kullanılması zorunluluğu doğurmaz.<br />\r\n&nbsp;<br />\r\nCayma hakkının kullanımında aracı hizmet sağlayıcıların sorumlulukları nelerdir?<br />\r\nAracı hizmet sağlayıcılar, t&uuml;keticilerin platform &uuml;zerinden kurulan mesafeli s&ouml;zleşmelere ilişkin cayma hakkı bildirimlerini iletebilmelerine ve takip edebilmelerine elverişli bir sistemi kurmak, bu sistemi kesintisiz olarak a&ccedil;ık tutmak ve sistem aracılığıyla kendilerine ulaşan bildirimleri satıcı veya sağlayıcıya derhal bildirmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde cayma hakkı kullanıldıktan ne kadar s&uuml;re sonra bedel iadesi yapılacaktır? Bu konuda t&uuml;keticinin hakları ve y&uuml;k&uuml;ml&uuml;l&uuml;kleri nelerdir?<br />\r\nMesafeli y&ouml;ntemle yapılan alışverişlerde, satıcı, cayma bildiriminin kendisine ulaşmasından itibaren on d&ouml;rt g&uuml;n i&ccedil;erisinde t&uuml;keticinin &ouml;demiş olduğu bedeli iade etmek zorundadır. Ayrıca, t&uuml;ketici cayma bildirimini y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;erisinde satın aldığı malı iade etmek zorundadır.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde cayma hakkının kullanılması durumunda iadeye ilişkin kargo &uuml;creti kim tarafından karşılanır?<br />\r\nSatıcı eğer &ouml;n bilgilendirmede cayma durumunda malın iadesi i&ccedil;in anlaşmalı olduğu kargo şirketini belirtmişse, bu kargo şirketi aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz.<br />\r\n<br />\r\nSatıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen kargo şirketinin, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda ise satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.<br />\r\n&nbsp;<br />\r\nKredi kartı kullanılarak internet &uuml;zerinden satın alınan &uuml;r&uuml;ne ilişkin cayma hakkı kullanıldığında bedel iadesi nasıl yapılmalıdır?<br />\r\nSatıcı cayma hakkı kullanılan durumlarda t&uuml;m geri &ouml;demeleri, t&uuml;keticinin &ldquo;satın alırken kullandığı &ouml;deme aracına uygun&rdquo; bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.<br />\r\n&nbsp;<br />\r\nMesafeli s&ouml;zleşmelerde cayma hakkı hangi durumlarda kullanılamaz?<br />\r\nCayma hakkı kullanılamayan başlıca mal ve hizmet &ouml;rnekleri aşağıda sayılmıştır:</p>\r\n\r\n<p>Fiyatı piyasadaki dalgalanmalara bağlı olarak değişen ve satıcının kontrol&uuml;nde olmayan altın, m&uuml;cevherat gibi mallar,</p>\r\n\r\n<p>&Ouml;zel istek ve ihtiya&ccedil;lar doğrultusunda hazırlanan mallar,</p>\r\n\r\n<p>&Ccedil;i&ccedil;ek, yaş pasta gibi &ccedil;abuk bozulabilen veya son kullanma tarihi &ccedil;abuk ge&ccedil;ebilecek mallar,</p>\r\n\r\n<p>Ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması kaydıyla; i&ccedil; &ccedil;amaşırı, k&uuml;pe gibi iadesi sağlık ve hijyen a&ccedil;ısından uygun olmayanlar mallar,</p>\r\n\r\n<p>Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması kaydıyla; CD, DVD gibi dijital i&ccedil;erikli mallar ile toner, kartuş gibi bilgisayar sarf malzemeleri ve kitap</p>\r\n\r\n<p>Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınlar,</p>\r\n\r\n<p>Belirli bir tarihte veya d&ouml;nemde yapılması gereken, otel rezervasyonu gibi konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve nişan, d&uuml;ğ&uuml;n organizasyonu gibi eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler,</p>\r\n\r\n<p>Uzaktan eğitim gibi elektronik ortamda anında ifa edilen hizmetler,</p>\r\n\r\n<p>Bilgisayara veya telefona indirilen m&uuml;zik, film, programlar gibi tarafınıza anında teslim edilen gayri maddi mallara ilişkin s&ouml;zleşmeler,</p>\r\n\r\n<p>Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n', '', 20, '0', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(1, 0, 13, 1),
(2, 0, 13, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) NOT NULL,
  `siparis_banka` varchar(50) NOT NULL,
  `siparis_odeme` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(750007, '2024-06-06 21:08:06', NULL, 6, 240.00, 'Banka Havalesi', 'Vakıfbank', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(1, 750000, 14, 25.00, 1),
(2, 750001, 15, 100.00, 1),
(3, 750002, 15, 100.00, 1),
(4, 750003, 15, 100.00, 1),
(5, 750004, 15, 100.00, 1),
(6, 750004, 15, 100.00, 1),
(7, 750005, 15, 100.00, 1),
(8, 750005, 15, 100.00, 1),
(9, 750006, 15, 100.00, 1),
(10, 750006, 15, 100.00, 1),
(11, 750007, 22, 120.00, 1),
(12, 750007, 18, 120.00, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) NOT NULL,
  `slider_resimyol` varchar(250) NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) NOT NULL,
  `slider_durum` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(6, 'Nike Ayakkabı', 'dimg/slider/22835279402325121353slide-3.jpg', 3, '', '1'),
(7, 'Kırmızı Kışlık Ceket', 'dimg/slider/24082309593084327967slide-2.jpg', 2, '', '1'),
(8, 'Yeşil Kışlık Ceket', 'dimg/slider/27215305982666920364slide-1.jpg', 1, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `urun_ad` varchar(250) NOT NULL,
  `urun_seourl` varchar(250) NOT NULL,
  `urun_detay` text NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) NOT NULL,
  `urun_keyword` varchar(250) NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') NOT NULL DEFAULT '1',
  `urun_onecikar` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(15, 2, '2024-06-06 17:48:48', 'Keten beyaz gömlek', 'keten-beyaz-gomlek', '<p>%100 Pamuk Aksesuarlar &uuml;r&uuml;ne dahil değildir. E-TİCARET EXCLUSIVE &Uuml;R&Uuml;N Erkek modasının değişmez par&ccedil;aları olan g&ouml;mlekler Kiğılı&#39;nın eşsiz tasarımları ile hayat buluyor. Birbirinden şık modellerden oluşan g&ouml;mlek koleksiyonu, iş hayatınızdan &ouml;zel davetlere her ortamda şıklık sunan g&ouml;mlekler barındırıyor. Keten g&ouml;r&uuml;n&uuml;ml&uuml; tasarıma sahip g&ouml;mlekler, pamuklu kumaşı ile cilt dostu bir kullanım yaşatıyor. Relax fit kalıbı sayesinde hareket &ouml;zg&uuml;rl&uuml;ğ&uuml;n&uuml;z kısıtlanmadan şıklığınıza eşlik ediyor. Kol kısmındaki apolet detayı ile fonksiyonel bir kullanım sunan keten g&ouml;r&uuml;n&uuml;ml&uuml; g&ouml;mlekler, stilinizi fark yaratan bir şıklığa kavuşturuyor. Manken &Ouml;l&ccedil;&uuml;leri: 50/M Boy: 188 cm G&ouml;ğ&uuml;s: 104 cm Bel: 88 cm Basen: 99 cm</p>\r\n', 100.00, '', 'keten, gomlek', 100, '1', '0'),
(16, 2, '2024-06-06 20:46:33', 'Keten Yeşil Gömlek', 'keten-yesil-gomlek', '<p>Bir &uuml;r&uuml;n, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan &uuml;r&uuml;nlerin satıcıları &uuml;r&uuml;n i&ccedil;in belirledikleri fiyata, satıcı puanlarına, teslimat stat&uuml;lerine, &uuml;r&uuml;nlerdeki promosyonlara, kargonun bedava olup olmamasına ve &uuml;r&uuml;nlerin hızlı teslimat ile teslim edilip edilememesine, &uuml;r&uuml;nlerin stok ve kategorileri bilgilerine g&ouml;re sıralanmaktadır.</p>\r\n\r\n<p>Bu &uuml;r&uuml;nden en fazla&nbsp;10 adet sipariş verilebilir.&nbsp;10 adedin &uuml;zerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.&nbsp;Belirlenen bu limit kurumsal siparişlerde ge&ccedil;erli olmayıp, kurumsal siparişler i&ccedil;in farklı limitler belirlenebilmektedir.</p>\r\n', 100.00, '', 'Keten, gomlek', 100, '1', '0'),
(17, 3, '2024-06-06 20:52:41', 'Oversize Tişört', 'oversize-tisort', '<p>Bir &uuml;r&uuml;n, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan &uuml;r&uuml;nlerin satıcıları &uuml;r&uuml;n i&ccedil;in belirledikleri fiyata, satıcı puanlarına, teslimat stat&uuml;lerine, &uuml;r&uuml;nlerdeki promosyonlara, kargonun bedava olup olmamasına ve &uuml;r&uuml;nlerin hızlı teslimat ile teslim edilip edilememesine, &uuml;r&uuml;nlerin stok ve kategorileri bilgilerine g&ouml;re sıralanmaktadır.</p>\r\n\r\n<p>Bu &uuml;r&uuml;nden en fazla&nbsp;10 adet sipariş verilebilir.&nbsp;10 adedin &uuml;zerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.&nbsp;Belirlenen bu limit kurumsal siparişlerde ge&ccedil;erli olmayıp, kurumsal siparişler i&ccedil;in farklı limitler belirlenebilmektedir.</p>\r\n\r\n<p>Erkek Kahverengi Dreamer Baskılı Oversize Bisiklet Yaka Tshirt</p>\r\n', 75.00, '', 'Oversize, Tshirt', 100, '1', '0'),
(18, 3, '2024-06-06 20:55:11', 'Bisiklet Yaka Tişort', 'bisiklet-yaka-tisort', '<p>&nbsp;</p>\r\n\r\n<p>ANTONIO Erkek %100 Pamuk Kısa Kollu &Ouml;n&uuml; Baskılı Oversize Yeşil T-Shirt</p>\r\n\r\n<p>Bir &uuml;r&uuml;n, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan &uuml;r&uuml;nlerin satıcıları &uuml;r&uuml;n i&ccedil;in belirledikleri fiyata, satıcı puanlarına, teslimat stat&uuml;lerine, &uuml;r&uuml;nlerdeki promosyonlara, kargonun bedava olup olmamasına ve &uuml;r&uuml;nlerin hızlı teslimat ile teslim edilip edilememesine, &uuml;r&uuml;nlerin stok ve kategorileri bilgilerine g&ouml;re sıralanmaktadır.</p>\r\n\r\n<p>Bu &uuml;r&uuml;nden en fazla&nbsp;10 adet sipariş verilebilir.&nbsp;10 adedin &uuml;zerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.&nbsp;Belirlenen bu limit kurumsal siparişlerde ge&ccedil;erli olmayıp, kurumsal siparişler i&ccedil;in farklı limitler belirlenebilmektedir.</p>\r\n', 120.00, '', 'Bisiklet Yaka Tişort', 100, '1', '0'),
(19, 4, '2024-06-06 20:58:33', ' Siyah Pantolon', 'siyah-pantolon', '<p>Erkek Siyah Renk Garantili Skinny Fit Dar Pa&ccedil;a Likralı Kot Pantalon pamuk likralı esnek, slim fit , dar pa&ccedil;a, pamuklu, kemerli, astarlı, kapaması d&uuml;ğmeli, kalınlığı orta, kumaş denim kumaş, 5 cepli, esnek bel, g&uuml;nl&uuml;k ve gece giyim, nefes alan kumaş, kondonsuz, bilek boy, kondonsuz, slim, ipliği boyalı,enzim taş, policotton, par&ccedil;a mevcut değil, jean , geniş beden aralığı, cepli, sayfada renk se&ccedil;eneği mevcut, boy standart 101 cmdir</p>\r\n', 350.00, '', ' Siyah Renk Pantolon', 100, '1', '0'),
(20, 4, '2024-06-06 21:00:29', 'Kot Pantolon', 'kot-pantolon', '<p>ERKEK Skinny Fit Likralı Dar Pa&ccedil;a PANTOLON %100 pamuk pamuk likralı esnek, slim fit , dar pa&ccedil;a, pamuklu, kemerli, astarlı, kapaması d&uuml;ğmeli, kalınlığı orta, kumaş denim kumaş, 5 cepli, esnek bel, g&uuml;nl&uuml;k ve gece giyim, nefes alan kumaş, kondonsuz, bilek boy, kondonsuz, slim, ipliği boyalı,enzim taş, policotton, par&ccedil;a mevcut değil, jean , geniş beden aralığı, cepli, sayfada renk se&ccedil;eneği mevcut, boy standart 101 cmdir</p>\r\n', 700.00, '', 'Kot Pantolon', 100, '1', '0'),
(21, 5, '2024-06-06 21:02:17', 'Likralı Blucin', 'likrali-blucin', '<p>Bir &uuml;r&uuml;n, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan &uuml;r&uuml;nlerin satıcıları &uuml;r&uuml;n i&ccedil;in belirledikleri fiyata, satıcı puanlarına, teslimat stat&uuml;lerine, &uuml;r&uuml;nlerdeki promosyonlara, kargonun bedava olup olmamasına ve &uuml;r&uuml;nlerin hızlı teslimat ile teslim edilip edilememesine, &uuml;r&uuml;nlerin stok ve kategorileri bilgilerine g&ouml;re sıralanmaktadır.</p>\r\n\r\n<p>Bu &uuml;r&uuml;nden en fazla&nbsp;10 adet sipariş verilebilir.&nbsp;10 adedin &uuml;zerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.&nbsp;Belirlenen bu limit kurumsal siparişlerde ge&ccedil;erli olmayıp, kurumsal siparişler i&ccedil;in farklı limitler belirlenebilmektedir.</p>\r\n', 800.00, '', 'Fit Likralı Blucin', 100, '1', '0'),
(22, 6, '2024-06-06 21:04:16', 'Kolsuz Bluz', 'kolsuz-bluz', '<p>Bu &uuml;r&uuml;nden en fazla&nbsp;5 adet sipariş verilebilir.&nbsp;5 adedin &uuml;zerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.&nbsp;Belirlenen bu limit kurumsal siparişlerde ge&ccedil;erli olmayıp, kurumsal siparişler i&ccedil;in farklı limitler belirlenebilmektedir.</p>\r\n\r\n<p>Modelin &ouml;l&ccedil;&uuml;leri: Boy: 1.76, g&ouml;ğ&uuml;s: 84, bel: 60, kal&ccedil;a: 90</p>\r\n\r\n<p>Mankenin &uuml;zerindeki &uuml;r&uuml;n s bedendir.</p>\r\n\r\n<p>&Uuml;r&uuml;n&uuml;n uzunluğu 57- 58 cm gelmektedir.</p>\r\n', 120.00, '', 'Siyah Kolsuz Bluz', 100, '1', '0'),
(23, 7, '2024-06-06 21:06:35', 'Logolu Şapka', 'logolu-sapka', '<p>BlackB&ouml;rk Klasik Şapka Modelidir.</p>\r\n\r\n<p>Şapkalarımızın &ouml;n kısmındaki Bench (Logo) alanı değiştirilebilir ve cırtlıdır. Dilediğiniz Benchleri satın alıp bir şapkayı birden fazla ve farklı Bench ile değiştirerek kullanabilirsiniz.</p>\r\n\r\n<p>Siparişin i&ccedil;indeki &uuml;r&uuml;n adeti fark etmeksizin tek bir kutu ile g&ouml;nderilmektedir. Sipariş verenin adı ve soyadı &uuml;r&uuml;n kutusunun &uuml;zerine yazılarak g&ouml;nderilir.</p>\r\n', 95.00, '', 'Logolu Lacivert Şapka', 100, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(2, 15, 'dimg/urun/305412540921311231801.jpg', 0),
(4, 15, 'dimg/urun/220093111824192233513.jpg', 0),
(5, 15, 'dimg/urun/264312666826420251892..jpg', 0),
(6, 15, 'dimg/urun/212032343428234318251_org_zoom (1).jpg', 0),
(7, 15, 'dimg/urun/319463057031922260001_org_zoom (2).jpg', 0),
(8, 15, 'dimg/urun/293112898131542250751_org_zoom.jpg', 0),
(9, 16, 'dimg/urun/290342946127332290851.jpg', 0),
(10, 16, 'dimg/urun/211722580922000284362..jpg', 0),
(12, 17, 'dimg/urun/209312372227368306911_org_zoom.jpg', 0),
(13, 18, 'dimg/urun/307342945822623233991_org_zoom (2).jpg', 0),
(14, 18, 'dimg/urun/264882320625358257131_org_zoom (1).jpg', 0),
(15, 18, 'dimg/urun/319002958330331273911_org_zoom.jpg', 0),
(16, 17, 'dimg/urun/289212864523151319002_org_zoom.jpg', 0),
(17, 19, 'dimg/urun/283392207421366230771_org_zoom (2).jpg', 0),
(18, 19, 'dimg/urun/215223182622275287421_org_zoom (1).jpg', 0),
(19, 19, 'dimg/urun/220822970928406315001_org_zoom.jpg', 0),
(20, 20, 'dimg/urun/201373118230688222281_org_zoom (2).jpg', 0),
(21, 20, 'dimg/urun/311812704026825218151_org_zoom (1).jpg', 0),
(22, 20, 'dimg/urun/295952767922523205961_org_zoom.jpg', 0),
(24, 21, 'dimg/urun/28170306192635624051formatwebp.jpg', 0),
(25, 21, 'dimg/urun/29487304692771728432formatwebp (1).jpg', 0),
(26, 22, 'dimg/urun/242413000126912216384_org_zoom.jpg', 0),
(27, 22, 'dimg/urun/241222226029509304153_org_zoom.jpg', 0),
(28, 22, 'dimg/urun/270432137227840224731_org_zoom.jpg', 0),
(29, 23, 'dimg/urun/246682083828261251841_org_zoom.jpg', 0),
(30, 23, 'dimg/urun/305273069931218211001_org_zoom (2).jpg', 0),
(31, 23, 'dimg/urun/277603190531594279821_org_zoom (1).jpg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorum_onay` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750008;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
