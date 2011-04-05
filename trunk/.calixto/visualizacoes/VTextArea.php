<?php
/**
* Objeto de apresentação de uma etiqueta HTML
* @package FrameCalixto
* @subpackage visualização
*/
class VTextArea extends VComponente{
	function __construct($nome = 'naoInformado',$valor = null){
		parent::__construct('textarea',$nome);
		$this->passarConteudo($valor);
	}
}
?>
