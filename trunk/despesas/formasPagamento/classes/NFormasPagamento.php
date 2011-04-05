<?php
/**
* Classe de representação de uma camada de negócio da entidade Formas Pagamento
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Formas Pagamento
*/
class NFormasPagamento extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idFormaPagamento;
	/**
	* @gerador variavelPadrao
	* @var string Nome da Forma Pagamento
	*/
	public $nmFormaPagamento;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idFormaPagamento'; }
}
?>