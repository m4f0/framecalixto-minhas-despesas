<?php
/**
 * Classe responsavel pela regras de negocio do cadastro de Orgaos Validadores
 *@todo Inserir Regras
 */
 class GraficosXmlBO extends GenericoBO {

    private $baseUrl;
    private $caption;
    private $formatNumberScale;
    private $decimalPrecision;
    private $rotateNames;

    /*
     * Implementação dos Metodos Sets
     */
    public function setBaseUrl($baseUrl) {
        $this->baseUrl = $baseUrl;
    }
    public function setCaption($caption) {
        $this->caption = $caption;
    }
    public function setFormatNumberScale($formatNumberScale) {
        $this->formatNumberScale = $formatNumberScale;
    }
    public function setDecimalPrecision($decimalPrecision) {
        $this->decimalPrecision = $decimalPrecision;
    }
    public function setRotateNames($rotateNames) {
        $this->rotateNames = $rotateNames;
    }

    /*
     * Implementação dos Metodos Gets
     */
    public function setBaseUrl($baseUrl) {
        $this->baseUrl = $baseUrl;
    }

    /* Implementação dos Metodos de Negócio*/
    public function gerarXmlGrafico(GraficosXmlBO $tipoGrafico, $arName, $arValue, $arLinks = array()){
		return $tipoGrafico->gerarXmlGrafico($arName, $arValue, $arLinks);
    }
    
    public function GraficosXmlBO(){
    	
    }
}

?>