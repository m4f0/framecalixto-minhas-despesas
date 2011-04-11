<?php
/**
 * Classe responsavel pela regras de negocio do cadastro de Orgaos Validadores
 *@todo Inserir Regras
 */

class Column3DGraficoXmlBO extends GenericoBO {

    private $nomeGrafico = "FCF_Column3D.swf";

    public function  __construct($caption, $formatNumberScale = 0, $decimalPrecision = 0, $rotateNames = 1){
    	
        $this->caption              = $caption;
        $this->formatNumberScale    = $formatNumberScale;
        $this->decimalPrecision     = $decimalPrecision;
        $this->rotateNames          = $rotateNames;
    }

    /**
     *
     * @param <array> $arName Array contendo os nomes para o grafico
     * @param <array> $arValue Array contendo os valores para o grafico
     * @param <boolean> $boVariasCores Variável Lógica responsável por determinar se o grafico apresentará varias cores ou será de cor única
     * @param <array> $arLinks Array contendo os links para o grafico
     * @return <string> Retorna String contendo o XML para a Geração do Grafico Escolhido
     */
    public function gerarXmlGrafico($arName, $arValue, $boVariasCores = true, $arLinks = array()){

        $arCores = array();
        if($boVariasCores){
            $this->montarArrayCores($arCores);
        }
        
        $stXml = "";
        if(is_array($arName) && is_array($arValue) && is_array($arLinks) && (count($arName) == count($arValue)) ) {
        	$stXml = htmlentities("<?xml version='1.0' encoding='UTF-8' ?>");        	
            $stXml .= htmlentities("<graph caption='". utf8_decode( trim($this->caption) ) ."' formatNumberScale='". trim($this->formatNumberScale) . "' decimalPrecision='". trim($this->decimalPrecision) . "' rotateNames='". trim($this->rotateNames) ."'>\n");
            for($i = 0; $i < count($arName); $i++) {
                $stXml .= htmlentities("<set name='". utf8_decode( trim($arName[$i]) ) . "' value='". trim($arValue[$i]) . "' link='". trim($arLinks[$i]) . "' color='". ($boVariasCores ? trim($arCores[$i]) : "") . "'></set>\n");
            }
            $stXml .= htmlentities("</graph>");
        } else {
            return false;
        }
        
        return $stXml;
    }

    /**
     * Método responsável por Montar um Array com as Cores disponiveis para o gráfico
     * @param <array> $arCores
     */
    public function montarArrayCores(&$arCores){
        $arCores[] = 'AFF8FF';
        $arCores[] = 'F6BD0F';
        $arCores[] = '8AFA00';
        $arCores[] = '051E99';
        $arCores[] = '008E8E';
        $arCores[] = 'D64646';
        $arCores[] = '8E468E';
        $arCores[] = '588526';
        $arCores[] = 'B3AA00';
        $arCores[] = '008ED6';
        $arCores[] = '9D080D';
        $arCores[] = 'A186BE';
        $arCores[] = 'FFA111';
        $arCores[] = 'AFE9F8';
        $arCores[] = 'F6BDF0';
        $arCores[] = '9DBA00';
        $arCores[] = 'FA8E46';
        $arCores[] = '9D8E8E';
        $arCores[] = 'FF4646';
        $arCores[] = '8E998E';
        $arCores[] = '58A526';
        $arCores[] = 'BDFA00';
        $arCores[] = '0A8EDF';
        $arCores[] = '9D089A';
        $arCores[] = 'FD86BE';
        $arCores[] = 'BBD8F9';
        $arCores[] = 'ACACF9';
        $arCores[] = '19D8AC';
        $arCores[] = 'FFFF00';
        $arCores[] = 'FF00FF';
        $arCores[] = '00FFFF';
    }
    
}
?>