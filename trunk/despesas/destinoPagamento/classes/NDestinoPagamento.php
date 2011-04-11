<?php
/**
* Classe de representação de uma camada de negócio da entidade Destino Pagamento
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Destino Pagamento
*/
class NDestinoPagamento extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idDestinoPagamento;
	/**
	* @gerador variavelPadrao
	* @var string Destino Pagamento
	*/
	public $nmDestinoPagamento;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idDestinoPagamento'; }
}
?>