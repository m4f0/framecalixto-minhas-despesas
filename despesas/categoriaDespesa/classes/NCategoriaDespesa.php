<?php
/**
* Classe de representação de uma camada de negócio da entidade Categoria Despesa
* A camada de negócio é a parte que engloba as regras e efetua os comandos de execução de um sistema
* @package Sistema
* @subpackage Categoria Despesa
*/
class NCategoriaDespesa extends negocioPadrao{
	/**
	* @gerador variavelPadrao
	* @var integer Identificador
	*/
	public $idCategoriaDespesa;
	/**
	* @gerador variavelPadrao
	* @var string Categoria Despesa
	*/
	public $nmCategoriaDespesa;
	/**
	* Retorna o nome da propriedade que contém o valor chave de negócio
	* @gerador metodoPadrao
	* @return string
	*/
	function nomeChave(){ return 'idCategoriaDespesa'; }
}
?>