<?php
/**
* Classe de representação de uma camada de negócio da entidade Despesas
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Despesas
*/
class NDespesas extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idDespesa;
	/**
	* @gerador variavelPadrao
	* @var integer Categoria Despesa
	*/
	public $idCategoriaDespesa;
	/**
	* @gerador variavelPadrao
	* @var string Nome Despesa
	*/
	public $nmDespesa;
	/**
	* @gerador variavelPadrao
	* @var string Descrição Despesa
	*/
	public $dsDespesa;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idDespesa'; }
}
?>