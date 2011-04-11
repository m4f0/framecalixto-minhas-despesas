<?php
/**
* Classe de representação de uma camada de negócio da entidade Previsão Gastos
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Previsão Gastos
*/
class NPrevisaoGastos extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idPrevisaoGasto;
	/**
	* @gerador variavelPadrao
	* @var integer Despesa
	*/
	public $idDespesa;
	/**
	* @gerador variavelPadrao
	* @var TMoeda Valor Previsto
	*/
	public $vlPrevisto;
	/**
	* @gerador variavelPadrao
	* @var TData Mes Ano Referência
	*/
	public $dtMesAnoReferencia;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idPrevisaoGasto'; }
}
?>