<?php
// Загружаем XML файл
$xml = new DOMDocument;
$xml->load('answers.xml');

// Загружаем XSL файл
$xsl = new DOMDocument;
$xsl->load('see.xsl');

// Настраиваем преобразователь
$proc = new XSLTProcessor;

// Присоединяем xsl правила
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?>