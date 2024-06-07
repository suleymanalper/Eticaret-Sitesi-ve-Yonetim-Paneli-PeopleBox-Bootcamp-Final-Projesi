<?php 
ob_start();



function islemkontrol () {

    if (empty($_SESSION['kullanici_mail'])) {
        
        Header("Location:../../?durum=izinsizerisim1");
        exit;
    }
}

function seo($str, $options = array())
{
    // Türkçe karakter haritası
    $char_map = array(
        'Ş' => 'S', 'İ' => 'I', 'Ç' => 'C', 'Ü' => 'U', 'Ö' => 'O', 'Ğ' => 'G',
        'ş' => 's', 'ı' => 'i', 'ç' => 'c', 'ü' => 'u', 'ö' => 'o', 'ğ' => 'g',
        // İngilizce karakter haritası
        'À' => 'A', 'Á' => 'A', 'Â' => 'A', 'Ã' => 'A', 'Ä' => 'A', 'Å' => 'A', 'Æ' => 'AE', 'Ç' => 'C',
        'È' => 'E', 'É' => 'E', 'Ê' => 'E', 'Ë' => 'E', 'Ì' => 'I', 'Í' => 'I', 'Î' => 'I', 'Ï' => 'I',
        'Ð' => 'D', 'Ñ' => 'N', 'Ò' => 'O', 'Ó' => 'O', 'Ô' => 'O', 'Õ' => 'O', 'Ö' => 'O', 'Ő' => 'O',
        'Ø' => 'O', 'Ù' => 'U', 'Ú' => 'U', 'Û' => 'U', 'Ü' => 'U', 'Ű' => 'U', 'Ý' => 'Y', 'Þ' => 'TH',
        'ß' => 'ss',
        'à' => 'a', 'á' => 'a', 'â' => 'a', 'ã' => 'a', 'ä' => 'a', 'å' => 'a', 'æ' => 'ae', 'ç' => 'c',
        'è' => 'e', 'é' => 'e', 'ê' => 'e', 'ë' => 'e', 'ì' => 'i', 'í' => 'i', 'î' => 'i', 'ï' => 'i',
        'ð' => 'd', 'ñ' => 'n', 'ò' => 'o', 'ó' => 'o', 'ô' => 'o', 'õ' => 'o', 'ö' => 'o', 'ő' => 'o',
        'ø' => 'o', 'ù' => 'u', 'ú' => 'u', 'û' => 'u', 'ü' => 'u', 'ű' => 'u', 'ý' => 'y', 'þ' => 'th',
        'ÿ' => 'y'
    );

    $str = str_replace(array_keys($char_map), $char_map, $str);
    
    $defaults = array(
        'delimiter' => '-',
        'limit' => null,
        'lowercase' => true,
        'replacements' => array(),
        'transliterate' => true
    );
    $options = array_merge($defaults, $options);

    // Belirtilen ek değişiklikleri uygulama
    $str = preg_replace(array_keys($options['replacements']), $options['replacements'], $str);

    // Geçersiz karakterleri kaldırma
    $str = preg_replace('/[^\p{L}\p{Nd}]+/u', $options['delimiter'], $str);

    // Tekrarlanan sınırlayıcıları kaldırma
    $str = preg_replace('/(' . preg_quote($options['delimiter'], '/') . '){2,}/', '$1', $str);

    // Sınırlayıcıyı kesme
    $str = mb_substr($str, 0, ($options['limit'] ? $options['limit'] : mb_strlen($str, 'UTF-8')), 'UTF-8');

    // Başındaki ve sonundaki sınırlayıcıları kaldırma
    $str = trim($str, $options['delimiter']);

    return $options['lowercase'] ? mb_strtolower($str, 'UTF-8') : $str;
}
?>
