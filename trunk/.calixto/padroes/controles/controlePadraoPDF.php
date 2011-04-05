<?php
/**
* Classe de definição da camada de controle
* @package FrameCalixto
* @subpackage Controle
*/
class controlePadraoPDF extends controle{
	/**
	* Classe PDF de controle do documento
	* @var Spdf
	*/
	public $visualizacao;
	public $modoDeVisualizar;
	public function inicial(){}
	/**
	* Método de criação da visualizacao
	*/
	public function criarVisualizacaoPadrao(){
		$this->visualizacao = new Spdf();
		$this->visualizacao->AliasNbPages('{nb}');
	}
	/**
	* Método de criação da visualizacao
	*/
	public function criarInternacionalizacaoPadrao(){}
	/**
	* Método de configuração das margens
	* @param integer margem esquerda
	* @param integer margem superior
	* @param integer margem direita
	*/
	public function margens($esquerda,$topo,$direita=-1){
		$this->visualizacao->SetMargins($esquerda,$topo,$direita);
	}
	/**
	* Método de configuração da margem esquerda
	* @param integer margem esquerda
	*/
	public function margemEsquerda($margem){
		$this->visualizacao->SetLeftMargin($margem);
	}
	/**
	* Método de configuração da margem do topo
	* @param integer margem superior
	*/
	public function margemSuperior($margem){
		$this->visualizacao->SetTopMargin($margem);
	}
	/**
	* Método de configuração da margem direita
	* @param integer margem direita
	*/
	public function margemDireita($margem){
		$this->visualizacao->SetRightMargin($margem);
	}
	/**
	* Método de configuração da quebra automática de página
	* @param boolean quebra automática
	* @param integer margem esquerda
	*/
	public function autoQuebra($auto,$margem=0){
		$this->visualizacao->SetAutoPageBreak($auto,$margem);
	}
	/**
	* Método de configuração do título
	* @param integer margem esquerda
	*/
	public function titulo($margem){
		$this->visualizacao->setTitle($margem);
	}
	/**
	* Adiciona uma nova página no documento
	* @param string R = retrato, P => Paisagem
	*/
	public function adicionarPagina($orientacao = ''){
		switch($orientacao){
			case 'R': $this->visualizacao->AddPage('P'); break;
			case 'P': $this->visualizacao->AddPage('L'); break;
			default : $this->visualizacao->AddPage($orientacao);
		}
	}
	/**
	* Retorna o número da página
	*/
	public function nrPagina(){
		$this->visualizacao->PageNo();
	}
	/**
	* Adiciona uma célula no documento
	* @param integer Largura da célula. Se 0, a célula se extende até a margem direita.
	* @param integer Altura da célula. Valor padrão: 0.
	* @param string Texto a ser impresso. Valor padrão: texto vazio.
	* @param string Indica se as bordas devem ser desenhadas em volta da célula. 0: sem borda, 1: com borda, L: esquerda, T: acima, R: direita, B: abaixo
	* @param integer Indica onde a posição corrente deve ficar depois que a função for chamada. 0: a direita, 1: no início da próxima linha, 2: abaixo
	* @param string Permite centralizar ou alinhar o texto. L ou um texto vazio: alinhado à esquerda (valor padrão), C: centralizado, R: alinhado à direita
	* @param integer Indica se o fundo da célula deve ser preenchido (1) ou transparente (0). Valor padrão: 0.
	* @param string URL ou identificador retornado por AddLink().
	*/
	public function celula($largura,$altura=10,$texto='',$borda=0,$posicao=0,$alinhamento='',$fundo=0,$link=''){
		$this->visualizacao->Cell($largura,$altura,$texto,$borda,$posicao,$alinhamento,$fundo,$link);
	}
	/**
	*
	*/
	public function mostrar($name='',$dest=''){
		$this->visualizacao->close();
		$this->visualizacao->output($name='',$dest='');
	}
	public function ln($h = 7){
		$this->visualizacao->ln($h);
	}
}
?>