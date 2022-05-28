<?php
// Загружаем XML файл
$xml = new DOMDocument;
$xml->load('comments.php');

// Загружаем XSL файл
$xsl = new DOMDocument;
$xsl->load('comment.xsl');

// Настраиваем преобразователь
$proc = new XSLTProcessor;

// Присоединяем xsl правила
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?>