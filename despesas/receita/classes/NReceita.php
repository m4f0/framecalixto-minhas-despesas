<?php
/**
* Classe de representação de uma camada de negócio da entidade Receita
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Receita
*/
class NReceita extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idReceita;
	/**
	* @gerador variavelPadrao
	* @var string Nome
	*/
	public $nmReceita;
	/**
	* @gerador variavelPadrao
	* @var string Descrição
	*/
	public $dsReceita;
	/**
	* @gerador variavelPadrao
	* @var TMoeda Valor
	*/
	public $vlDespesa;
	/**
	* @gerador variavelPadrao
	* @var TData Data Inicio Renda
	*/
	public $dtInicioReceita;
	/**
	* @gerador variavelPadrao
	* @var TData Data Fim Renda
	*/
	public $dtFimReceita;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idReceita'; }
}
?>