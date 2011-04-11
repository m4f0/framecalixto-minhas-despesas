--
-- PostgreSQL database dump
--

-- Dumped from database version 9.0.3
-- Dumped by pg_dump version 9.0.3
-- Started on 2011-04-11 03:47:34 BRT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 362 (class 2612 OID 11574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 18 (class 1255 OID 16513)
-- Dependencies: 362 5
-- Name: accent_remove(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION accent_remove(text_input character varying) RETURNS character varying
    LANGUAGE plpgsql STRICT
    AS $$
			DECLARE 
				text_output varchar;
			BEGIN	
				text_output = text_input;

				text_output = replace(text_output,'Á','A');
				text_output = replace(text_output,'á','a');
				text_output = replace(text_output,'à','a');
				text_output = replace(text_output,'À','A');
				text_output = replace(text_output,'â','a');
				text_output = replace(text_output,'Â','A');
				text_output = replace(text_output,'ä','a');
				text_output = replace(text_output,'Ä','A');
				text_output = replace(text_output,'ã','a');
				text_output = replace(text_output,'Ã','A');
				text_output = replace(text_output,'å','a');
				text_output = replace(text_output,'Å','A');
				text_output = replace(text_output,'ð','o');
				text_output = replace(text_output,'é','e');
				text_output = replace(text_output,'É','E');
				text_output = replace(text_output,'È','E');
				text_output = replace(text_output,'è','e');
				text_output = replace(text_output,'Ê','E');
				text_output = replace(text_output,'ê','e');
				text_output = replace(text_output,'Ë','E');
				text_output = replace(text_output,'ë','e');
				text_output = replace(text_output,'í','i');
				text_output = replace(text_output,'Í','I');
				text_output = replace(text_output,'ì','i');
				text_output = replace(text_output,'Ì','I');
				text_output = replace(text_output,'î','i');
				text_output = replace(text_output,'Î','I');
				text_output = replace(text_output,'ï','i');
				text_output = replace(text_output,'Ï','I');
				text_output = replace(text_output,'ñ','n');
				text_output = replace(text_output,'Ñ','N');
				text_output = replace(text_output,'ó','o');
				text_output = replace(text_output,'Ó','O');
				text_output = replace(text_output,'Ò','O');
				text_output = replace(text_output,'ò','o');
				text_output = replace(text_output,'Ô','O');
				text_output = replace(text_output,'ô','o');
				text_output = replace(text_output,'Ö','O');
				text_output = replace(text_output,'ö','o');
				text_output = replace(text_output,'õ','o');
				text_output = replace(text_output,'Õ','O');
				text_output = replace(text_output,'Ú','U');
				text_output = replace(text_output,'ú','u');
				text_output = replace(text_output,'ù','u');
				text_output = replace(text_output,'Ù','U');
				text_output = replace(text_output,'û','u');
				text_output = replace(text_output,'Û','U');
				text_output = replace(text_output,'ü','u');
				text_output = replace(text_output,'Ü','U');
				text_output = replace(text_output,'ý','y');
				text_output = replace(text_output,'Ý','Y');
				text_output = replace(text_output,'ÿ','y');
				text_output = replace(text_output,'Ç','C');
				text_output = replace(text_output,'ç','c');
				return text_output;
			end; $$;


ALTER FUNCTION public.accent_remove(text_input character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1563 (class 1259 OID 16436)
-- Dependencies: 5
-- Name: acesso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE acesso (
    aces_id_acesso numeric(10,0) NOT NULL,
    aces_id_perfil numeric(10,0),
    aces_id_usuario numeric(10,0),
    aces_nm_acesso character varying(500) NOT NULL,
    aces_dt_inicio timestamp without time zone,
    aces_dt_fim timestamp without time zone
);


ALTER TABLE public.acesso OWNER TO postgres;

--
-- TOC entry 1937 (class 0 OID 0)
-- Dependencies: 1563
-- Name: TABLE acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE acesso IS 'Acesso';


--
-- TOC entry 1938 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_id_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_id_acesso IS 'Informe o código';


--
-- TOC entry 1939 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_id_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_id_perfil IS 'Informe o Perfil';


--
-- TOC entry 1940 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_id_usuario IS 'Informe o Usuário';


--
-- TOC entry 1941 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_nm_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_nm_acesso IS 'Informe o nome do acesso';


--
-- TOC entry 1942 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_dt_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_dt_inicio IS 'Informe a data de início';


--
-- TOC entry 1943 (class 0 OID 0)
-- Dependencies: 1563
-- Name: COLUMN acesso.aces_dt_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN acesso.aces_dt_fim IS 'Informe a data fim';


--
-- TOC entry 1555 (class 1259 OID 16395)
-- Dependencies: 5
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    esta_id_estado numeric(2,0) NOT NULL,
    esta_sg_sigla character varying(2) NOT NULL,
    esta_nm_estado character varying(70) NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 1944 (class 0 OID 0)
-- Dependencies: 1555
-- Name: TABLE estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE estado IS 'Estado';


--
-- TOC entry 1945 (class 0 OID 0)
-- Dependencies: 1555
-- Name: COLUMN estado.esta_id_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN estado.esta_id_estado IS 'Informe o código';


--
-- TOC entry 1946 (class 0 OID 0)
-- Dependencies: 1555
-- Name: COLUMN estado.esta_sg_sigla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN estado.esta_sg_sigla IS 'Informe a sigla';


--
-- TOC entry 1947 (class 0 OID 0)
-- Dependencies: 1555
-- Name: COLUMN estado.esta_nm_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN estado.esta_nm_estado IS 'Informe o nome';


--
-- TOC entry 1575 (class 1259 OID 16534)
-- Dependencies: 5
-- Name: fin_categorias_despesas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_categorias_despesas (
    id_categoria_despesa numeric(8,0) NOT NULL,
    nm_categoria_despesa character varying(200) NOT NULL
);


ALTER TABLE public.fin_categorias_despesas OWNER TO postgres;

--
-- TOC entry 1948 (class 0 OID 0)
-- Dependencies: 1575
-- Name: TABLE fin_categorias_despesas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_categorias_despesas IS 'Categoria Despesa';


--
-- TOC entry 1949 (class 0 OID 0)
-- Dependencies: 1575
-- Name: COLUMN fin_categorias_despesas.id_categoria_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_categorias_despesas.id_categoria_despesa IS 'Identificador da Categoria Despesa';


--
-- TOC entry 1950 (class 0 OID 0)
-- Dependencies: 1575
-- Name: COLUMN fin_categorias_despesas.nm_categoria_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_categorias_despesas.nm_categoria_despesa IS 'Nome da categoria da Despesa';


--
-- TOC entry 1574 (class 1259 OID 16532)
-- Dependencies: 5
-- Name: fin_categorias_despesas_id_categoria_despesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_categorias_despesas_id_categoria_despesa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_categorias_despesas_id_categoria_despesa_seq OWNER TO postgres;

--
-- TOC entry 1951 (class 0 OID 0)
-- Dependencies: 1574
-- Name: fin_categorias_despesas_id_categoria_despesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_categorias_despesas_id_categoria_despesa_seq', 9, true);


--
-- TOC entry 1580 (class 1259 OID 16565)
-- Dependencies: 5
-- Name: fin_despesas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_despesas (
    id_despesa numeric(8,0) NOT NULL,
    id_categoria_despesa numeric(8,0) NOT NULL,
    nm_despesa character varying(50) NOT NULL,
    ds_despesa character varying(100)
);


ALTER TABLE public.fin_despesas OWNER TO postgres;

--
-- TOC entry 1952 (class 0 OID 0)
-- Dependencies: 1580
-- Name: TABLE fin_despesas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_despesas IS 'Despesas';


--
-- TOC entry 1953 (class 0 OID 0)
-- Dependencies: 1580
-- Name: COLUMN fin_despesas.id_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_despesas.id_despesa IS 'Identificador da Despesa';


--
-- TOC entry 1954 (class 0 OID 0)
-- Dependencies: 1580
-- Name: COLUMN fin_despesas.id_categoria_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_despesas.id_categoria_despesa IS 'Identificador da Categoria da Despesa';


--
-- TOC entry 1955 (class 0 OID 0)
-- Dependencies: 1580
-- Name: COLUMN fin_despesas.nm_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_despesas.nm_despesa IS 'Nome da Despesa';


--
-- TOC entry 1956 (class 0 OID 0)
-- Dependencies: 1580
-- Name: COLUMN fin_despesas.ds_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_despesas.ds_despesa IS 'Descrição da Despesa';


--
-- TOC entry 1579 (class 1259 OID 16563)
-- Dependencies: 5
-- Name: fin_despesas_id_despesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_despesas_id_despesa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_despesas_id_despesa_seq OWNER TO postgres;

--
-- TOC entry 1957 (class 0 OID 0)
-- Dependencies: 1579
-- Name: fin_despesas_id_despesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_despesas_id_despesa_seq', 20, true);


--
-- TOC entry 1576 (class 1259 OID 16541)
-- Dependencies: 5
-- Name: fin_destino_pagamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_destino_pagamento (
    id_destino_pagamento numeric(8,0) NOT NULL,
    nm_destino_pagamento character varying(100) NOT NULL
);


ALTER TABLE public.fin_destino_pagamento OWNER TO postgres;

--
-- TOC entry 1958 (class 0 OID 0)
-- Dependencies: 1576
-- Name: TABLE fin_destino_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_destino_pagamento IS 'Destino do Pagamento, ou seja para onde vai o dinheiro';


--
-- TOC entry 1959 (class 0 OID 0)
-- Dependencies: 1576
-- Name: COLUMN fin_destino_pagamento.id_destino_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_destino_pagamento.id_destino_pagamento IS 'Identificador do Destino do Pagamento';


--
-- TOC entry 1960 (class 0 OID 0)
-- Dependencies: 1576
-- Name: COLUMN fin_destino_pagamento.nm_destino_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_destino_pagamento.nm_destino_pagamento IS 'Destino do Pagamento';


--
-- TOC entry 1587 (class 1259 OID 16752)
-- Dependencies: 5
-- Name: fin_destino_pagamento_id_destino_pagamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_destino_pagamento_id_destino_pagamento_seq
    START WITH 7
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_destino_pagamento_id_destino_pagamento_seq OWNER TO postgres;

--
-- TOC entry 1961 (class 0 OID 0)
-- Dependencies: 1587
-- Name: fin_destino_pagamento_id_destino_pagamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_destino_pagamento_id_destino_pagamento_seq', 7, false);


--
-- TOC entry 1573 (class 1259 OID 16527)
-- Dependencies: 5
-- Name: fin_formas_pagamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_formas_pagamento (
    id_forma_pagamento numeric(8,0) NOT NULL,
    nm_forma_pagamento character varying(100) NOT NULL
);


ALTER TABLE public.fin_formas_pagamento OWNER TO postgres;

--
-- TOC entry 1962 (class 0 OID 0)
-- Dependencies: 1573
-- Name: TABLE fin_formas_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_formas_pagamento IS 'Formas Pagamento';


--
-- TOC entry 1963 (class 0 OID 0)
-- Dependencies: 1573
-- Name: COLUMN fin_formas_pagamento.id_forma_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_formas_pagamento.id_forma_pagamento IS 'Identificador da Forma de Pagamento';


--
-- TOC entry 1964 (class 0 OID 0)
-- Dependencies: 1573
-- Name: COLUMN fin_formas_pagamento.nm_forma_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_formas_pagamento.nm_forma_pagamento IS 'Noma da Forma de Pagamento';


--
-- TOC entry 1572 (class 1259 OID 16525)
-- Dependencies: 5
-- Name: fin_formas_pagamento_id_forma_pagamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_formas_pagamento_id_forma_pagamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_formas_pagamento_id_forma_pagamento_seq OWNER TO postgres;

--
-- TOC entry 1965 (class 0 OID 0)
-- Dependencies: 1572
-- Name: fin_formas_pagamento_id_forma_pagamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_formas_pagamento_id_forma_pagamento_seq', 5, true);


--
-- TOC entry 1582 (class 1259 OID 16577)
-- Dependencies: 1865 5
-- Name: fin_historico_gastos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_historico_gastos (
    id_historico_gasto numeric(8,0) NOT NULL,
    id_despesa numeric(8,0) NOT NULL,
    id_pagamento numeric(8,0) NOT NULL,
    dt_despesa timestamp without time zone NOT NULL,
    dt_pagamento timestamp without time zone,
    dt_vencimento timestamp without time zone,
    vl_despesa numeric(8,0),
    cs_pago numeric(1,0) DEFAULT 0
);


ALTER TABLE public.fin_historico_gastos OWNER TO postgres;

--
-- TOC entry 1966 (class 0 OID 0)
-- Dependencies: 1582
-- Name: TABLE fin_historico_gastos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_historico_gastos IS 'Historico Gastos';


--
-- TOC entry 1967 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.id_historico_gasto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.id_historico_gasto IS 'Identificador do Gasto';


--
-- TOC entry 1968 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.id_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.id_despesa IS 'Identificador da Despesa';


--
-- TOC entry 1969 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.id_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.id_pagamento IS 'Identificador do Pagamento';


--
-- TOC entry 1970 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.dt_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.dt_despesa IS 'Data do Gasto';


--
-- TOC entry 1971 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.dt_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.dt_pagamento IS 'Data do Pagamento';


--
-- TOC entry 1972 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.dt_vencimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.dt_vencimento IS 'Data do Vencimento';


--
-- TOC entry 1973 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.vl_despesa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.vl_despesa IS 'Valor da Despesa Feita';


--
-- TOC entry 1974 (class 0 OID 0)
-- Dependencies: 1582
-- Name: COLUMN fin_historico_gastos.cs_pago; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_historico_gastos.cs_pago IS 'Foi Pago';


--
-- TOC entry 1581 (class 1259 OID 16575)
-- Dependencies: 5
-- Name: fin_historico_gastos_id_historico_gasto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_historico_gastos_id_historico_gasto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_historico_gastos_id_historico_gasto_seq OWNER TO postgres;

--
-- TOC entry 1975 (class 0 OID 0)
-- Dependencies: 1581
-- Name: fin_historico_gastos_id_historico_gasto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_historico_gastos_id_historico_gasto_seq', 26, true);


--
-- TOC entry 1578 (class 1259 OID 16548)
-- Dependencies: 5
-- Name: fin_pagamentos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_pagamentos (
    id_pagamento numeric(8,0) NOT NULL,
    id_forma_pagamento numeric(8,0),
    id_destino_pagamento numeric(8,0)
);


ALTER TABLE public.fin_pagamentos OWNER TO postgres;

--
-- TOC entry 1976 (class 0 OID 0)
-- Dependencies: 1578
-- Name: TABLE fin_pagamentos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE fin_pagamentos IS 'Pagamento';


--
-- TOC entry 1977 (class 0 OID 0)
-- Dependencies: 1578
-- Name: COLUMN fin_pagamentos.id_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_pagamentos.id_pagamento IS 'Identificador do Pagamento';


--
-- TOC entry 1978 (class 0 OID 0)
-- Dependencies: 1578
-- Name: COLUMN fin_pagamentos.id_forma_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_pagamentos.id_forma_pagamento IS 'Identificador da Forma de Pagamento';


--
-- TOC entry 1979 (class 0 OID 0)
-- Dependencies: 1578
-- Name: COLUMN fin_pagamentos.id_destino_pagamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fin_pagamentos.id_destino_pagamento IS 'Identificador do Destino do Pagamento';


--
-- TOC entry 1577 (class 1259 OID 16546)
-- Dependencies: 5
-- Name: fin_pagamentos_id_pagamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_pagamentos_id_pagamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_pagamentos_id_pagamento_seq OWNER TO postgres;

--
-- TOC entry 1980 (class 0 OID 0)
-- Dependencies: 1577
-- Name: fin_pagamentos_id_pagamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_pagamentos_id_pagamento_seq', 12, true);


--
-- TOC entry 1584 (class 1259 OID 16732)
-- Dependencies: 5
-- Name: fin_previsao_gastos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_previsao_gastos (
    id_previsao_gasto numeric(8,0) NOT NULL,
    id_despesa numeric(8,0),
    vl_previsto numeric(8,2),
    dt_mes_ano_referencia timestamp without time zone
);


ALTER TABLE public.fin_previsao_gastos OWNER TO postgres;

--
-- TOC entry 1585 (class 1259 OID 16737)
-- Dependencies: 5
-- Name: fin_previsao_gastos_id_previsao_gasto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_previsao_gastos_id_previsao_gasto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_previsao_gastos_id_previsao_gasto_seq OWNER TO postgres;

--
-- TOC entry 1981 (class 0 OID 0)
-- Dependencies: 1585
-- Name: fin_previsao_gastos_id_previsao_gasto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_previsao_gastos_id_previsao_gasto_seq', 1, true);


--
-- TOC entry 1583 (class 1259 OID 16710)
-- Dependencies: 5
-- Name: fin_receitas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fin_receitas (
    id_receita numeric(8,0) NOT NULL,
    nm_receita character varying(40) NOT NULL,
    ds_receita character varying(1000),
    vl_despesa numeric(8,2) NOT NULL,
    dt_inicio_receita timestamp without time zone NOT NULL,
    dt_fim_receita timestamp without time zone NOT NULL
);


ALTER TABLE public.fin_receitas OWNER TO postgres;

--
-- TOC entry 1586 (class 1259 OID 16739)
-- Dependencies: 5
-- Name: fin_receitas_id_receita_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fin_receitas_id_receita_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fin_receitas_id_receita_seq OWNER TO postgres;

--
-- TOC entry 1982 (class 0 OID 0)
-- Dependencies: 1586
-- Name: fin_receitas_id_receita_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fin_receitas_id_receita_seq', 2, true);


--
-- TOC entry 1567 (class 1259 OID 16473)
-- Dependencies: 5
-- Name: log_acesso; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE log_acesso (
    loac_id_log_acesso numeric(4,0) NOT NULL,
    loac_id_usuario numeric(4,0),
    loac_tx_url character varying(3000),
    loac_dt_acesso timestamp without time zone,
    loac_tx_ip character varying(25)
);


ALTER TABLE public.log_acesso OWNER TO postgres;

--
-- TOC entry 1983 (class 0 OID 0)
-- Dependencies: 1567
-- Name: TABLE log_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE log_acesso IS 'Log Acesso';


--
-- TOC entry 1984 (class 0 OID 0)
-- Dependencies: 1567
-- Name: COLUMN log_acesso.loac_id_log_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN log_acesso.loac_id_log_acesso IS 'Informe o código';


--
-- TOC entry 1985 (class 0 OID 0)
-- Dependencies: 1567
-- Name: COLUMN log_acesso.loac_id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN log_acesso.loac_id_usuario IS 'Informe o usuário';


--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 1567
-- Name: COLUMN log_acesso.loac_tx_url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN log_acesso.loac_tx_url IS 'Informe a URL';


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 1567
-- Name: COLUMN log_acesso.loac_dt_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN log_acesso.loac_dt_acesso IS 'Informe a data do acesso';


--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 1567
-- Name: COLUMN log_acesso.loac_tx_ip; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN log_acesso.loac_tx_ip IS 'Informe o IP do cliente';


--
-- TOC entry 1569 (class 1259 OID 16488)
-- Dependencies: 5
-- Name: menu; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menu (
    menu_id_menu numeric(4,0) NOT NULL,
    menu_nm_menu character varying(50) NOT NULL,
    menu_tx_descricao character varying(200) NOT NULL,
    menu_cl_menu character varying(60) NOT NULL,
    ide numeric(50,0),
    idd numeric(50,0)
);


ALTER TABLE public.menu OWNER TO postgres;

--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 1569
-- Name: TABLE menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE menu IS 'Menu';


--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.menu_id_menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.menu_id_menu IS 'Informe o código';


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.menu_nm_menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.menu_nm_menu IS 'Informe o nome';


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.menu_tx_descricao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.menu_tx_descricao IS 'Informe a descrição';


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.menu_cl_menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.menu_cl_menu IS 'Grupo do menu';


--
-- TOC entry 1994 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.ide; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.ide IS 'Chave Esquerda';


--
-- TOC entry 1995 (class 0 OID 0)
-- Dependencies: 1569
-- Name: COLUMN menu.idd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu.idd IS 'Chave Direita';


--
-- TOC entry 1571 (class 1259 OID 16495)
-- Dependencies: 5
-- Name: menu_item; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menu_item (
    meit_id_menu_item numeric(4,0) NOT NULL,
    meit_id_pai numeric(4,0) NOT NULL,
    meit_id_menu numeric(4,0) NOT NULL,
    meit_nr_posicao numeric(10,0),
    meit_tx_url character varying(1024),
    meit_nm_alvo character varying(20),
    meit_tx_imagem character varying(1024),
    meit_bo_destravado character varying(3),
    meit_nm_menu_item character varying(50),
    meit_tx_descricao character varying(3000)
);


ALTER TABLE public.menu_item OWNER TO postgres;

--
-- TOC entry 1996 (class 0 OID 0)
-- Dependencies: 1571
-- Name: TABLE menu_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE menu_item IS 'Menu Item';


--
-- TOC entry 1997 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_id_menu_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_id_menu_item IS 'Informe o código';


--
-- TOC entry 1998 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_id_pai; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_id_pai IS 'Informe o item pai';


--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_id_menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_id_menu IS 'Informe o menu';


--
-- TOC entry 2000 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_nr_posicao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_nr_posicao IS 'Informe a posição';


--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_tx_url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_tx_url IS 'Informe a URL';


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_nm_alvo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_nm_alvo IS 'Informe o alvo (target)';


--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_tx_imagem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_tx_imagem IS 'Informe o caminho da imagem';


--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_bo_destravado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_bo_destravado IS 'Informe se o item é destravado do controle de acesso';


--
-- TOC entry 2005 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_nm_menu_item; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_nm_menu_item IS 'Informe o nome';


--
-- TOC entry 2006 (class 0 OID 0)
-- Dependencies: 1571
-- Name: COLUMN menu_item.meit_tx_descricao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN menu_item.meit_tx_descricao IS 'Informe a Descrição';


--
-- TOC entry 1561 (class 1259 OID 16429)
-- Dependencies: 5
-- Name: perfil; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE perfil (
    perf_id_perfil numeric(10,0) NOT NULL,
    perf_nm_perfil character varying(60) NOT NULL,
    perf_bo_log_acesso character varying(3)
);


ALTER TABLE public.perfil OWNER TO postgres;

--
-- TOC entry 2007 (class 0 OID 0)
-- Dependencies: 1561
-- Name: TABLE perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE perfil IS 'Perfil';


--
-- TOC entry 2008 (class 0 OID 0)
-- Dependencies: 1561
-- Name: COLUMN perfil.perf_id_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN perfil.perf_id_perfil IS 'Identificador do Perfil';


--
-- TOC entry 2009 (class 0 OID 0)
-- Dependencies: 1561
-- Name: COLUMN perfil.perf_nm_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN perfil.perf_nm_perfil IS 'Nome do Perfil';


--
-- TOC entry 2010 (class 0 OID 0)
-- Dependencies: 1561
-- Name: COLUMN perfil.perf_bo_log_acesso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN perfil.perf_bo_log_acesso IS 'Logar';


--
-- TOC entry 1557 (class 1259 OID 16402)
-- Dependencies: 5
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pessoa (
    pess_id_pessoa numeric(10,0) NOT NULL,
    pess_cs_pessoa character varying(2) NOT NULL,
    pess_nm_pessoa character varying(100) NOT NULL,
    pess_nr_documento character varying(25),
    pess_nr_cep character varying(8),
    pess_nr_telefone character varying(21),
    pess_nr_telefone2 character varying(21),
    pess_nr_telefone3 character varying(21),
    pess_id_estado numeric(2,0),
    pess_nm_municipio character varying(100),
    pess_nm_bairro character varying(100),
    pess_tx_endereco character varying(254),
    pess_nm_email character varying(255),
    pess_nm_site character varying(1000)
);


ALTER TABLE public.pessoa OWNER TO postgres;

--
-- TOC entry 2011 (class 0 OID 0)
-- Dependencies: 1557
-- Name: TABLE pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE pessoa IS 'Pessoa';


--
-- TOC entry 2012 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_id_pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_id_pessoa IS 'Informe o código';


--
-- TOC entry 2013 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_cs_pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_cs_pessoa IS 'Informe o tipo da pessoa';


--
-- TOC entry 2014 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nm_pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nm_pessoa IS 'Informe o nome da pessoa';


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nr_documento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nr_documento IS 'Informe o CPF/CNPJ';


--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nr_cep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nr_cep IS 'Informe o CEP';


--
-- TOC entry 2017 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nr_telefone; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nr_telefone IS 'Informe o telefone';


--
-- TOC entry 2018 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nr_telefone2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nr_telefone2 IS 'Informe o celular';


--
-- TOC entry 2019 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nr_telefone3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nr_telefone3 IS 'Informe o telefone';


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_id_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_id_estado IS 'Informe o estado';


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nm_municipio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nm_municipio IS 'Informe o município';


--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nm_bairro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nm_bairro IS 'Informe o bairro';


--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_tx_endereco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_tx_endereco IS 'Informe o endereço';


--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nm_email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nm_email IS 'Informe o e-mail';


--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 1557
-- Name: COLUMN pessoa.pess_nm_site; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN pessoa.pess_nm_site IS 'Informe a URL do Site';


--
-- TOC entry 1562 (class 1259 OID 16434)
-- Dependencies: 5
-- Name: sq_acesso; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_acesso
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_acesso OWNER TO postgres;

--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 1562
-- Name: sq_acesso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_acesso', 1, false);


--
-- TOC entry 1554 (class 1259 OID 16393)
-- Dependencies: 5
-- Name: sq_estado; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_estado
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_estado OWNER TO postgres;

--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 1554
-- Name: sq_estado; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_estado', 27, true);


--
-- TOC entry 1566 (class 1259 OID 16471)
-- Dependencies: 5
-- Name: sq_log_acesso; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_log_acesso
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_log_acesso OWNER TO postgres;

--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 1566
-- Name: sq_log_acesso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_log_acesso', 1, false);


--
-- TOC entry 1568 (class 1259 OID 16486)
-- Dependencies: 5
-- Name: sq_menu; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_menu
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_menu OWNER TO postgres;

--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 1568
-- Name: sq_menu; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_menu', 1, false);


--
-- TOC entry 1570 (class 1259 OID 16493)
-- Dependencies: 5
-- Name: sq_menu_item; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_menu_item
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_menu_item OWNER TO postgres;

--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 1570
-- Name: sq_menu_item; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_menu_item', 1, false);


--
-- TOC entry 1560 (class 1259 OID 16427)
-- Dependencies: 5
-- Name: sq_perfil; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_perfil
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_perfil OWNER TO postgres;

--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 1560
-- Name: sq_perfil; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_perfil', 1, false);


--
-- TOC entry 1556 (class 1259 OID 16400)
-- Dependencies: 5
-- Name: sq_pessoa; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_pessoa
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_pessoa OWNER TO postgres;

--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 1556
-- Name: sq_pessoa; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_pessoa', 4, true);


--
-- TOC entry 1558 (class 1259 OID 16415)
-- Dependencies: 5
-- Name: sq_usuario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_usuario OWNER TO postgres;

--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 1558
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 1, false);


--
-- TOC entry 1564 (class 1259 OID 16454)
-- Dependencies: 5
-- Name: sq_usuario_perfil; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_usuario_perfil
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sq_usuario_perfil OWNER TO postgres;

--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 1564
-- Name: sq_usuario_perfil; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario_perfil', 1, false);


--
-- TOC entry 1559 (class 1259 OID 16417)
-- Dependencies: 5
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    usua_id_usuario numeric(10,0) NOT NULL,
    usua_id_pessoa numeric(10,0) NOT NULL,
    usua_nm_login character varying(25) NOT NULL,
    usua_nm_senha character varying(32) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 1559
-- Name: TABLE usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE usuario IS 'Usuário';


--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 1559
-- Name: COLUMN usuario.usua_id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.usua_id_usuario IS 'Informe o código';


--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 1559
-- Name: COLUMN usuario.usua_id_pessoa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.usua_id_pessoa IS 'Informe a pessoa responsável';


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 1559
-- Name: COLUMN usuario.usua_nm_login; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.usua_nm_login IS 'Informe o Login';


--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 1559
-- Name: COLUMN usuario.usua_nm_senha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario.usua_nm_senha IS 'Informe a senha';


--
-- TOC entry 1565 (class 1259 OID 16456)
-- Dependencies: 5
-- Name: usuario_perfil; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario_perfil (
    usup_id_usuario_perfil numeric(10,0) NOT NULL,
    usup_id_usuario numeric(10,0) NOT NULL,
    usup_id_perfil numeric(10,0) NOT NULL
);


ALTER TABLE public.usuario_perfil OWNER TO postgres;

--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 1565
-- Name: TABLE usuario_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE usuario_perfil IS 'Usuário Perfil';


--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 1565
-- Name: COLUMN usuario_perfil.usup_id_usuario_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_perfil.usup_id_usuario_perfil IS 'Informe o código';


--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 1565
-- Name: COLUMN usuario_perfil.usup_id_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_perfil.usup_id_usuario IS 'Informe o usuário';


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 1565
-- Name: COLUMN usuario_perfil.usup_id_perfil; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN usuario_perfil.usup_id_perfil IS 'Informe o perfil';


--
-- TOC entry 1919 (class 0 OID 16436)
-- Dependencies: 1563
-- Data for Name: acesso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY acesso (aces_id_acesso, aces_id_perfil, aces_id_usuario, aces_nm_acesso, aces_dt_inicio, aces_dt_fim) FROM stdin;
\.


--
-- TOC entry 1915 (class 0 OID 16395)
-- Dependencies: 1555
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estado (esta_id_estado, esta_sg_sigla, esta_nm_estado) FROM stdin;
1	AM	Amazônia
2	PA	Pará
3	MT	Mato Grosso
4	MG	Minas Gerais
5	BA	Bahia
6	MS	Mato Grosso do Sul
7	GO	Goiás
8	MA	Maranhão
9	RS	Rio Grande do Sul
10	TO	Tocantins
11	PI	Piauí
12	SP	São Paulo
13	RO	Roraima
14	RR	Rondônia
15	PR	Paraná
16	AC	Acre
17	CE	Ceará
18	AP	Amapá
19	PE	Pernambuco
20	SC	Santa Catarina
21	PB	Paraíba
22	RN	Rio Grande do Norte
23	ES	Espírito Santo
24	RJ	Rio de Janeiro
25	AL	Alagoas
26	SE	Sergipe
27	DF	Distrito Federal
\.


--
-- TOC entry 1925 (class 0 OID 16534)
-- Dependencies: 1575
-- Data for Name: fin_categorias_despesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_categorias_despesas (id_categoria_despesa, nm_categoria_despesa) FROM stdin;
1	Automóvel
2	Casa
3	Alimentação
4	Saúde
5	Vestuário
6	Despesas Médicas
7	Pessoal
8	Viagem
9	Investimento
\.


--
-- TOC entry 1928 (class 0 OID 16565)
-- Dependencies: 1580
-- Data for Name: fin_despesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_despesas (id_despesa, id_categoria_despesa, nm_despesa, ds_despesa) FROM stdin;
1	1	Limpeza	Lavagem do Carro
2	3	Almoço	\N
3	3	Lanche da Manhã	\N
4	3	Lanche da Tarde	\N
5	1	Gasolina	\N
6	1	Estacionamento	\N
7	2	Energia Elétrica	\N
8	2	Água	\N
9	2	TV por Assinatura	\N
10	2	Internet	\N
12	3	Jantar	\N
14	7	Celular	\N
15	8	Bancorbrás	\N
17	1	Seguro	\N
13	7	Passagens Aéreas	Viagem de Férias
16	1	Documentos Obrigatórios - IPVA	\N
18	9	Poupança CDB Santander	CDB
11	2	Diarista	Limpeza do Apartamento/Roupas
19	7	Supermercado	Despesas Gerais de Supermercado
20	2	Aluguel	Aluguel do Apartamento em Aguas Claras
\.


--
-- TOC entry 1926 (class 0 OID 16541)
-- Dependencies: 1576
-- Data for Name: fin_destino_pagamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_destino_pagamento (id_destino_pagamento, nm_destino_pagamento) FROM stdin;
1	Mãe
2	Pai
3	Caixa Econômica Federal
4	Banco do Brasil
5	Santander
6	Keyla
7	Cartão Adicional Mesada
\.


--
-- TOC entry 1924 (class 0 OID 16527)
-- Dependencies: 1573
-- Data for Name: fin_formas_pagamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_formas_pagamento (id_forma_pagamento, nm_forma_pagamento) FROM stdin;
1	Cheque
2	Dinheiro
3	Crédito
4	Débito
5	Boleto
\.


--
-- TOC entry 1929 (class 0 OID 16577)
-- Dependencies: 1582
-- Data for Name: fin_historico_gastos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_historico_gastos (id_historico_gasto, id_despesa, id_pagamento, dt_despesa, dt_pagamento, dt_vencimento, vl_despesa, cs_pago) FROM stdin;
2	4	6	2011-04-06 00:00:00	2011-04-06 00:00:00	2011-04-06 00:00:00	2	1
4	6	6	2011-04-04 00:00:00	2011-04-04 00:00:00	2011-04-04 00:00:00	2	1
5	12	6	2011-04-04 00:00:00	2011-04-04 00:00:00	2011-04-04 00:00:00	17	1
14	12	6	2011-04-05 00:00:00	2011-04-05 00:00:00	2011-04-05 00:00:00	9	1
1	1	6	2011-04-06 00:00:00	2011-04-06 00:00:00	2011-04-06 00:00:00	10	1
15	9	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-10 00:00:00	171	1
13	7	6	2011-04-08 00:00:00	2011-04-08 00:00:00	2011-04-18 00:00:00	92	1
17	10	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-05 00:00:00	125	1
18	16	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-13 00:00:00	183	1
19	16	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-13 00:00:00	101	1
20	14	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-07 00:00:00	211	1
21	13	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-12 00:00:00	547	1
23	12	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-07 00:00:00	3	1
11	3	6	2011-04-01 00:00:00	2011-04-01 00:00:00	2011-04-01 00:00:00	7	1
24	20	6	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-04-10 00:00:00	408	1
25	2	6	2011-04-09 00:00:00	2011-04-09 00:00:00	2011-04-09 00:00:00	15	1
22	2	11	2011-04-07 00:00:00	2011-04-07 00:00:00	2011-05-05 00:00:00	680	\N
12	12	11	2011-04-03 00:00:00	2011-04-03 00:00:00	2011-05-09 00:00:00	18	\N
8	5	12	2011-04-01 00:00:00	2011-04-01 00:00:00	2011-05-09 00:00:00	129	\N
7	2	11	2011-04-05 00:00:00	2011-04-05 00:00:00	2011-05-09 00:00:00	12	\N
3	5	11	2011-04-05 00:00:00	2011-04-05 00:00:00	2011-05-09 00:00:00	135	\N
6	2	11	2011-04-04 00:00:00	2011-04-04 00:00:00	2011-05-09 00:00:00	8	\N
9	2	11	2011-04-01 00:00:00	2011-04-01 00:00:00	2011-05-09 00:00:00	8	\N
10	2	11	2011-04-02 00:00:00	2011-04-02 00:00:00	2011-05-09 00:00:00	14	\N
26	11	6	2011-04-11 00:00:00	2011-04-11 00:00:00	2011-04-19 00:00:00	120	1
\.


--
-- TOC entry 1927 (class 0 OID 16548)
-- Dependencies: 1578
-- Data for Name: fin_pagamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_pagamentos (id_pagamento, id_forma_pagamento, id_destino_pagamento) FROM stdin;
1	1	1
2	1	2
3	3	5
4	4	5
5	3	4
6	4	4
7	2	6
8	3	3
9	4	3
10	2	1
11	3	7
12	3	1
\.


--
-- TOC entry 1931 (class 0 OID 16732)
-- Dependencies: 1584
-- Data for Name: fin_previsao_gastos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_previsao_gastos (id_previsao_gasto, id_despesa, vl_previsto, dt_mes_ano_referencia) FROM stdin;
1	11	120.00	2011-04-01 00:00:00
\.


--
-- TOC entry 1930 (class 0 OID 16710)
-- Dependencies: 1583
-- Data for Name: fin_receitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fin_receitas (id_receita, nm_receita, ds_receita, vl_despesa, dt_inicio_receita, dt_fim_receita) FROM stdin;
1	Faculdade Projeção	Professor Ensino Superior	2002.00	2011-02-01 00:00:00	2011-08-01 00:00:00
2	Contrato OEI-01	1 Parcela	14500.00	2011-02-01 00:00:00	2011-04-30 00:00:00
\.


--
-- TOC entry 1921 (class 0 OID 16473)
-- Dependencies: 1567
-- Data for Name: log_acesso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY log_acesso (loac_id_log_acesso, loac_id_usuario, loac_tx_url, loac_dt_acesso, loac_tx_ip) FROM stdin;
\.


--
-- TOC entry 1922 (class 0 OID 16488)
-- Dependencies: 1569
-- Data for Name: menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menu (menu_id_menu, menu_nm_menu, menu_tx_descricao, menu_cl_menu, ide, idd) FROM stdin;
\.


--
-- TOC entry 1923 (class 0 OID 16495)
-- Dependencies: 1571
-- Data for Name: menu_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menu_item (meit_id_menu_item, meit_id_pai, meit_id_menu, meit_nr_posicao, meit_tx_url, meit_nm_alvo, meit_tx_imagem, meit_bo_destravado, meit_nm_menu_item, meit_tx_descricao) FROM stdin;
\.


--
-- TOC entry 1918 (class 0 OID 16429)
-- Dependencies: 1561
-- Data for Name: perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY perfil (perf_id_perfil, perf_nm_perfil, perf_bo_log_acesso) FROM stdin;
\.


--
-- TOC entry 1916 (class 0 OID 16402)
-- Dependencies: 1557
-- Data for Name: pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pessoa (pess_id_pessoa, pess_cs_pessoa, pess_nm_pessoa, pess_nr_documento, pess_nr_cep, pess_nr_telefone, pess_nr_telefone2, pess_nr_telefone3, pess_id_estado, pess_nm_municipio, pess_nm_bairro, pess_tx_endereco, pess_nm_email, pess_nm_site) FROM stdin;
1	FI	Calixto Jorge	97158171900	72015015	69359037	81423181	21049952	27	Taguatinga	Taguatinga Sul	CSA 03 LOTE 14/15 APTO 206	calixto.jorge@gmail.com	www.basedainformacao.com.br
2	FI	Guilherme de Oliveira Fontenele	00356297110	70670000	6133441234	6196212011	\N	27	Brasília	Sudoeste	SQSW 103	guilherme@sybtaxbr.com	www.syntaxbr.com
3	FI	Elvis Chester	\N	72015025	\N	78455123	\N	27	Taguatinga	Taguatinga Sul	CSA 02	mulek@hotmail.com	www.basedainformacao.com.br
4	FI	Raul Maia	\N	\N	\N	\N	\N	16	\N	\N	\N	\N	\N
\.


--
-- TOC entry 1917 (class 0 OID 16417)
-- Dependencies: 1559
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (usua_id_usuario, usua_id_pessoa, usua_nm_login, usua_nm_senha) FROM stdin;
\.


--
-- TOC entry 1920 (class 0 OID 16456)
-- Dependencies: 1565
-- Data for Name: usuario_perfil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario_perfil (usup_id_usuario_perfil, usup_id_usuario, usup_id_perfil) FROM stdin;
\.


--
-- TOC entry 1875 (class 2606 OID 16443)
-- Dependencies: 1563 1563
-- Name: acesso_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY acesso
    ADD CONSTRAINT acesso_pk PRIMARY KEY (aces_id_acesso);


--
-- TOC entry 1867 (class 2606 OID 16399)
-- Dependencies: 1555 1555
-- Name: estado_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pk PRIMARY KEY (esta_id_estado);


--
-- TOC entry 1887 (class 2606 OID 16624)
-- Dependencies: 1575 1575
-- Name: fin_categorias_despesas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_categorias_despesas
    ADD CONSTRAINT fin_categorias_despesas_pk PRIMARY KEY (id_categoria_despesa);


--
-- TOC entry 1893 (class 2606 OID 16604)
-- Dependencies: 1580 1580
-- Name: fin_despesas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_despesas
    ADD CONSTRAINT fin_despesas_pk PRIMARY KEY (id_despesa);


--
-- TOC entry 1885 (class 2606 OID 16635)
-- Dependencies: 1573 1573
-- Name: fin_formas_pagamento_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_formas_pagamento
    ADD CONSTRAINT fin_formas_pagamento_pk PRIMARY KEY (id_forma_pagamento);


--
-- TOC entry 1895 (class 2606 OID 16646)
-- Dependencies: 1582 1582
-- Name: fin_historico_gastos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_historico_gastos
    ADD CONSTRAINT fin_historico_gastos_pk PRIMARY KEY (id_historico_gasto);


--
-- TOC entry 1889 (class 2606 OID 16671)
-- Dependencies: 1576 1576
-- Name: fin_origens_credito_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_destino_pagamento
    ADD CONSTRAINT fin_origens_credito_pk PRIMARY KEY (id_destino_pagamento);


--
-- TOC entry 1891 (class 2606 OID 16682)
-- Dependencies: 1578 1578
-- Name: fin_pagamentos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_pagamentos
    ADD CONSTRAINT fin_pagamentos_pk PRIMARY KEY (id_pagamento);


--
-- TOC entry 1879 (class 2606 OID 16480)
-- Dependencies: 1567 1567
-- Name: log_acesso_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY log_acesso
    ADD CONSTRAINT log_acesso_pk PRIMARY KEY (loac_id_log_acesso);


--
-- TOC entry 1883 (class 2606 OID 16502)
-- Dependencies: 1571 1571
-- Name: menu_item_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY menu_item
    ADD CONSTRAINT menu_item_pk PRIMARY KEY (meit_id_menu_item);


--
-- TOC entry 1881 (class 2606 OID 16492)
-- Dependencies: 1569 1569
-- Name: menu_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY menu
    ADD CONSTRAINT menu_pk PRIMARY KEY (menu_id_menu);


--
-- TOC entry 1873 (class 2606 OID 16433)
-- Dependencies: 1561 1561
-- Name: perfil_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY perfil
    ADD CONSTRAINT perfil_pk PRIMARY KEY (perf_id_perfil);


--
-- TOC entry 1869 (class 2606 OID 16409)
-- Dependencies: 1557 1557
-- Name: pessoa_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_pk PRIMARY KEY (pess_id_pessoa);


--
-- TOC entry 1899 (class 2606 OID 16736)
-- Dependencies: 1584 1584
-- Name: pk_id_previsao_gasto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_previsao_gastos
    ADD CONSTRAINT pk_id_previsao_gasto PRIMARY KEY (id_previsao_gasto);


--
-- TOC entry 1897 (class 2606 OID 16731)
-- Dependencies: 1583 1583
-- Name: pk_id_receita; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fin_receitas
    ADD CONSTRAINT pk_id_receita PRIMARY KEY (id_receita);


--
-- TOC entry 1877 (class 2606 OID 16460)
-- Dependencies: 1565 1565
-- Name: usuario_perfil_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario_perfil
    ADD CONSTRAINT usuario_perfil_pk PRIMARY KEY (usup_id_usuario_perfil);


--
-- TOC entry 1871 (class 2606 OID 16421)
-- Dependencies: 1559 1559
-- Name: usuario_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pk PRIMARY KEY (usua_id_usuario);


--
-- TOC entry 1902 (class 2606 OID 16444)
-- Dependencies: 1561 1563 1872
-- Name: acesso_aces_id_perfil_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acesso
    ADD CONSTRAINT acesso_aces_id_perfil_fk FOREIGN KEY (aces_id_perfil) REFERENCES perfil(perf_id_perfil);


--
-- TOC entry 1903 (class 2606 OID 16449)
-- Dependencies: 1563 1559 1870
-- Name: acesso_aces_id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY acesso
    ADD CONSTRAINT acesso_aces_id_usuario_fk FOREIGN KEY (aces_id_usuario) REFERENCES usuario(usua_id_usuario);


--
-- TOC entry 1911 (class 2606 OID 16625)
-- Dependencies: 1580 1886 1575
-- Name: fin_despesas_id_categoria_despesa_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_despesas
    ADD CONSTRAINT fin_despesas_id_categoria_despesa_fk FOREIGN KEY (id_categoria_despesa) REFERENCES fin_categorias_despesas(id_categoria_despesa);


--
-- TOC entry 1912 (class 2606 OID 16652)
-- Dependencies: 1892 1582 1580
-- Name: fin_historico_gastos_id_despesa_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_historico_gastos
    ADD CONSTRAINT fin_historico_gastos_id_despesa_fk FOREIGN KEY (id_despesa) REFERENCES fin_despesas(id_despesa);


--
-- TOC entry 1913 (class 2606 OID 16683)
-- Dependencies: 1582 1890 1578
-- Name: fin_historico_gastos_id_pagamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_historico_gastos
    ADD CONSTRAINT fin_historico_gastos_id_pagamento_fk FOREIGN KEY (id_pagamento) REFERENCES fin_pagamentos(id_pagamento);


--
-- TOC entry 1909 (class 2606 OID 16692)
-- Dependencies: 1573 1884 1578
-- Name: fin_pagamentos_id_forma_pagamento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_pagamentos
    ADD CONSTRAINT fin_pagamentos_id_forma_pagamento_fk FOREIGN KEY (id_forma_pagamento) REFERENCES fin_formas_pagamento(id_forma_pagamento);


--
-- TOC entry 1914 (class 2606 OID 16742)
-- Dependencies: 1584 1580 1892
-- Name: fk_id_despesa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_previsao_gastos
    ADD CONSTRAINT fk_id_despesa FOREIGN KEY (id_despesa) REFERENCES fin_despesas(id_despesa);


--
-- TOC entry 1910 (class 2606 OID 16747)
-- Dependencies: 1888 1578 1576
-- Name: fk_id_destino_pagamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fin_pagamentos
    ADD CONSTRAINT fk_id_destino_pagamento FOREIGN KEY (id_destino_pagamento) REFERENCES fin_destino_pagamento(id_destino_pagamento);


--
-- TOC entry 1906 (class 2606 OID 16481)
-- Dependencies: 1559 1567 1870
-- Name: log_acesso_loac_id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY log_acesso
    ADD CONSTRAINT log_acesso_loac_id_usuario_fk FOREIGN KEY (loac_id_usuario) REFERENCES usuario(usua_id_usuario);


--
-- TOC entry 1908 (class 2606 OID 16508)
-- Dependencies: 1880 1569 1571
-- Name: menu_item_meit_id_menu_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menu_item
    ADD CONSTRAINT menu_item_meit_id_menu_fk FOREIGN KEY (meit_id_menu) REFERENCES menu(menu_id_menu);


--
-- TOC entry 1907 (class 2606 OID 16503)
-- Dependencies: 1882 1571 1571
-- Name: menu_item_meit_id_pai_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY menu_item
    ADD CONSTRAINT menu_item_meit_id_pai_fk FOREIGN KEY (meit_id_pai) REFERENCES menu_item(meit_id_menu_item);


--
-- TOC entry 1900 (class 2606 OID 16410)
-- Dependencies: 1555 1557 1866
-- Name: pessoa_pess_id_estado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pessoa
    ADD CONSTRAINT pessoa_pess_id_estado_fk FOREIGN KEY (pess_id_estado) REFERENCES estado(esta_id_estado);


--
-- TOC entry 1905 (class 2606 OID 16466)
-- Dependencies: 1872 1561 1565
-- Name: usuario_perfil_usup_id_perfil_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_perfil
    ADD CONSTRAINT usuario_perfil_usup_id_perfil_fk FOREIGN KEY (usup_id_perfil) REFERENCES perfil(perf_id_perfil);


--
-- TOC entry 1904 (class 2606 OID 16461)
-- Dependencies: 1559 1565 1870
-- Name: usuario_perfil_usup_id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario_perfil
    ADD CONSTRAINT usuario_perfil_usup_id_usuario_fk FOREIGN KEY (usup_id_usuario) REFERENCES usuario(usua_id_usuario);


--
-- TOC entry 1901 (class 2606 OID 16422)
-- Dependencies: 1557 1868 1559
-- Name: usuario_usua_id_pessoa_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_usua_id_pessoa_fk FOREIGN KEY (usua_id_pessoa) REFERENCES pessoa(pess_id_pessoa);


--
-- TOC entry 1936 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2011-04-11 03:47:34 BRT

--
-- PostgreSQL database dump complete
--

