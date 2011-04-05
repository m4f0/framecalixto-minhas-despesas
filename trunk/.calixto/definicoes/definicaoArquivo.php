<?php
/**
* Classe de definição para arquivos
* @package FrameCalixto
* @subpackage Definição
*/
class definicaoArquivo{
	/**
	* @var string nome do xml configurador das entidades
	*/
	private static $xmlEntidade;
	/**
	* @var string nome do xml configurador da internacionalização
	*/
	private static $xmlInternacionalizacao;
	/**
	* @var string nome do xml configurador da internacionalização do sistema
	*/
	private static $xmlInternacionalizacaoDoSistema;
	/**
	* @var string caminho do arquivo html padrao do sistema
	*/
	private static $html;
	/**
	* @var string caminho do arquivo CSS principal
	*/
	private static $css;
	/**
	* @var string Nome arquivo de definção da classe persistente
	*/
	private static final function pegarNomeXmlEntidade(){
		if(definicaoArquivo::$xmlEntidade){
			return definicaoArquivo::$xmlEntidade;
		}else{
			foreach(definicao::pegarDefinicao()->arquivos->arquivo as $arquivo){
				if(strval($arquivo['tipo']) == "definicao de entidade") {
					definicaoArquivo::$xmlEntidade = strval($arquivo['nome']);
					break;
				}
			}
			return definicaoArquivo::$xmlEntidade;
		}
	}
	/**
	* Retorna o caminho do xml configurador da entidade
	* @param mixed
	* @param string caminho forçado do xml
	*/
	public static final function pegarXmlEntidade($classe = null,$arquivoXML = null){
		try{
			if($arquivoXML === null){
				$arquivoXML = definicaoEntidade::entidade($classe).'/'.definicaoArquivo::pegarNomeXmlEntidade();
				arquivo::legivel($arquivoXML);
			}
			return $arquivoXML;
		}
		catch(erro $e){
			throw $e;
		}
	}
	/**
	* @var string Nome arquivo de definção da internacionalização
	*/
	private static final function pegarNomeXmlInternacionalizacao(){
		if(definicaoArquivo::$xmlInternacionalizacao){
			return definicaoArquivo::$xmlInternacionalizacao;
		}else{
			foreach(definicao::pegarDefinicao()->arquivos->arquivo as $arquivo){
				if(strval($arquivo['tipo']) == "internacionalizacao") {
					definicaoArquivo::$xmlInternacionalizacao = strval($arquivo['nome']);
					break;
				}
			}
			return definicaoArquivo::$xmlInternacionalizacao;
		}
	}
	/**
	* Retorna o caminho do xml configurador da internacionalização
	* @param mixed
	* @param string caminho forçado do xml
	*/
	public static final function pegarXmlInternacionalizacao($classe = null,$arquivoXML = null){
		try{
			if($arquivoXML === null){
				$arquivoXML = definicaoEntidade::entidade($classe).'/'.definicaoArquivo::pegarNomeXmlInternacionalizacao();
				arquivo::legivel($arquivoXML);
			}
			return $arquivoXML;
		}
		catch(erro $e){
			throw $e;
		}
	}
	/**
	* @var string Nome arquivo de definção da internacionalização do sistema
	*/
	private static final function pegarNomeXmlInternacionalizacaoDoSistema(){
		if(definicaoArquivo::$xmlInternacionalizacaoDoSistema){
			return definicaoArquivo::$xmlInternacionalizacaoDoSistema;
		}else{
			foreach(definicao::pegarDefinicao()->arquivos->arquivo as $arquivo){
				if(strval($arquivo['tipo']) == "internacionalizacao do sistema") {
					definicaoArquivo::$xmlInternacionalizacaoDoSistema = strval($arquivo['nome']);
					break;
				}
			}
			return definicaoArquivo::$xmlInternacionalizacaoDoSistema;
		}
	}
	/**
	* Retorna o caminho do xml configurador da internacionalização do sistema
	* @param mixed
	* @param string caminho forçado do xml
	*/
	public static final function pegarXmlInternacionalizacaoDoSistema($arquivoXML = null){
		try{
			if($arquivoXML === null){
				arquivo::legivel(definicaoArquivo::pegarNomeXmlInternacionalizacaoDoSistema());
				return definicaoArquivo::pegarNomeXmlInternacionalizacaoDoSistema();
			}
			return $arquivoXML;
		}
		catch(erro $e){
			throw $e;
		}
	}
	/**
	* Retorna o caminho arquivo de tema CSS
	* @return string caminho do arquivo CSS
	*/
	public static final function pegarCss(){
		if(definicaoArquivo::$css){
			return definicaoArquivo::$css;
		}else{
			foreach(definicao::pegarDefinicao()->arquivos->arquivo as $arquivo){
				if(strval($arquivo['tipo']) == "folha de estilo css") {
					definicaoArquivo::$css = strval($arquivo['nome']);
					break;
				}
			}
			return definicaoArquivo::$css;
		}
	}
	/**
	* Retorna o caminho arquivo de template do sistema
	* @return string caminho do arquivo de template do sistema
	*/
	public static final function pegarHtmlPadrao(){
		if(definicaoArquivo::$html){
			return definicaoArquivo::$html;
		}else{
			foreach(definicao::pegarDefinicao()->arquivos->arquivo as $arquivo){
				if(strval($arquivo['tipo']) == "html padrao do sistema") {
					definicaoArquivo::$html = strval($arquivo['nome']);
					break;
				}
			}
			return definicaoArquivo::$html;
		}
	}
}
?>