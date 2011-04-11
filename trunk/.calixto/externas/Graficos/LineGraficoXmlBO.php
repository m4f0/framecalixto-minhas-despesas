<?php
/**
 * Classe responsavel pela regras de negocio do cadastro de Orgaos Validadores
 *@todo Inserir Regras
 */

class LineGraficoXmlBO{

    private $nomeGrafico = "FCF_Line.swf";

    public function  __construct($caption, $yAxisName, $yAxisMinValue, $yAxisMaxValue, $formatNumberScale = 0, $decimalPrecision = 0, $rotateNames = 1){
        $this->caption              = $caption;
        $this->yAxisName			= $yAxisName;
        $this->yAxisMinValue		= $yAxisMinValue;	
        $this->yAxisMaxValue		= $yAxisMaxValue;
        $this->formatNumberScale    = $formatNumberScale;
        $this->decimalPrecision     = $decimalPrecision;
        $this->rotateNames          = $rotateNames;

    }

    public function gerarXmlGrafico($arName, $arValue, $arLinks = array()){

        $stXml = "";
        if(is_array($arName) && is_array($arValue) && is_array($arLinks) && (count($arName) == count($arValue)) ) {
        	$stXml = htmlentities("<?xml version='1.0' encoding='ISO-8859-1' ?>");        	
            $stXml .= htmlentities("<graph caption='". utf8_decode($this->caption) ."' formatNumberScale='". $this->formatNumberScale . "' decimalPrecision='". $this->decimalPrecision . "' rotateNames='". $this->rotateNames . "' yAxisName='". $this->yAxisName . "' yAxisMinValue='". $this->yAxisMinValue . "' yAxisMaxValue='". $this->yAxisMaxValue ."'>\n");
            for($i = 0; $i < count($arName); $i++) {
                $stXml .= htmlentities("<set name='". utf8_decode($arName[$i]) . "' value='". $arValue[$i] . "' link='". $arLinks[$i] . "'></set>");
            }
            $stXml .= htmlentities("</graph>");
        } else {
            return false;
        }

        return $stXml;
    }
    
}

?>