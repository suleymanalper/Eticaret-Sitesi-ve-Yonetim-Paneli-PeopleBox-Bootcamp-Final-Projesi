# Eticaret-Sitesi-ve-Yonetim-Paneli-PeopleBox-Bootcamp-Final-Projesi
#Proje Raporu: Salper E-Ticaret ve Yönetim Paneli

#Kurulum ve Başlangıç
Projenin klonlayın ve sırasıyla aşağıdaki adımları izleyebilirsiniz:
git clone https://github.com/suleymanalper/Eticaret-Sitesi-ve-Yonetim-Paneli-PeopleBox-Bootcamp-Final-Projesi

#Localde Çalıştırma için:
XAMPP VEYA WAMP gibi uygulamalın kurulumunu yapıp çalıştırın.
Proje klasörünü htdocs klasörüne kopyalayın.
localhost/eticaret/ adresine giderek projeyi çalıştırın.
<hr>
#Veritabanı Ayarları:
Veritabanı ayarlarını eticaret\nedmin\netting\baglan.php dosyasında yapabilirsiniz.
Veritabanı PhpMySql'inize aktarmak için eticaret.sql dosyasını kullanın.
<hr>
#Güvenlik:
Proje, security için CSRF token ve password hashing kullanılmıştır.
<hr>

<hr>

#Geliştirici: Süleyman Alper

Tarih: 07.06.2024

##1. Giriş
Bu rapor, Salper E-Ticaret ve Yönetim Paneli web uygulamasının geliştirilme sürecini, kullanılan teknolojileri, uygulanan özellikleri ve karşılaşılan zorlukları kapsamaktadır. Bu web uygulaması, kullanıcıların çeşitli hizmetlere kolayca erişebileceği ve yönetebileceği bir platform sağlamaktadır.
Yonetim Panelini tasarlanması, Eticaret Sitesinin yapılması ve her Eticarete entegre edilebecek bir Yönetim Panelinin tasarlanarak kodlanmasını yaptım 

##2. Proje Tanımı
Salper E-Ticaret ve Yönetim Paneli, PHP, MySQL, JSON, RESTful API ve PDO kullanılarak geliştirilmiş bir web uygulamasıdır. Uygulama, kullanıcıların kayıt olabileceği, giriş yapabileceği, verilerini yönetebileceği ve çeşitli işlemler gerçekleştirebileceği bir platform sunar.

##3. Kullanılan Teknolojiler
PHP: Sunucu tarafında çalışan betik dili.
MySQL: Veritabanı yönetim sistemi.
JSON: Veri değişim formatı.
RESTful API: API tasarım modeli.
PDO: PHP Data Objects, PHP'nin veritabanı erişim katmanı.
HTML, CSS ve Bootstrap: Tasarım ve stil için.
JavaScript: Dinamik işlevler ve kullanıcı etkileşimleri için.

##4. Özellikler
4.1 Kullanıcı Yönetimi
Kullanıcı kayıt ve giriş sistemi.
Şifrelerin güvenli bir şekilde saklanması (hashing).
Kullanıcı profili ve hesap yönetimi.

##4.2 Veritabanı İşlemleri
CRUD (Create, Read, Update, Delete) işlemleri.
Veritabanı tasarımı ve ilişkisel veritabanı yönetimi.
MySQL kullanarak veritabanı işlemlerinin gerçekleştirilmesi.

##4.3 Form Yönetimi
Veri doğrulama ve hata yönetimi.
Kullanıcıdan alınan verilerin işlenmesi ve saklanması.

##4.4 Dosya Yükleme
Kullanıcıların dosya yükleyebilmesi (örneğin resim yükleme).
Yüklenen dosyaların sunucuda güvenli bir şekilde saklanması.

##4.5 JSON ve RESTful API
JSON formatında veri alışverişi.
RESTful API oluşturma ve kullanma.
API üzerinden veri alma ve gönderme işlemleri.

##4.6 Oturum Yönetimi
PHP Sessions kullanarak oturum yönetimi.
Kullanıcı oturumlarının güvenli bir şekilde yönetilmesi.

##4.7 Güvenlik
Güvenlik önlemleri (örneğin CSRF, XSS korumaları).
Kullanıcı verilerinin güvenliğinin sağlanması.

##4.8 PHP OOP ve PDO
Nesne yönelimli programlama (OOP) prensiplerine uygun kod yazma.
PHP PDO kullanarak veritabanı işlemleri gerçekleştirme.

##5. Yönetim Paneli Özellikleri

Yönetim Paneline geçiş yapmak için uzantıya:

http://localhost/eticaret/nedmin/production/login.php

Admin bilgilerine girdikten sonra giriş yapabilirsiniz.

-Admin Yetkilendirilmesi veritabanımda 5 olarak verdim
-Kullanıcı Olarak Giriş yapanların Yetkisi 1 olarak verildi.

Ayrımı burdan yapabilirsiniz.



5.1 Kullanıcı Yönetimi
Kullanıcı listesi ve detaylı kullanıcı bilgileri.
Kullanıcı hesaplarının yönetilmesi (örneğin şifre değiştirme).
Kullanıcı rollerinin atanması ve yönetilmesi.
Kullanıcı hesaplarının silinmesi.
Kullanıcı hesaplarının bloke edilmesi.
Kullanıcı hesaplarının onaylanması.
Kullanıcı hesaplarının detaylı raporlaması.

##5.1 Site Ayarları
Site ayarlarının yönetilmesi (örneğin site adı, site açıklaması).
Site logosunu değiştirilmesi.

Genel Ayarlar:
Site logosu değiştirilmesi.
Site Başlığının değiştirilmesi.
Site Açıklamsını değiştirilmesi.
Site SEO kelime ayarlarının yapılması.
Site Yazarının


İletişim Ayarları:
Site İletişim Bilgilerinin değiştirilmesi.
Site İletişim Formunun ayarlanması.
Site İletişim Bilgilerinin raporlanması.
Bunlar: Telefon numarası, GSM, faks numarası, e-posta adresi, ilçe, il, adres, mesai saatleri.


API Ayarları:
API anahtarının değiştirilmesi.
API ayarlarının raporlanması.
API isteklerinin raporlanması.
Bunlar:  Analitik kodu, Maps API, Zopim API. değiştirilip güncellenemsine hazır hale getirilmiştir

Sosyal Medya Ayarları:
Sosyal medya hesaplarının bağlanması.
Bunlar: Facebook, Twitter, YouTube, Google bilgileri güncellenebilmesi

Mail Ayarları:
Mail ayarlarının değiştirilmesi.
Mail hesaplarının bağlanması.
Bunlar: Mail sunucusu, Mail adresi, Mail şifresi, Mail port


##5.2 Hakkımızda
Hakkımızda sayfasının yönetilmesi.
Hakkımızda sayfasında yer alan başlık ve içerik metinlerin değiştirilmesi.
Hakkımızda sayfasında yer alan resimlerin değiştirilmesi.
Hakkımızda sayfasında yer alan videoların alanı ayarlama ve güncelleme.
Hakkımızda sayfasında yer alan Vizyon Ve misyon metnin yazılması ve güncellenebilmesi.

##5.3 Kullanıcı
Kullanıcı hesaplarının yönetilmesi.
Kullanıcı hesaplarının Düzenlenmesi ve Silmesi.


##5.4 Ürün Yönetimi
Ürünlerin yönetilmesi.
Ürünlerin Düzenlenmesi ve Silmesi.
Ürünlerin fiyatlarının güncellenmesi.
Ürünlerin resimlerinin güncellenmesi ve çoklu resim ekleyip güncellenemebilmesi.
Ürünlerin açıklamalarının güncellenmesi.
Ürünlerin kategorilerinin güncellenmesi.
Ürünler aktif/pasif durumu yapılması



##5.4 Menü Yönetimi
Menülerin yönetilmesi.
Menülerin Düzenlenmesi ve Silmesi.
Menülerin isimlerinin güncellenmesi.
Menülerin linklerinin güncellenmesi.
Menülerin açıklamalarının güncellenmesi.
Menülerin aktif/pasif durumu yapılması

##5.5 Kategori Yönetimi
Kategorilerin yönetilmesi.
Kategorilerin Düzenlenmesi ve Silmesi.
Kategorilerin isimlerinin güncellenmesi.


##5.6 Slider Yönetimi
Sliderların yönetilmesi.
Sliderların Düzenlenmesi ve Silmesi.
Sliderların resimlerinin güncellenmesi.
Sliderların linklerinin güncellenmesi.
Sliderların aktif/pasif durumu yapılması
Sliderların sıralamasının değiştirilmesi.


##5.7 Yorum Yönetimi
Yorumların yönetilmesi.
Yorumların Düzenlenmesi ve Silmesi.
Yorumların onaylanması ve reddedilmesi.

##5.8 Banka Yönetimi
Bankaların yönetilmesi.
Bankaların Düzenlenmesi ve Silmesi.
Bankaların isimlerinin güncellenmesi.
Bankaların hesap numaralarının güncellenmesi.
Bankaların aktif/pasif durumu yapılması
Bankaların ödeme yöntemlerinin güncellenmesi.



##6. E-Ticaret Sitesi Özellikleri
- Üye oluşturma ve giriş yapma
- Ürün ekleme, güncelleme ve silme
- Ürün listeleme ve detay sayfası
- Sepet oluşturma ve Ürün satın alma (havale yöntemi ile).
- Sipariş oluşturma ve satın almaAna sayfa slider, en çok satılan ürünler.
- Hakkımızda sayfasında video içeriği, misyon, vizyon ve kim olduğumuz açıklaması.
- Kategorilere göre sıralanmış ürünler.
- İletişim formu ve sayfası.
- Sosyal medya bağlantıları.
- SEO ayarları.
- Güvenlik duvarı.



##7.E-Ticaret Ekran Görüntüleri
Ekran Resimleri\Eticaret klasörünün altında

#8.Yönetim Paneli Ekran Görüntüleri
Ekran Resimleri\Yönetim Paneli

8. Sonuç
Bu proje ile PHP, MySQL ve diğer web teknolojileri kullanılarak fonksiyonel bir e-ticaret ve yönetim paneli geliştirilmiştir. Proje, kullanıcı dostu arayüzü ve kapsamlı yönetim özellikleri ile farklı temalarla entegre edilebilme esnekliği sağlamaktadır.
