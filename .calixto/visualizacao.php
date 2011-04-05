<?php
include_once('externas/Smarty-2.6.13/libs/Smarty.class.php');
/**
* Classe responsável por passar a inteligência do controle para uma tela
* @package FrameCalixto
* @subpackage visualização
*/
class visualizacao extends Smarty{
	/**
	*
	*/
	public $_cache_include_info;
	/**
	* Método Contrutor
	*/
	function __construct(){
		$tmp = definicaoPasta::temporaria();
		if(!diretorio::legivel($tmp)) throw new erroEscrita("Pasta [{$tmp}] inexistente ou sem permissão de leitura!");
		if(!diretorio::gravavel($tmp)) throw new erroEscrita("Pasta temporaria [{$tmp}] sem permissão de escrita!");
		parent::Smarty();
		$this->compile_check = true;
		$this->debugging = false;
		$this->left_delimiter  = '«';
		$this->right_delimiter = '»';
		$this->template_dir = '';
		$this->compile_dir = $tmp;
		$this->config_dir = '';
	}
	/**
	* Retorna o texto da pagina
	* @param string caminho da pagina
	* @return string
	*/
	function pegar($pagina){
		return $this->fetch($pagina);
	}
	/**
	* Mostra o conteudo da pagina
	* @param string caminho da pagina
	*/
	function mostrar($pagina = null){
		if( $pagina ) $this->display($pagina);
	}
	/**
	* Método de sobrecarga para evitar a criação de métodos repetitivos
	* @param string metodo chamado
	* @param array parâmetros parassados para o método chamado
	*/
	function __set($variavel, $parametros){
		$this->assign($variavel,$parametros);
    }
	/**
	* Método de sobrecarga para evitar a criação de métodos repetitivos
	* @param string metodo chamado
	* @param array parâmetros parassados para o método chamado
	*/
	function __get($variavel){
		if(isset($this->_tpl_vars[$variavel])){
			return $this->_tpl_vars[$variavel];
		}else{
			return false;
		}
    }
}
?>
