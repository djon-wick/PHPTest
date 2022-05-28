<?php
// Загружаем XML файл
$xml = new DOMDocument;
$xml->load('1.xml');

// Загружаем XSL файл
$xsl = new DOMDocument;
$xsl->load('1.xsl');

// Настраиваем преобразователь
$proc = new XSLTProcessor;

// Присоединяем xsl правила
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?>