<?php
/**
* Classe de representação de uma camada de negócio da entidade Historico Gastos
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Historico Gastos
*/
class NHistoricoGastos extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idHistoricoGasto;
	/**
	* @gerador variavelPadrao
	* @var integer Despesa
	*/
	public $idDespesa;
	/**
	* @gerador variavelPadrao
	* @var integer Pagamento
	*/
	public $idPagamento;
	/**
	* @gerador variavelPadrao
	* @var TData Data Despesa
	*/
	public $dtDespesa;
	/**
	* @gerador variavelPadrao
	* @var TData Data Pagamento
	*/
	public $dtPagamento;
	/**
	* @gerador variavelPadrao
	* @var TData Data Vencimento
	*/
	public $dtVencimento;
	/**
	* @gerador variavelPadrao
	* @var TMoeda Valor Despesa
	*/
	public $vlDespesa;
	/**
	* @gerador variavelPadrao
	* @var TNumerico Pago
	*/
	public $csPago;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idHistoricoGasto'; }
}
?>