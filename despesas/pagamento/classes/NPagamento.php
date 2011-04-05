<?php
/**
* Classe de representação de uma camada de negócio da entidade Pagamento
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Pagamento
*/
class NPagamento extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idPagamento;
	/**
	* @gerador variavelPadrao
	* @var integer Forma Pagamento
	*/
	public $idFormaPagamento;
	/**
	* @gerador variavelPadrao
	* @var integer Origem Credito
	*/
	public $idOrigemCredito;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idPagamento'; }
}
?>