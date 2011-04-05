<?php
/**
* Classe de representação de uma camada de negócio da entidade Origem Credito
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Origem Credito
*/
class NOrigemCredito extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idOrigemCredito;
	/**
	* @gerador variavelPadrao
	* @var string Nome Origem do Crédito
	*/
	public $nmOrigemCredito;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idOrigemCredito'; }
}
?>