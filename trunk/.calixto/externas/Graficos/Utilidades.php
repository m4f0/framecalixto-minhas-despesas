<?php
/**
 * Classe responsavel pela regras de negocio do cadastro de Orgaos Validadores
 *@todo Inserir Regras
 */
class UtilsBO extends GenericoBO {
	
	/**
	 *  Método que recebe um array associativo por parametro 
	 *  e converte este array em um array com indice numérico.
	 * @param $arAssociativo
	 * @return unknown_type
	 */
	public function gerarArrayNumericoPorArrayAssociativo(&$arAssociativo) {
		$arNumerico = array();
		foreach($arAssociativo as $arDados) {
			$arNumerico[] = $arDados;
		}
		$arAssociativo = $arNumerico;
	} 
	
	public function getWsCpf( $wsdlCpf ){
		
		$wsdlFilePath = new SoapClient("http://ws.mec.gov.br/PessoaFisica/wsdl",array());
		$wsClient = $wsdlFilePath->solicitarDadosPessoaFisicaPorCpf(preg_replace('/[^\d]/','',$wsdlCpf));

		$xml = new SimpleXMLElement(preg_replace('/(\<\!\[CDATA\[)||(\]\]\>)/','',$wsClient));
		
		$no_pessoa_rf				   = (string)$xml->PESSOA->no_pessoa_rf;
		$nu_cpf_rf					   = (string)$xml->PESSOA->nu_cpf_rf;
		$no_mae_rf					   = (string)$xml->PESSOA->no_mae_rf;
		$dt_nascimento_rf			   = (string)$xml->PESSOA->dt_nascimento_rf;
		$sg_sexo_rf				 	   = (string)$xml->PESSOA->sg_sexo_rf;
		$nu_titulo_eleitor_rf	 	   = (string)$xml->PESSOA->nu_titulo_eleitor_rf;
		$st_indicador_estrangeiro_rf   = (string)$xml->PESSOA->st_indicador_estrangeiro_rf;
		$co_pais_residente_exterior_rf = (string)$xml->PESSOA->co_pais_residente_exterior_rf;
		$st_indicador_residente_ext_rf = (string)$xml->PESSOA->st_indicador_residente_ext_rf;
		
		$anoNascimento = substr( $dt_nascimento_rf, 0, 4);
		$mesNascimento = substr( $dt_nascimento_rf, 4, 2);
		$diaNascimento = substr( $dt_nascimento_rf, 6, 2);
		
		
		$cpf_array = array(
			'no_pessoa'				  	 => $no_pessoa_rf,
			'nu_cpf' 		  			 => $nu_cpf_rf ,
			'no_mae' 		  			 => $no_mae_rf ,
			'dt_nascimento' 	  		 => $diaNascimento."/".$mesNascimento."/".$anoNascimento,
			'sg_sexo' 	  				 => $sg_sexo_rf,
			'nu_titulo_eleitor'  		 => $nu_titulo_eleitor_rf,
			'st_indicador_estrangeiro'   => $st_indicador_estrangeiro_rf ,
			'co_pais_residente_exterio'	 => $co_pais_residente_exterior_rf ,
			'st_indicador_residente_ext' => $st_indicador_residente_ext_rf
		);
		
		return $cpf_array;
	}

    function limparCpf($valor){

		if (strlen($valor) == 14 ) {
			$cpf = substr($valor,0,3).substr($valor,4,3).substr($valor,8,3).substr($valor,12,2);

		} else if(strlen($valor) == 11) {
            $cpf = $valor;
        }
		return $cpf ;
	}
}