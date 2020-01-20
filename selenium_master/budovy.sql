--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2019-12-27 20:46:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 16513)
-- Name: budovy; Type: TABLE; Schema: sproject; Owner: postgres
--

CREATE TABLE sproject.budovy (
    kod_budovy integer,
    cislo_lv integer,
    vymera integer,
    druh_pozemku text,
    budova_s_cislem text,
    adresni_mista text[],
    omezeni_vlastnickeho_prava text[],
    jine_zapisy text[],
    rizeni_cenovy_udaj text,
    zpusob_vyuziti text,
    cislo_jednotky text[],
    date_change date,
    invalid_record boolean,
    parcelni_cislo text,
    check_sum text,
    date_last date,
    date_last_ok date
);


ALTER TABLE sproject.budovy OWNER TO postgres;

--
-- TOC entry 2825 (class 0 OID 16513)
-- Dependencies: 204
-- Data for Name: budovy; Type: TABLE DATA; Schema: sproject; Owner: postgres
--

COPY sproject.budovy (kod_budovy, cislo_lv, vymera, druh_pozemku, budova_s_cislem, adresni_mista, omezeni_vlastnickeho_prava, jine_zapisy, rizeni_cenovy_udaj, zpusob_vyuziti, cislo_jednotky, date_change, invalid_record, parcelni_cislo, check_sum, date_last, date_last_ok) FROM stdin;
\.


-- Completed on 2019-12-27 20:46:59

--
-- PostgreSQL database dump complete
--

