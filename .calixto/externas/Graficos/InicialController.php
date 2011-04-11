<?php

/**
 * IndexController is the default controller for this application
 * 
 * Notice that we do not have to require 'Zend/Controller/Action.php', this
 * is because our application is using "autoloading" in the bootstrap.
 *
 * @see http://framework.zend.com/manual/en/zend.loader.html#zend.loader.load.autoload
 */
class InicialController extends GenericoController {

    public function xmlAction() {
        //Caminho para testar de o XML esta sendo Gerado
        //http://localhost/cnrm/inicial/xml/parametro/instituicaoPorUF

        //Diz a view para não renderizar
        $this->_helper->viewRenderer->setNoRender();
        //Recupera o parametro passado
        $parametro = $this->_getParam('parametro');

        //Array que receberá as informações para montagem dos gráficos
        $arName = array();
        $arValue = array();

        switch ($parametro) {
            case 'pcpPorUF':
                            $daoPcp = new PcpDAO();
                            $arDadosPcp = $daoPcp->retornaPcpsPorEstados();
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosPcp as $arDados) {
                                $arName[] = $arDados['sg_estado'];
                                $arValue[] = $arDados['count'];
                            }
                            //Montando Totalizador do Gráfico
                            $obTotalizador = new TNumerico($daoPcp->retornaTotalPcps(), 0);

                            //Estes dados deverão ser recuperados da base de Daados
                            $graficoPcpPorUf = new Column3DGraficoXmlBO("Processos por UF ". "( Total: ".$obTotalizador->TNumerico2string() . " )" );
                            $xml = $graficoPcpPorUf->gerarXmlGrafico($arName, $arValue, true);

                            echo html_entity_decode($xml);
                            break;
            case 'percentualPcpPorUF':
                            $daoPcp = new PcpDAO();
                            $arDadosPcp = $daoPcp->retornaPcpsPorEstados();
                            //Montando Totalizador do Gráfico
                            $obTotalizador = new TNumerico($daoPcp->retornaTotalPcps(), 0);
 
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosPcp as $arDados) {
                                $arName[] = $arDados['sg_estado'];
                                $vlPercentual = new TNumerico(($arDados['count']*100)/$obTotalizador->getValor());
                                $arValue[] = $vlPercentual->getValor();
                            }
                            //Estes dados deverão ser recuperados da base de Daados
                            //$graficoPcpPorUf = new Column3DGraficoXmlBO("Percentual de Processos por UF ". "( Nº Total de Processos: ".$obTotalizador->TNumerico2string() . " )", 0, 2 );
                            $graficoPcpPorUf = new Pie3DGraficoXmlBO("Percentual de Processos por UF ". "( Nº Total de Processos: ".$obTotalizador->TNumerico2string() . " )", 0, 2 );
                            $xml = $graficoPcpPorUf->gerarXmlGrafico($arName, $arValue, true);

                            echo html_entity_decode($xml);
                            break;
            case 'tipoprocesso':
                            //Recuperar os dados dos Processos por Situação
                            $daoPcp = new VwPcpBuscaTipoDAO();
                            $coEntidade = "";
                            $sgEstado = "";
                            $DadosPcp = $daoPcp->retornaPcpPorTipo($coEntidade, $sgEstado,true);
                            $vlTotalPcp = 0;
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($DadosPcp as $indice => $arProcessos) {
                                $arName[$indice] = $indice;
                                foreach ($arProcessos as $dados) {
                                    if (isset($arValue[$indice])) {
                                        $arValue[$indice] += $dados['qt_pcp'];
                                    } else {
                                        $arValue[$indice] = $dados['qt_pcp'];
                                    }
                                    $vlTotalPcp += $dados['qt_pcp'];
                                }
                            }
                            $obTotalizador = new TNumerico($vlTotalPcp, 0);

                            //Chama a classe de utilitarios
                            $utilitario = new UtilsBO();
                            $utilitario->gerarArrayNumericoPorArrayAssociativo($arName);
                            $utilitario->gerarArrayNumericoPorArrayAssociativo($arValue);
                            //Estes dados deverão ser recuperados da base de DAados
                            $graficoProcessosPorTipo = new Column3DGraficoXmlBO("Processos por Status de Credenciamento ". "( Total: ".$obTotalizador->TNumerico2string() . ") ");
                            $xml = $graficoProcessosPorTipo->gerarXmlGrafico($arName, $arValue, true);
                            echo html_entity_decode($xml);
                            break;
            case 'situacaoprocesso':
                            //Recuperar os dados dos Processos por Situação
                            $daoPcp = new VwPcpBuscaTipoDAO();
                            $coEntidade = "";
                            $sgEstado = "";
                            $DadosPcp = $daoPcp->retornaPcpPorTipo($coEntidade, $sgEstado,true);
                            $vlTotalPcpSituacao = 0;
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($DadosPcp as $indice => $arProcessos) {
                                foreach ($arProcessos as $arTiposProcessos) {
                                    if (!isset($arName[$arTiposProcessos['no_situacao_pcp']])) {
                                        $arName[$arTiposProcessos['no_situacao_pcp']] = $arTiposProcessos['no_situacao_pcp'];
                                    } else {
                                        $arName[$arTiposProcessos['no_situacao_pcp']] = $arTiposProcessos['no_situacao_pcp'];
                                    }
                                    $arValue[$arTiposProcessos['no_situacao_pcp']] += $arTiposProcessos['qt_pcp'];
                                    $vlTotalPcpSituacao += $arTiposProcessos['qt_pcp'];
                                }
                            }

                            $obTotalizador = new TNumerico($vlTotalPcpSituacao, 0);
                            //Chama a classe de utilitarios
                            $utilitario = new UtilsBO();
                            $utilitario->gerarArrayNumericoPorArrayAssociativo($arName);
                            $utilitario->gerarArrayNumericoPorArrayAssociativo($arValue);
                            //Estes dados deverão ser recuperados da base de DAados
                            $graficoProcessosPorSituacao = new Column3DGraficoXmlBO("Processos por Situação ". "(Total: ". $obTotalizador->TNumerico2string() . ") ");
                            $xml = $graficoProcessosPorSituacao->gerarXmlGrafico($arName, $arValue, true);
                            echo html_entity_decode($xml);
                            break;
            case 'tipoprograma':
                            $daoPrograma = new VwProgramaBuscaDAO();
                            $coEntidade = "";
                            $sgEstado = "";
                            $arDadosPrograma = $daoPrograma->retornaPrograma($coEntidade, $sgEstado);
                            $vlTotalProgramas = 0;
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosPrograma as $arDados) {
                                $arName[] = $arDados['no_situacao_programa'];
                                $arValue[] = $arDados['qt_programas'];
                                $vlTotalProgramas += $arDados['qt_programas'];
                            }
                            $obTotalizador = new TNumerico($vlTotalProgramas, 0);
                            //Estes dados deverão ser recuperados da base de DAados
                            $graficoProcessosPorSituacao = new Column3DGraficoXmlBO("Tipos dos Programas " ."(Total: ". $obTotalizador->TNumerico2string() . ") ");
                            $xml = $graficoProcessosPorSituacao->gerarXmlGrafico($arName, $arValue, true);
                            echo html_entity_decode($xml);
                            break;
            case 'residentesAtivosPorPeriodo':
                            $daoResidencia = new VwResidenciaSituacaoAtualDAO();
                            $coEntidade = "";
                            $sgEstado = "";
                            $arDadosResidencia = $daoResidencia->retornaResidencia($coEntidade, $sgEstado);
                            $vlTotalAtivos = 0;
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosResidencia as $arDados) {
                                $arName[] = $arDados['sg_periodo'];
                                $arValue[] = $arDados['total'];
                                $vlTotalAtivos += $arDados['total'];
                            }
                            $obTotalizador = new TNumerico($vlTotalAtivos, 0);

                            //Estes dados deverão ser recuperados da base de DAados
                            $graficoResidentesPorPeriodo = new Column3DGraficoXmlBO("Residentes Ativos por Periodo " . "( Total: ". $obTotalizador->TNumerico2string() . " )");
                            $xml = $graficoResidentesPorPeriodo->gerarXmlGrafico($arName, $arValue, true);
                            echo html_entity_decode($xml);
                            break;
            case 'residentesPorSituacao':
                            $daoResidencia = new VwResidenciaSituacaoAtualDAO();
                            $coEntidade = "";
                            $sgEstado = "";
                            $arDadosResidenciaPorSituacao = $daoResidencia->retornaResidenciaSituacao($coEntidade, $sgEstado);
                            $vlTotalSituacao = 0;
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosResidenciaPorSituacao as $arDados) {
                                $arName[] = $arDados['no_situacao_residencia'];
                                $arValue[] = $arDados['total'];
                                $vlTotalSituacao += $arDados['total'];
                            }
                            $obTotalizador = new TNumerico($vlTotalSituacao, 0);
                            //Estes dados deverão ser recuperados da base de DAados
                            $graficoResidenciaPorSituacao = new Column3DGraficoXmlBO("Residentes por Situação " . "( Total: ". $obTotalizador->TNumerico2string() . " )");
                            $xml = $graficoResidenciaPorSituacao->gerarXmlGrafico($arName, $arValue, true);
                            echo html_entity_decode($xml);
                            break;
            case 'instituicaoPorUF':
                            $daoEntidade = new EntidadeDAO();
                            $arDadosInstituicao = $daoEntidade->retornaInstituicao('');
                            //Montagem do Array que sera utilizado para criação do XML
                            foreach ($arDadosInstituicao as $arDados) {
                                $arName[] = $arDados['sg_estado'];
                                $arValue[] = $arDados['count'];
                            }
                            //Montando Totalizador do Gráfico
                            $obTotalizador = new TNumerico($daoEntidade->retornaTotalEntidades(), 0);

                            //Estes dados deverão ser recuperados da base de Dados
                            $graficoInstituicaoPorUf = new Column3DGraficoXmlBO("Instituições por UF ". "( Total: " .  $obTotalizador->TNumerico2string() . " )");
                            $xml = $graficoInstituicaoPorUf->gerarXmlGrafico($arName, $arValue, true);

                            echo html_entity_decode($xml);
                            break;
           
        }
    }

}
