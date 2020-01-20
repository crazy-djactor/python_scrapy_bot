--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2019-12-27 20:47:32

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
-- TOC entry 205 (class 1259 OID 16519)
-- Name: budovy_seznam; Type: TABLE; Schema: sproject; Owner: postgres
--

CREATE TABLE sproject.budovy_seznam (
    kod_budovy integer NOT NULL,
    typ_stavebniho_objektu text,
    cislo_domovni integer[],
    nazev_casti_obce text,
    kod_obce integer,
    date_change timestamp(6) without time zone,
    "date_last_OK" timestamp(6) without time zone,
    date_last timestamp(6) without time zone,
    error_description text
);


ALTER TABLE sproject.budovy_seznam OWNER TO postgres;

--
-- TOC entry 2827 (class 0 OID 16519)
-- Dependencies: 205
-- Data for Name: budovy_seznam; Type: TABLE DATA; Schema: sproject; Owner: postgres
--

COPY sproject.budovy_seznam (kod_budovy, typ_stavebniho_objektu, cislo_domovni, nazev_casti_obce, kod_obce, date_change, "date_last_OK", date_last, error_description) FROM stdin;
19374691	budova s číslem popisným	{4053}	Židenice	582786	\N	\N	\N	\N
19374704	budova s číslem popisným	{4054}	Židenice	582786	\N	\N	\N	\N
19374712	budova s číslem popisným	{4056,4058}	Židenice	582786	\N	\N	\N	\N
19374721	budova s číslem popisným	{4057}	Židenice	582786	\N	\N	\N	\N
19374747	budova s číslem popisným	{4059,406}	Židenice	582786	\N	\N	\N	\N
19374763	budova s číslem popisným	{4061,4062}	Židenice	582786	\N	\N	\N	\N
19374780	budova s číslem popisným	{4063,4064}	Židenice	582786	\N	\N	\N	\N
19374801	budova s číslem popisným	{4065}	Židenice	582786	\N	\N	\N	\N
19374810	budova s číslem popisným	{4066}	Židenice	582786	\N	\N	\N	\N
19374828	budova s číslem popisným	{4067}	Židenice	582786	\N	\N	\N	\N
19374844	budova s číslem popisným	{4068,4069}	Židenice	582786	\N	\N	\N	\N
19374861	budova s číslem popisným	{4070,4071}	Židenice	582786	\N	\N	\N	\N
19374879	budova s číslem popisným	{4072}	Židenice	582786	\N	\N	\N	\N
19374887	budova s číslem popisným	{4073}	Židenice	582786	\N	\N	\N	\N
19374895	budova s číslem popisným	{4074}	Židenice	582786	\N	\N	\N	\N
19374917	budova s číslem popisným	{4075,4076}	Židenice	582786	\N	\N	\N	\N
19374925	budova s číslem popisným	{4077}	Židenice	582786	\N	\N	\N	\N
19374933	budova s číslem popisným	{4078}	Židenice	582786	\N	\N	\N	\N
19374941	budova s číslem popisným	{4079}	Židenice	582786	\N	\N	\N	\N
19374950	budova s číslem popisným	{4080}	Židenice	582786	\N	\N	\N	\N
19374968	budova s číslem popisným	{4081}	Židenice	582786	\N	\N	\N	\N
19374976	budova s číslem popisným	{4082}	Židenice	582786	\N	\N	\N	\N
19374984	budova s číslem popisným	{4083}	Židenice	582786	\N	\N	\N	\N
19374992	budova s číslem popisným	{4084}	Židenice	582786	\N	\N	\N	\N
19375000	budova s číslem popisným	{4085}	Židenice	582786	\N	\N	\N	\N
19375026	budova s číslem popisným	{4087,4088}	Židenice	582786	\N	\N	\N	\N
19375042	budova s číslem popisným	{4089,409}	Židenice	582786	\N	\N	\N	\N
19375051	budova s číslem popisným	{4091}	Židenice	582786	\N	\N	\N	\N
19375069	budova s číslem popisným	{4092}	Židenice	582786	\N	\N	\N	\N
19375077	budova s číslem popisným	{4093}	Židenice	582786	\N	\N	\N	\N
19375085	budova s číslem popisným	{4094}	Židenice	582786	\N	\N	\N	\N
19375093	budova s číslem popisným	{4095}	Židenice	582786	\N	\N	\N	\N
19375115	budova s číslem popisným	{4096,4097}	Židenice	582786	\N	\N	\N	\N
19375123	budova s číslem popisným	{4098}	Židenice	582786	\N	\N	\N	\N
19375131	budova s číslem popisným	{4099}	Židenice	582786	\N	\N	\N	\N
19375140	budova s číslem popisným	{4100}	Židenice	582786	\N	\N	\N	\N
19375158	budova s číslem popisným	{4101}	Židenice	582786	\N	\N	\N	\N
19375166	budova s číslem popisným	{4102}	Židenice	582786	\N	\N	\N	\N
19375174	budova s číslem popisným	{4103}	Židenice	582786	\N	\N	\N	\N
19375204	budova s číslem popisným	{4106}	Židenice	582786	\N	\N	\N	\N
19375212	budova s číslem popisným	{4107}	Židenice	582786	\N	\N	\N	\N
19375221	budova s číslem popisným	{4108}	Židenice	582786	\N	\N	\N	\N
19375239	budova s číslem popisným	{4109,411}	Židenice	582786	\N	\N	\N	\N
19375255	budova s číslem popisným	{4111,4112}	Židenice	582786	\N	\N	\N	\N
19375271	budova s číslem popisným	{4113}	Židenice	582786	\N	\N	\N	\N
19375280	budova s číslem popisným	{4114}	Židenice	582786	\N	\N	\N	\N
19375298	budova s číslem popisným	{4115,4116}	Židenice	582786	\N	\N	\N	\N
19375310	budova s číslem popisným	{4117,4118}	Židenice	582786	\N	\N	\N	\N
19375336	budova s číslem popisným	{4119}	Židenice	582786	\N	\N	\N	\N
19375344	budova s číslem popisným	{4120}	Židenice	582786	\N	\N	\N	\N
19375352	budova s číslem popisným	{4121}	Židenice	582786	\N	\N	\N	\N
19375361	budova s číslem popisným	{4122}	Židenice	582786	\N	\N	\N	\N
19375387	budova s číslem popisným	{4123,4124}	Židenice	582786	\N	\N	\N	\N
19375409	budova s číslem popisným	{4125,4126}	Židenice	582786	\N	\N	\N	\N
19375417	budova s číslem popisným	{4128,4129}	Židenice	582786	\N	\N	\N	\N
19375433	budova s číslem popisným	{4130,4131}	Židenice	582786	\N	\N	\N	\N
19375450	budova s číslem popisným	{4132}	Židenice	582786	\N	\N	\N	\N
19375468	budova s číslem popisným	{4133}	Židenice	582786	\N	\N	\N	\N
19375476	budova s číslem popisným	{4134}	Židenice	582786	\N	\N	\N	\N
19375484	budova s číslem popisným	{4135,4136}	Židenice	582786	\N	\N	\N	\N
19375506	budova s číslem popisným	{4137}	Židenice	582786	\N	\N	\N	\N
19375514	budova s číslem popisným	{4138}	Židenice	582786	\N	\N	\N	\N
19375522	budova s číslem popisným	{4139}	Židenice	582786	\N	\N	\N	\N
19375531	budova s číslem popisným	{4140}	Židenice	582786	\N	\N	\N	\N
19375549	budova s číslem popisným	{4141}	Židenice	582786	\N	\N	\N	\N
19375557	budova s číslem popisným	{4142}	Židenice	582786	\N	\N	\N	\N
19375565	budova s číslem popisným	{4143}	Židenice	582786	\N	\N	\N	\N
19375573	budova s číslem popisným	{4144}	Židenice	582786	\N	\N	\N	\N
19375581	budova s číslem popisným	{4145}	Židenice	582786	\N	\N	\N	\N
19375590	budova s číslem popisným	{4146}	Židenice	582786	\N	\N	\N	\N
19375603	budova s číslem popisným	{4147}	Židenice	582786	\N	\N	\N	\N
19375611	budova s číslem popisným	{4148}	Židenice	582786	\N	\N	\N	\N
19375638	budova s číslem popisným	{4149,415}	Židenice	582786	\N	\N	\N	\N
19375646	budova s číslem popisným	{4151,4152}	Židenice	582786	\N	\N	\N	\N
19375662	budova s číslem popisným	{4153}	Židenice	582786	\N	\N	\N	\N
19375671	budova s číslem popisným	{4154}	Židenice	582786	\N	\N	\N	\N
19375689	budova s číslem popisným	{4155}	Židenice	582786	\N	\N	\N	\N
19375697	budova s číslem popisným	{4156}	Židenice	582786	\N	\N	\N	\N
19375701	budova s číslem popisným	{4157,4158}	Židenice	582786	\N	\N	\N	\N
19375727	budova s číslem popisným	{4159,416}	Židenice	582786	\N	\N	\N	\N
19375743	budova s číslem popisným	{4163}	Židenice	582786	\N	\N	\N	\N
19375751	budova s číslem popisným	{4164}	Židenice	582786	\N	\N	\N	\N
19375760	budova s číslem popisným	{4165}	Židenice	582786	\N	\N	\N	\N
19375778	budova s číslem popisným	{4166}	Židenice	582786	\N	\N	\N	\N
19375786	budova s číslem popisným	{4167}	Židenice	582786	\N	\N	\N	\N
19375794	budova s číslem popisným	{4168}	Židenice	582786	\N	\N	\N	\N
19375816	budova s číslem popisným	{4170}	Židenice	582786	\N	\N	\N	\N
19375824	budova s číslem popisným	{4171}	Židenice	582786	\N	\N	\N	\N
19375832	budova s číslem popisným	{4172}	Židenice	582786	\N	\N	\N	\N
19375841	budova s číslem popisným	{4173}	Židenice	582786	\N	\N	\N	\N
19375867	budova s číslem popisným	{4174,4175}	Židenice	582786	\N	\N	\N	\N
19375883	budova s číslem popisným	{4176,4177}	Židenice	582786	\N	\N	\N	\N
19375891	budova s číslem popisným	{4179}	Židenice	582786	\N	\N	\N	\N
19375921	budova s číslem popisným	{4182}	Židenice	582786	\N	\N	\N	\N
19375930	budova s číslem popisným	{4183}	Židenice	582786	\N	\N	\N	\N
19375956	budova s číslem popisným	{4186}	Židenice	582786	\N	\N	\N	\N
19375964	budova s číslem popisným	{4187}	Židenice	582786	\N	\N	\N	\N
19375972	budova s číslem popisným	{4188}	Židenice	582786	\N	\N	\N	\N
19375981	budova s číslem popisným	{4189}	Židenice	582786	\N	\N	\N	\N
19375999	budova s číslem popisným	{4190}	Židenice	582786	\N	\N	\N	\N
19376006	budova s číslem popisným	{4191}	Židenice	582786	\N	\N	\N	\N
19376014	budova s číslem popisným	{4192}	Židenice	582786	\N	\N	\N	\N
19376031	budova s číslem popisným	{4193,4194}	Židenice	582786	\N	\N	\N	\N
19376057	budova s číslem popisným	{4195,4196}	Židenice	582786	\N	\N	\N	\N
19376073	budova s číslem popisným	{4198,4199}	Židenice	582786	\N	\N	\N	\N
19376090	budova s číslem popisným	{4197,42}	Židenice	582786	\N	\N	\N	\N
19376103	budova s číslem popisným	{4201}	Židenice	582786	\N	\N	\N	\N
19376111	budova s číslem popisným	{4202}	Židenice	582786	\N	\N	\N	\N
19376120	budova s číslem popisným	{4203}	Židenice	582786	\N	\N	\N	\N
19376138	budova s číslem popisným	{4204}	Židenice	582786	\N	\N	\N	\N
19376154	budova s číslem popisným	{4205,4206}	Židenice	582786	\N	\N	\N	\N
19376171	budova s číslem popisným	{4207,4208}	Židenice	582786	\N	\N	\N	\N
19376189	budova s číslem popisným	{4209}	Židenice	582786	\N	\N	\N	\N
19376197	budova s číslem popisným	{4210}	Židenice	582786	\N	\N	\N	\N
19376201	budova s číslem popisným	{4211}	Židenice	582786	\N	\N	\N	\N
19376219	budova s číslem popisným	{4212,4218}	Židenice	582786	\N	\N	\N	\N
19376227	budova s číslem popisným	{4213}	Židenice	582786	\N	\N	\N	\N
19376235	budova s číslem popisným	{4214}	Židenice	582786	\N	\N	\N	\N
19376243	budova s číslem popisným	{4215}	Židenice	582786	\N	\N	\N	\N
19376251	budova s číslem popisným	{4216}	Židenice	582786	\N	\N	\N	\N
19376260	budova s číslem popisným	{4217,4219}	Židenice	582786	\N	\N	\N	\N
19376294	budova s číslem popisným	{4222}	Židenice	582786	\N	\N	\N	\N
19376308	budova s číslem popisným	{4224}	Židenice	582786	\N	\N	\N	\N
19376316	budova s číslem popisným	{4225}	Židenice	582786	\N	\N	\N	\N
19376324	budova s číslem popisným	{4226}	Židenice	582786	\N	\N	\N	\N
19376332	budova s číslem popisným	{4234}	Židenice	582786	\N	\N	\N	\N
19376341	budova s číslem popisným	{4235}	Židenice	582786	\N	\N	\N	\N
19376359	budova s číslem popisným	{4236}	Židenice	582786	\N	\N	\N	\N
19376367	budova s číslem popisným	{4237}	Židenice	582786	\N	\N	\N	\N
19376375	budova s číslem popisným	{4238}	Židenice	582786	\N	\N	\N	\N
19376383	budova s číslem popisným	{4239}	Židenice	582786	\N	\N	\N	\N
19376391	budova s číslem popisným	{4240}	Židenice	582786	\N	\N	\N	\N
19376405	budova s číslem popisným	{4241}	Židenice	582786	\N	\N	\N	\N
19376413	budova s číslem popisným	{4242}	Židenice	582786	\N	\N	\N	\N
19376421	budova s číslem popisným	{4243}	Židenice	582786	\N	\N	\N	\N
19376430	budova s číslem popisným	{4244}	Židenice	582786	\N	\N	\N	\N
19376448	budova s číslem popisným	{4245}	Židenice	582786	\N	\N	\N	\N
19376456	budova s číslem popisným	{4246}	Židenice	582786	\N	\N	\N	\N
19376464	budova s číslem popisným	{4253}	Židenice	582786	\N	\N	\N	\N
19376472	budova s číslem popisným	{4266}	Židenice	582786	\N	\N	\N	\N
19376481	budova s číslem popisným	{4267}	Židenice	582786	\N	\N	\N	\N
19376499	budova s číslem popisným	{4268}	Židenice	582786	\N	\N	\N	\N
19376502	budova s číslem popisným	{4269}	Židenice	582786	\N	\N	\N	\N
19376511	budova s číslem popisným	{4270}	Židenice	582786	\N	\N	\N	\N
19376529	budova s číslem popisným	{4271}	Židenice	582786	\N	\N	\N	\N
19376537	budova s číslem popisným	{4273}	Židenice	582786	\N	\N	\N	\N
19376545	budova s číslem popisným	{4274}	Židenice	582786	\N	\N	\N	\N
19376553	budova s číslem popisným	{4275}	Židenice	582786	\N	\N	\N	\N
19376561	budova s číslem popisným	{4276}	Židenice	582786	\N	\N	\N	\N
19376570	budova s číslem popisným	{4277}	Židenice	582786	\N	\N	\N	\N
19376588	budova s číslem popisným	{4278}	Židenice	582786	\N	\N	\N	\N
19376596	budova s číslem popisným	{4279}	Židenice	582786	\N	\N	\N	\N
19376600	budova s číslem popisným	{4280}	Židenice	582786	\N	\N	\N	\N
19376618	budova s číslem popisným	{4281}	Židenice	582786	\N	\N	\N	\N
19376626	budova s číslem popisným	{4282}	Židenice	582786	\N	\N	\N	\N
19376634	budova s číslem popisným	{4284}	Židenice	582786	\N	\N	\N	\N
19376642	budova s číslem popisným	{4285}	Židenice	582786	\N	\N	\N	\N
19376651	budova s číslem popisným	{4286}	Židenice	582786	\N	\N	\N	\N
19376669	budova s číslem popisným	{4287}	Židenice	582786	\N	\N	\N	\N
19376677	budova s číslem popisným	{4288}	Židenice	582786	\N	\N	\N	\N
19376685	budova s číslem popisným	{4289}	Židenice	582786	\N	\N	\N	\N
19376693	budova s číslem popisným	{4290}	Židenice	582786	\N	\N	\N	\N
19376707	budova s číslem popisným	{4291}	Židenice	582786	\N	\N	\N	\N
19376715	budova s číslem popisným	{4304}	Židenice	582786	\N	\N	\N	\N
19376723	budova s číslem popisným	{4305}	Židenice	582786	\N	\N	\N	\N
19376731	budova s číslem popisným	{4310}	Židenice	582786	\N	\N	\N	\N
19376740	budova s číslem popisným	{4315}	Židenice	582786	\N	\N	\N	\N
19416547	budova s číslem popisným	{4}	Židenice	582786	\N	\N	\N	\N
19416555	budova s číslem popisným	{5}	Židenice	582786	\N	\N	\N	\N
19416563	budova s číslem popisným	{6}	Židenice	582786	\N	\N	\N	\N
19416598	budova s číslem popisným	{9}	Židenice	582786	\N	\N	\N	\N
19416601	budova s číslem popisným	{19}	Židenice	582786	\N	\N	\N	\N
19416610	budova s číslem popisným	{22,33,46}	Židenice	582786	\N	\N	\N	\N
19416687	budova s číslem popisným	{34}	Židenice	582786	\N	\N	\N	\N
19416695	budova s číslem popisným	{35}	Židenice	582786	\N	\N	\N	\N
19416709	budova s číslem popisným	{36}	Židenice	582786	\N	\N	\N	\N
19416717	budova s číslem popisným	{37}	Židenice	582786	\N	\N	\N	\N
19416725	budova s číslem popisným	{38}	Židenice	582786	\N	\N	\N	\N
19416733	budova s číslem popisným	{39,40,41}	Židenice	582786	\N	\N	\N	\N
19416768	budova s číslem popisným	{42}	Židenice	582786	\N	\N	\N	\N
19416776	budova s číslem popisným	{43}	Židenice	582786	\N	\N	\N	\N
19416784	budova s číslem popisným	{44}	Židenice	582786	\N	\N	\N	\N
19416822	budova s číslem popisným	{48}	Židenice	582786	\N	\N	\N	\N
19416831	budova s číslem popisným	{49}	Židenice	582786	\N	\N	\N	\N
19416857	budova s číslem popisným	{56}	Židenice	582786	\N	\N	\N	\N
19416873	budova s číslem popisným	{60}	Židenice	582786	\N	\N	\N	\N
19416911	budova s číslem popisným	{64}	Židenice	582786	\N	\N	\N	\N
19416920	budova s číslem popisným	{65}	Židenice	582786	\N	\N	\N	\N
19416938	budova s číslem popisným	{66}	Židenice	582786	\N	\N	\N	\N
19416946	budova s číslem popisným	{67}	Židenice	582786	\N	\N	\N	\N
19417021	budova s číslem popisným	{77,89,92}	Židenice	582786	\N	\N	\N	\N
19417039	budova s číslem popisným	{90}	Židenice	582786	\N	\N	\N	\N
19417055	budova s číslem popisným	{93}	Židenice	582786	\N	\N	\N	\N
19417071	budova s číslem popisným	{96,254,260}	Židenice	582786	\N	\N	\N	\N
19417110	budova s číslem popisným	{101}	Židenice	582786	\N	\N	\N	\N
19417128	budova s číslem popisným	{102}	Židenice	582786	\N	\N	\N	\N
19417136	budova s číslem popisným	{103}	Židenice	582786	\N	\N	\N	\N
19417144	budova s číslem popisným	{104}	Židenice	582786	\N	\N	\N	\N
19417152	budova s číslem popisným	{105}	Židenice	582786	\N	\N	\N	\N
19417161	budova s číslem popisným	{107}	Židenice	582786	\N	\N	\N	\N
19417187	budova s číslem popisným	{111}	Židenice	582786	\N	\N	\N	\N
19417195	budova s číslem popisným	{112}	Židenice	582786	\N	\N	\N	\N
19417225	budova s číslem popisným	{123}	Židenice	582786	\N	\N	\N	\N
19417233	budova s číslem popisným	{120,125,127}	Židenice	582786	\N	\N	\N	\N
19417250	budova s číslem popisným	{128}	Židenice	582786	\N	\N	\N	\N
19417268	budova s číslem popisným	{131,162,168}	Židenice	582786	\N	\N	\N	\N
19417284	budova s číslem popisným	{135}	Židenice	582786	\N	\N	\N	\N
19417292	budova s číslem popisným	{136}	Židenice	582786	\N	\N	\N	\N
19417306	budova s číslem popisným	{138}	Židenice	582786	\N	\N	\N	\N
19417314	budova s číslem popisným	{139}	Židenice	582786	\N	\N	\N	\N
19417322	budova s číslem popisným	{140}	Židenice	582786	\N	\N	\N	\N
19417331	budova s číslem popisným	{143}	Židenice	582786	\N	\N	\N	\N
19417349	budova s číslem popisným	{144}	Židenice	582786	\N	\N	\N	\N
19417365	budova s číslem popisným	{146}	Židenice	582786	\N	\N	\N	\N
19417373	budova s číslem popisným	{147}	Židenice	582786	\N	\N	\N	\N
19417381	budova s číslem popisným	{148}	Židenice	582786	\N	\N	\N	\N
19417390	budova s číslem popisným	{149}	Židenice	582786	\N	\N	\N	\N
19417403	budova s číslem popisným	{150}	Židenice	582786	\N	\N	\N	\N
19417420	budova s číslem popisným	{152}	Židenice	582786	\N	\N	\N	\N
19417438	budova s číslem popisným	{153}	Židenice	582786	\N	\N	\N	\N
19417446	budova s číslem popisným	{154}	Židenice	582786	\N	\N	\N	\N
19417454	budova s číslem popisným	{155}	Židenice	582786	\N	\N	\N	\N
19417471	budova s číslem popisným	{158}	Židenice	582786	\N	\N	\N	\N
19417519	budova s číslem popisným	{169}	Židenice	582786	\N	\N	\N	\N
19417527	budova s číslem popisným	{173}	Židenice	582786	\N	\N	\N	\N
19417535	budova s číslem popisným	{174}	Židenice	582786	\N	\N	\N	\N
19417543	budova s číslem popisným	{175}	Židenice	582786	\N	\N	\N	\N
19417594	budova s číslem popisným	{180}	Židenice	582786	\N	\N	\N	\N
19417608	budova s číslem popisným	{181}	Židenice	582786	\N	\N	\N	\N
19417616	budova s číslem popisným	{182}	Židenice	582786	\N	\N	\N	\N
19417641	budova s číslem popisným	{185}	Židenice	582786	\N	\N	\N	\N
19417659	budova s číslem popisným	{186}	Židenice	582786	\N	\N	\N	\N
19417667	budova s číslem popisným	{187}	Židenice	582786	\N	\N	\N	\N
19417675	budova s číslem popisným	{4443}	Židenice	582786	\N	\N	\N	\N
19417683	budova s číslem popisným	{189}	Židenice	582786	\N	\N	\N	\N
19417705	budova s číslem popisným	{191}	Židenice	582786	\N	\N	\N	\N
19417713	budova s číslem popisným	{192}	Židenice	582786	\N	\N	\N	\N
19417721	budova s číslem popisným	{193}	Židenice	582786	\N	\N	\N	\N
19417748	budova s číslem popisným	{195}	Židenice	582786	\N	\N	\N	\N
19417756	budova s číslem popisným	{196}	Židenice	582786	\N	\N	\N	\N
19417764	budova s číslem popisným	{197}	Židenice	582786	\N	\N	\N	\N
19417772	budova s číslem popisným	{198}	Židenice	582786	\N	\N	\N	\N
19417781	budova s číslem popisným	{4453}	Židenice	582786	\N	\N	\N	\N
19417799	budova s číslem popisným	{201}	Židenice	582786	\N	\N	\N	\N
19417811	budova s číslem popisným	{203}	Židenice	582786	\N	\N	\N	\N
19417829	budova s číslem popisným	{204}	Židenice	582786	\N	\N	\N	\N
19417845	budova s číslem popisným	{206}	Židenice	582786	\N	\N	\N	\N
19417861	budova s číslem popisným	{208}	Židenice	582786	\N	\N	\N	\N
19417870	budova s číslem popisným	{209}	Židenice	582786	\N	\N	\N	\N
19417888	budova s číslem popisným	{212}	Židenice	582786	\N	\N	\N	\N
19417896	budova s číslem popisným	{213}	Židenice	582786	\N	\N	\N	\N
19417900	budova s číslem popisným	{214}	Židenice	582786	\N	\N	\N	\N
19417926	budova s číslem popisným	{216}	Židenice	582786	\N	\N	\N	\N
19417934	budova s číslem popisným	{217}	Židenice	582786	\N	\N	\N	\N
19417942	budova s číslem popisným	{218}	Židenice	582786	\N	\N	\N	\N
19417951	budova s číslem popisným	{219}	Židenice	582786	\N	\N	\N	\N
19417969	budova s číslem popisným	{220}	Židenice	582786	\N	\N	\N	\N
19417977	budova s číslem popisným	{221}	Židenice	582786	\N	\N	\N	\N
19418019	budova s číslem popisným	{226}	Židenice	582786	\N	\N	\N	\N
19418027	budova s číslem popisným	{228}	Židenice	582786	\N	\N	\N	\N
19418035	budova s číslem popisným	{229}	Židenice	582786	\N	\N	\N	\N
19418043	budova s číslem popisným	{230}	Židenice	582786	\N	\N	\N	\N
19418051	budova s číslem popisným	{231}	Židenice	582786	\N	\N	\N	\N
19418060	budova s číslem popisným	{232}	Židenice	582786	\N	\N	\N	\N
19418078	budova s číslem popisným	{233}	Židenice	582786	\N	\N	\N	\N
19418086	budova s číslem popisným	{234}	Židenice	582786	\N	\N	\N	\N
19418094	budova s číslem popisným	{235}	Židenice	582786	\N	\N	\N	\N
19418116	budova s číslem popisným	{237}	Židenice	582786	\N	\N	\N	\N
19418132	budova s číslem popisným	{239}	Židenice	582786	\N	\N	\N	\N
19418159	budova s číslem popisným	{241}	Židenice	582786	\N	\N	\N	\N
19418175	budova s číslem popisným	{243}	Židenice	582786	\N	\N	\N	\N
19418183	budova s číslem popisným	{244}	Židenice	582786	\N	\N	\N	\N
19418191	budova s číslem popisným	{245}	Židenice	582786	\N	\N	\N	\N
19418205	budova s číslem popisným	{246}	Židenice	582786	\N	\N	\N	\N
19418213	budova s číslem popisným	{248}	Židenice	582786	\N	\N	\N	\N
19418221	budova s číslem popisným	{249}	Židenice	582786	\N	\N	\N	\N
19418230	budova s číslem popisným	{250}	Židenice	582786	\N	\N	\N	\N
19418248	budova s číslem popisným	{251}	Židenice	582786	\N	\N	\N	\N
19418256	budova s číslem popisným	{252}	Židenice	582786	\N	\N	\N	\N
19418272	budova s číslem popisným	{255}	Židenice	582786	\N	\N	\N	\N
19418281	budova s číslem popisným	{256}	Židenice	582786	\N	\N	\N	\N
19418302	budova s číslem popisným	{258}	Židenice	582786	\N	\N	\N	\N
19418311	budova s číslem popisným	{259}	Židenice	582786	\N	\N	\N	\N
19418337	budova s číslem popisným	{261,263,343}	Židenice	582786	\N	\N	\N	\N
19418361	budova s číslem popisným	{264}	Židenice	582786	\N	\N	\N	\N
19418370	budova s číslem popisným	{265}	Židenice	582786	\N	\N	\N	\N
19418388	budova s číslem popisným	{266}	Židenice	582786	\N	\N	\N	\N
19418396	budova s číslem popisným	{267}	Židenice	582786	\N	\N	\N	\N
19418400	budova s číslem popisným	{268}	Židenice	582786	\N	\N	\N	\N
19418426	budova s číslem popisným	{270}	Židenice	582786	\N	\N	\N	\N
19418434	budova s číslem popisným	{271}	Židenice	582786	\N	\N	\N	\N
19418442	budova s číslem popisným	{272}	Židenice	582786	\N	\N	\N	\N
19418451	budova s číslem popisným	{273}	Židenice	582786	\N	\N	\N	\N
19418469	budova s číslem popisným	{274}	Židenice	582786	\N	\N	\N	\N
19418485	budova s číslem popisným	{276}	Židenice	582786	\N	\N	\N	\N
19418493	budova s číslem popisným	{277}	Židenice	582786	\N	\N	\N	\N
19418507	budova s číslem popisným	{278}	Židenice	582786	\N	\N	\N	\N
19418515	budova s číslem popisným	{279}	Židenice	582786	\N	\N	\N	\N
19418523	budova s číslem popisným	{280}	Židenice	582786	\N	\N	\N	\N
19418531	budova s číslem popisným	{281}	Židenice	582786	\N	\N	\N	\N
19418540	budova s číslem popisným	{282}	Židenice	582786	\N	\N	\N	\N
19418558	budova s číslem popisným	{283}	Židenice	582786	\N	\N	\N	\N
19418566	budova s číslem popisným	{284}	Židenice	582786	\N	\N	\N	\N
19418574	budova s číslem popisným	{285}	Židenice	582786	\N	\N	\N	\N
19418582	budova s číslem popisným	{286}	Židenice	582786	\N	\N	\N	\N
19418591	budova s číslem popisným	{287}	Židenice	582786	\N	\N	\N	\N
19418604	budova s číslem popisným	{288}	Židenice	582786	\N	\N	\N	\N
19418612	budova s číslem popisným	{289}	Židenice	582786	\N	\N	\N	\N
19418621	budova s číslem popisným	{290}	Židenice	582786	\N	\N	\N	\N
19418639	budova s číslem popisným	{291}	Židenice	582786	\N	\N	\N	\N
19418647	budova s číslem popisným	{292}	Židenice	582786	\N	\N	\N	\N
19418663	budova s číslem popisným	{294}	Židenice	582786	\N	\N	\N	\N
19418671	budova s číslem popisným	{295}	Židenice	582786	\N	\N	\N	\N
19418680	budova s číslem popisným	{296}	Židenice	582786	\N	\N	\N	\N
19418698	budova s číslem popisným	{297}	Židenice	582786	\N	\N	\N	\N
19418710	budova s číslem popisným	{299}	Židenice	582786	\N	\N	\N	\N
19418728	budova s číslem popisným	{300}	Židenice	582786	\N	\N	\N	\N
19418736	budova s číslem popisným	{301}	Židenice	582786	\N	\N	\N	\N
19418744	budova s číslem popisným	{4331}	Židenice	582786	\N	\N	\N	\N
19418752	budova s číslem popisným	{303}	Židenice	582786	\N	\N	\N	\N
19418761	budova s číslem popisným	{304}	Židenice	582786	\N	\N	\N	\N
19418779	budova s číslem popisným	{305}	Židenice	582786	\N	\N	\N	\N
19418787	budova s číslem popisným	{306}	Židenice	582786	\N	\N	\N	\N
19418795	budova s číslem popisným	{307}	Židenice	582786	\N	\N	\N	\N
19418809	budova s číslem popisným	{308}	Židenice	582786	\N	\N	\N	\N
19418817	budova s číslem popisným	{310}	Židenice	582786	\N	\N	\N	\N
19418833	budova s číslem popisným	{312}	Židenice	582786	\N	\N	\N	\N
19418841	budova s číslem popisným	{313}	Židenice	582786	\N	\N	\N	\N
19418850	budova s číslem popisným	{314}	Židenice	582786	\N	\N	\N	\N
19418868	budova s číslem popisným	{315}	Židenice	582786	\N	\N	\N	\N
19418876	budova s číslem popisným	{316}	Židenice	582786	\N	\N	\N	\N
19418906	budova s číslem popisným	{320}	Židenice	582786	\N	\N	\N	\N
19418914	budova s číslem popisným	{321}	Židenice	582786	\N	\N	\N	\N
19418922	budova s číslem popisným	{322}	Židenice	582786	\N	\N	\N	\N
19418949	budova s číslem popisným	{324}	Židenice	582786	\N	\N	\N	\N
19418957	budova s číslem popisným	{325}	Židenice	582786	\N	\N	\N	\N
19418965	budova s číslem popisným	{326}	Židenice	582786	\N	\N	\N	\N
19418973	budova s číslem popisným	{327}	Židenice	582786	\N	\N	\N	\N
19418981	budova s číslem popisným	{328}	Židenice	582786	\N	\N	\N	\N
19418990	budova s číslem popisným	{329}	Židenice	582786	\N	\N	\N	\N
19419007	budova s číslem popisným	{330}	Židenice	582786	\N	\N	\N	\N
19419015	budova s číslem popisným	{331}	Židenice	582786	\N	\N	\N	\N
19419023	budova s číslem popisným	{332}	Židenice	582786	\N	\N	\N	\N
19419031	budova s číslem popisným	{333}	Židenice	582786	\N	\N	\N	\N
19419040	budova s číslem popisným	{334}	Židenice	582786	\N	\N	\N	\N
19419058	budova s číslem popisným	{335}	Židenice	582786	\N	\N	\N	\N
19419066	budova s číslem popisným	{336}	Židenice	582786	\N	\N	\N	\N
19419074	budova s číslem popisným	{337}	Židenice	582786	\N	\N	\N	\N
19419082	budova s číslem popisným	{338}	Židenice	582786	\N	\N	\N	\N
19419091	budova s číslem popisným	{339}	Židenice	582786	\N	\N	\N	\N
19419104	budova s číslem popisným	{340}	Židenice	582786	\N	\N	\N	\N
19419112	budova s číslem popisným	{341}	Židenice	582786	\N	\N	\N	\N
19419121	budova s číslem popisným	{342}	Židenice	582786	\N	\N	\N	\N
19419147	budova s číslem popisným	{344}	Židenice	582786	\N	\N	\N	\N
19419155	budova s číslem popisným	{345}	Židenice	582786	\N	\N	\N	\N
19419163	budova s číslem popisným	{346}	Židenice	582786	\N	\N	\N	\N
19419171	budova s číslem popisným	{347}	Židenice	582786	\N	\N	\N	\N
19419180	budova s číslem popisným	{349}	Židenice	582786	\N	\N	\N	\N
19419198	budova s číslem popisným	{350}	Židenice	582786	\N	\N	\N	\N
19419201	budova s číslem popisným	{351}	Židenice	582786	\N	\N	\N	\N
19419210	budova s číslem popisným	{352}	Židenice	582786	\N	\N	\N	\N
19419228	budova s číslem popisným	{353}	Židenice	582786	\N	\N	\N	\N
19419236	budova s číslem popisným	{354}	Židenice	582786	\N	\N	\N	\N
19419244	budova s číslem popisným	{355}	Židenice	582786	\N	\N	\N	\N
19419252	budova s číslem popisným	{356}	Židenice	582786	\N	\N	\N	\N
19419261	budova s číslem popisným	{357}	Židenice	582786	\N	\N	\N	\N
19419279	budova s číslem popisným	{358}	Židenice	582786	\N	\N	\N	\N
19419287	budova s číslem popisným	{359}	Židenice	582786	\N	\N	\N	\N
19419295	budova s číslem popisným	{360}	Židenice	582786	\N	\N	\N	\N
19419309	budova s číslem popisným	{361}	Židenice	582786	\N	\N	\N	\N
19419317	budova s číslem popisným	{362}	Židenice	582786	\N	\N	\N	\N
19419325	budova s číslem popisným	{363}	Židenice	582786	\N	\N	\N	\N
19419333	budova s číslem popisným	{364}	Židenice	582786	\N	\N	\N	\N
19419341	budova s číslem popisným	{365}	Židenice	582786	\N	\N	\N	\N
19419350	budova s číslem popisným	{366}	Židenice	582786	\N	\N	\N	\N
19419368	budova s číslem popisným	{367}	Židenice	582786	\N	\N	\N	\N
19419376	budova s číslem popisným	{368}	Židenice	582786	\N	\N	\N	\N
19419384	budova s číslem popisným	{369}	Židenice	582786	\N	\N	\N	\N
19419392	budova s číslem popisným	{370}	Židenice	582786	\N	\N	\N	\N
19419406	budova s číslem popisným	{371}	Židenice	582786	\N	\N	\N	\N
19419414	budova s číslem popisným	{372}	Židenice	582786	\N	\N	\N	\N
19419422	budova s číslem popisným	{373}	Židenice	582786	\N	\N	\N	\N
19419431	budova s číslem popisným	{374}	Židenice	582786	\N	\N	\N	\N
19419449	budova s číslem popisným	{375}	Židenice	582786	\N	\N	\N	\N
19419457	budova s číslem popisným	{376}	Židenice	582786	\N	\N	\N	\N
19419465	budova s číslem popisným	{4469}	Židenice	582786	\N	\N	\N	\N
19419490	budova s číslem popisným	{380}	Židenice	582786	\N	\N	\N	\N
19419503	budova s číslem popisným	{381}	Židenice	582786	\N	\N	\N	\N
19419511	budova s číslem popisným	{382}	Židenice	582786	\N	\N	\N	\N
19419520	budova s číslem popisným	{383}	Židenice	582786	\N	\N	\N	\N
19419538	budova s číslem popisným	{384}	Židenice	582786	\N	\N	\N	\N
19419546	budova s číslem popisným	{385}	Židenice	582786	\N	\N	\N	\N
19419554	budova s číslem popisným	{391,436,512}	Židenice	582786	\N	\N	\N	\N
19419562	budova s číslem popisným	{392}	Židenice	582786	\N	\N	\N	\N
19419589	budova s číslem popisným	{394}	Židenice	582786	\N	\N	\N	\N
19419597	budova s číslem popisným	{395}	Židenice	582786	\N	\N	\N	\N
19419601	budova s číslem popisným	{397}	Židenice	582786	\N	\N	\N	\N
19419619	budova s číslem popisným	{398}	Židenice	582786	\N	\N	\N	\N
19419627	budova s číslem popisným	{399}	Židenice	582786	\N	\N	\N	\N
19419635	budova s číslem popisným	{400}	Židenice	582786	\N	\N	\N	\N
19419643	budova s číslem popisným	{401}	Židenice	582786	\N	\N	\N	\N
19419651	budova s číslem popisným	{402}	Židenice	582786	\N	\N	\N	\N
19419660	budova s číslem popisným	{403}	Židenice	582786	\N	\N	\N	\N
19419678	budova s číslem popisným	{404}	Židenice	582786	\N	\N	\N	\N
19419686	budova s číslem popisným	{405}	Židenice	582786	\N	\N	\N	\N
19419694	budova s číslem popisným	{406}	Židenice	582786	\N	\N	\N	\N
19419708	budova s číslem popisným	{407}	Židenice	582786	\N	\N	\N	\N
19419716	budova s číslem popisným	{408}	Židenice	582786	\N	\N	\N	\N
19419724	budova s číslem popisným	{409}	Židenice	582786	\N	\N	\N	\N
19419732	budova s číslem popisným	{410}	Židenice	582786	\N	\N	\N	\N
19419783	budova s číslem popisným	{415}	Židenice	582786	\N	\N	\N	\N
19419791	budova s číslem popisným	{416}	Židenice	582786	\N	\N	\N	\N
19419805	budova s číslem popisným	{417}	Židenice	582786	\N	\N	\N	\N
19419813	budova s číslem popisným	{418}	Židenice	582786	\N	\N	\N	\N
19419821	budova s číslem popisným	{419}	Židenice	582786	\N	\N	\N	\N
19419830	budova s číslem popisným	{420}	Židenice	582786	\N	\N	\N	\N
19419848	budova s číslem popisným	{421}	Židenice	582786	\N	\N	\N	\N
19419856	budova s číslem popisným	{423}	Židenice	582786	\N	\N	\N	\N
19419864	budova s číslem popisným	{424}	Židenice	582786	\N	\N	\N	\N
19419872	budova s číslem popisným	{425}	Židenice	582786	\N	\N	\N	\N
19419881	budova s číslem popisným	{426}	Židenice	582786	\N	\N	\N	\N
19419899	budova s číslem popisným	{427}	Židenice	582786	\N	\N	\N	\N
19419902	budova s číslem popisným	{428}	Židenice	582786	\N	\N	\N	\N
19419911	budova s číslem popisným	{429}	Židenice	582786	\N	\N	\N	\N
19419929	budova s číslem popisným	{430}	Židenice	582786	\N	\N	\N	\N
19419937	budova s číslem popisným	{431}	Židenice	582786	\N	\N	\N	\N
19419945	budova s číslem popisným	{432}	Židenice	582786	\N	\N	\N	\N
19419953	budova s číslem popisným	{433}	Židenice	582786	\N	\N	\N	\N
19419961	budova s číslem popisným	{434}	Židenice	582786	\N	\N	\N	\N
19419970	budova s číslem popisným	{435}	Židenice	582786	\N	\N	\N	\N
19420005	budova s číslem popisným	{439}	Židenice	582786	\N	\N	\N	\N
19420013	budova s číslem popisným	{440}	Židenice	582786	\N	\N	\N	\N
19420021	budova s číslem popisným	{441}	Židenice	582786	\N	\N	\N	\N
19420030	budova s číslem popisným	{443}	Židenice	582786	\N	\N	\N	\N
19420048	budova s číslem popisným	{444}	Židenice	582786	\N	\N	\N	\N
19420056	budova s číslem popisným	{445}	Židenice	582786	\N	\N	\N	\N
19420064	budova s číslem popisným	{446}	Židenice	582786	\N	\N	\N	\N
19420072	budova s číslem popisným	{447}	Židenice	582786	\N	\N	\N	\N
19420081	budova s číslem popisným	{448}	Židenice	582786	\N	\N	\N	\N
19420099	budova s číslem popisným	{4364}	Židenice	582786	\N	\N	\N	\N
19420102	budova s číslem popisným	{450}	Židenice	582786	\N	\N	\N	\N
19420145	budova s číslem popisným	{454}	Židenice	582786	\N	\N	\N	\N
19420153	budova s číslem popisným	{455}	Židenice	582786	\N	\N	\N	\N
19420161	budova s číslem popisným	{456}	Židenice	582786	\N	\N	\N	\N
19420170	budova s číslem popisným	{457}	Židenice	582786	\N	\N	\N	\N
19420188	budova s číslem popisným	{458}	Židenice	582786	\N	\N	\N	\N
19420196	budova s číslem popisným	{459}	Židenice	582786	\N	\N	\N	\N
19420200	budova s číslem popisným	{460}	Židenice	582786	\N	\N	\N	\N
19420218	budova s číslem popisným	{461}	Židenice	582786	\N	\N	\N	\N
19420226	budova s číslem popisným	{462}	Židenice	582786	\N	\N	\N	\N
19420234	budova s číslem popisným	{463}	Židenice	582786	\N	\N	\N	\N
19420242	budova s číslem popisným	{464}	Židenice	582786	\N	\N	\N	\N
19420251	budova s číslem popisným	{465}	Židenice	582786	\N	\N	\N	\N
19420269	budova s číslem popisným	{466}	Židenice	582786	\N	\N	\N	\N
19420277	budova s číslem popisným	{467}	Židenice	582786	\N	\N	\N	\N
19420285	budova s číslem popisným	{468}	Židenice	582786	\N	\N	\N	\N
19420293	budova s číslem popisným	{469}	Židenice	582786	\N	\N	\N	\N
19420307	budova s číslem popisným	{470}	Židenice	582786	\N	\N	\N	\N
19420315	budova s číslem popisným	{471}	Židenice	582786	\N	\N	\N	\N
19420323	budova s číslem popisným	{472}	Židenice	582786	\N	\N	\N	\N
19420331	budova s číslem popisným	{473}	Židenice	582786	\N	\N	\N	\N
19420340	budova s číslem popisným	{474}	Židenice	582786	\N	\N	\N	\N
19420358	budova s číslem popisným	{475}	Židenice	582786	\N	\N	\N	\N
19420366	budova s číslem popisným	{476}	Židenice	582786	\N	\N	\N	\N
19420374	budova s číslem popisným	{477}	Židenice	582786	\N	\N	\N	\N
19420382	budova s číslem popisným	{478}	Židenice	582786	\N	\N	\N	\N
19420391	budova s číslem popisným	{479}	Židenice	582786	\N	\N	\N	\N
19420404	budova s číslem popisným	{480}	Židenice	582786	\N	\N	\N	\N
19420421	budova s číslem popisným	{482}	Židenice	582786	\N	\N	\N	\N
19420439	budova s číslem popisným	{483}	Židenice	582786	\N	\N	\N	\N
19420447	budova s číslem popisným	{484}	Židenice	582786	\N	\N	\N	\N
19420455	budova s číslem popisným	{485}	Židenice	582786	\N	\N	\N	\N
19420463	budova s číslem popisným	{486}	Židenice	582786	\N	\N	\N	\N
19420471	budova s číslem popisným	{487}	Židenice	582786	\N	\N	\N	\N
19420480	budova s číslem popisným	{488}	Židenice	582786	\N	\N	\N	\N
19420498	budova s číslem popisným	{489}	Židenice	582786	\N	\N	\N	\N
19420501	budova s číslem popisným	{490}	Židenice	582786	\N	\N	\N	\N
19420510	budova s číslem popisným	{491}	Židenice	582786	\N	\N	\N	\N
19420528	budova s číslem popisným	{492}	Židenice	582786	\N	\N	\N	\N
19420536	budova s číslem popisným	{493}	Židenice	582786	\N	\N	\N	\N
19420544	budova s číslem popisným	{494}	Židenice	582786	\N	\N	\N	\N
19420552	budova s číslem popisným	{495}	Židenice	582786	\N	\N	\N	\N
19420561	budova s číslem popisným	{496}	Židenice	582786	\N	\N	\N	\N
19420579	budova s číslem popisným	{497}	Židenice	582786	\N	\N	\N	\N
19420587	budova s číslem popisným	{498}	Židenice	582786	\N	\N	\N	\N
19420595	budova s číslem popisným	{499}	Židenice	582786	\N	\N	\N	\N
19420609	budova s číslem popisným	{500}	Židenice	582786	\N	\N	\N	\N
19420617	budova s číslem popisným	{501}	Židenice	582786	\N	\N	\N	\N
19420625	budova s číslem popisným	{502}	Židenice	582786	\N	\N	\N	\N
19420633	budova s číslem popisným	{503}	Židenice	582786	\N	\N	\N	\N
19420641	budova s číslem popisným	{504}	Židenice	582786	\N	\N	\N	\N
19420650	budova s číslem popisným	{505}	Židenice	582786	\N	\N	\N	\N
19420668	budova s číslem popisným	{506}	Židenice	582786	\N	\N	\N	\N
19420676	budova s číslem popisným	{507}	Židenice	582786	\N	\N	\N	\N
19420684	budova s číslem popisným	{508}	Židenice	582786	\N	\N	\N	\N
19420692	budova s číslem popisným	{509}	Židenice	582786	\N	\N	\N	\N
19420706	budova s číslem popisným	{510}	Židenice	582786	\N	\N	\N	\N
19420714	budova s číslem popisným	{511}	Židenice	582786	\N	\N	\N	\N
19420731	budova s číslem popisným	{513}	Židenice	582786	\N	\N	\N	\N
19420749	budova s číslem popisným	{514}	Židenice	582786	\N	\N	\N	\N
19420757	budova s číslem popisným	{515}	Židenice	582786	\N	\N	\N	\N
19420765	budova s číslem popisným	{516}	Židenice	582786	\N	\N	\N	\N
19420773	budova s číslem popisným	{517}	Židenice	582786	\N	\N	\N	\N
19420781	budova s číslem popisným	{518}	Židenice	582786	\N	\N	\N	\N
19420790	budova s číslem popisným	{519}	Židenice	582786	\N	\N	\N	\N
19420803	budova s číslem popisným	{520}	Židenice	582786	\N	\N	\N	\N
19420811	budova s číslem popisným	{521}	Židenice	582786	\N	\N	\N	\N
19420820	budova s číslem popisným	{522}	Židenice	582786	\N	\N	\N	\N
19420838	budova s číslem popisným	{523}	Židenice	582786	\N	\N	\N	\N
19420846	budova s číslem popisným	{524}	Židenice	582786	\N	\N	\N	\N
19420854	budova s číslem popisným	{525}	Židenice	582786	\N	\N	\N	\N
19420862	budova s číslem popisným	{526}	Židenice	582786	\N	\N	\N	\N
19420871	budova s číslem popisným	{527}	Židenice	582786	\N	\N	\N	\N
19420889	budova s číslem popisným	{528}	Židenice	582786	\N	\N	\N	\N
19420897	budova s číslem popisným	{529}	Židenice	582786	\N	\N	\N	\N
19420901	budova s číslem popisným	{530}	Židenice	582786	\N	\N	\N	\N
19420919	budova s číslem popisným	{532}	Židenice	582786	\N	\N	\N	\N
19420927	budova s číslem popisným	{533}	Židenice	582786	\N	\N	\N	\N
19420935	budova s číslem popisným	{534,540,553}	Židenice	582786	\N	\N	\N	\N
19420943	budova s číslem popisným	{535}	Židenice	582786	\N	\N	\N	\N
19420951	budova s číslem popisným	{536}	Židenice	582786	\N	\N	\N	\N
19420960	budova s číslem popisným	{537}	Židenice	582786	\N	\N	\N	\N
19420978	budova s číslem popisným	{538}	Židenice	582786	\N	\N	\N	\N
19420986	budova s číslem popisným	{539}	Židenice	582786	\N	\N	\N	\N
19421001	budova s číslem popisným	{541}	Židenice	582786	\N	\N	\N	\N
19421010	budova s číslem popisným	{542}	Židenice	582786	\N	\N	\N	\N
19421028	budova s číslem popisným	{543}	Židenice	582786	\N	\N	\N	\N
19421036	budova s číslem popisným	{544}	Židenice	582786	\N	\N	\N	\N
19421044	budova s číslem popisným	{545}	Židenice	582786	\N	\N	\N	\N
19421052	budova s číslem popisným	{546}	Židenice	582786	\N	\N	\N	\N
19421061	budova s číslem popisným	{547}	Židenice	582786	\N	\N	\N	\N
19421079	budova s číslem popisným	{548}	Židenice	582786	\N	\N	\N	\N
19421087	budova s číslem popisným	{549}	Židenice	582786	\N	\N	\N	\N
19421095	budova s číslem popisným	{550}	Židenice	582786	\N	\N	\N	\N
19421109	budova s číslem popisným	{551}	Židenice	582786	\N	\N	\N	\N
19421117	budova s číslem popisným	{552}	Židenice	582786	\N	\N	\N	\N
19421133	budova s číslem popisným	{554}	Židenice	582786	\N	\N	\N	\N
19421150	budova s číslem popisným	{556}	Židenice	582786	\N	\N	\N	\N
19421168	budova s číslem popisným	{557}	Židenice	582786	\N	\N	\N	\N
19421176	budova s číslem popisným	{558}	Židenice	582786	\N	\N	\N	\N
19421184	budova s číslem popisným	{559}	Židenice	582786	\N	\N	\N	\N
19421192	budova s číslem popisným	{560}	Židenice	582786	\N	\N	\N	\N
19421206	budova s číslem popisným	{561}	Židenice	582786	\N	\N	\N	\N
19421214	budova s číslem popisným	{562}	Židenice	582786	\N	\N	\N	\N
19421222	budova s číslem popisným	{563}	Židenice	582786	\N	\N	\N	\N
19421231	budova s číslem popisným	{564}	Židenice	582786	\N	\N	\N	\N
19421249	budova s číslem popisným	{565}	Židenice	582786	\N	\N	\N	\N
19421257	budova s číslem popisným	{566}	Židenice	582786	\N	\N	\N	\N
19421265	budova s číslem popisným	{567}	Židenice	582786	\N	\N	\N	\N
19421273	budova s číslem popisným	{568}	Židenice	582786	\N	\N	\N	\N
19421362	budova s číslem popisným	{577}	Židenice	582786	\N	\N	\N	\N
19421371	budova s číslem popisným	{578}	Židenice	582786	\N	\N	\N	\N
19421397	budova s číslem popisným	{580}	Židenice	582786	\N	\N	\N	\N
19421401	budova s číslem popisným	{581}	Židenice	582786	\N	\N	\N	\N
19421419	budova s číslem popisným	{582}	Židenice	582786	\N	\N	\N	\N
19421435	budova s číslem popisným	{584}	Židenice	582786	\N	\N	\N	\N
19421443	budova s číslem popisným	{585}	Židenice	582786	\N	\N	\N	\N
19421451	budova s číslem popisným	{586}	Židenice	582786	\N	\N	\N	\N
19421460	budova s číslem popisným	{587}	Židenice	582786	\N	\N	\N	\N
19421478	budova s číslem popisným	{588}	Židenice	582786	\N	\N	\N	\N
19421486	budova s číslem popisným	{589}	Židenice	582786	\N	\N	\N	\N
19421494	budova s číslem popisným	{590}	Židenice	582786	\N	\N	\N	\N
19421516	budova s číslem popisným	{592}	Židenice	582786	\N	\N	\N	\N
19421524	budova s číslem popisným	{593}	Židenice	582786	\N	\N	\N	\N
19421532	budova s číslem popisným	{594}	Židenice	582786	\N	\N	\N	\N
19421541	budova s číslem popisným	{595}	Židenice	582786	\N	\N	\N	\N
19421621	budova s číslem popisným	{603}	Židenice	582786	\N	\N	\N	\N
19421630	budova s číslem popisným	{604}	Židenice	582786	\N	\N	\N	\N
19421648	budova s číslem popisným	{605}	Židenice	582786	\N	\N	\N	\N
19421656	budova s číslem popisným	{606}	Židenice	582786	\N	\N	\N	\N
19421664	budova s číslem popisným	{607}	Židenice	582786	\N	\N	\N	\N
19421672	budova s číslem popisným	{608}	Židenice	582786	\N	\N	\N	\N
19421681	budova s číslem popisným	{609}	Židenice	582786	\N	\N	\N	\N
19421699	budova s číslem popisným	{610}	Židenice	582786	\N	\N	\N	\N
19421702	budova s číslem popisným	{611}	Židenice	582786	\N	\N	\N	\N
19421711	budova s číslem popisným	{612}	Židenice	582786	\N	\N	\N	\N
19421729	budova s číslem popisným	{613}	Židenice	582786	\N	\N	\N	\N
19421737	budova s číslem popisným	{614}	Židenice	582786	\N	\N	\N	\N
19421745	budova s číslem popisným	{615}	Židenice	582786	\N	\N	\N	\N
19421753	budova s číslem popisným	{616}	Židenice	582786	\N	\N	\N	\N
19421761	budova s číslem popisným	{617}	Židenice	582786	\N	\N	\N	\N
19421770	budova s číslem popisným	{618}	Židenice	582786	\N	\N	\N	\N
19421788	budova s číslem popisným	{619}	Židenice	582786	\N	\N	\N	\N
19421796	budova s číslem popisným	{620}	Židenice	582786	\N	\N	\N	\N
19421800	budova s číslem popisným	{621}	Židenice	582786	\N	\N	\N	\N
19421818	budova s číslem popisným	{622}	Židenice	582786	\N	\N	\N	\N
19421826	budova s číslem popisným	{623}	Židenice	582786	\N	\N	\N	\N
19421834	budova s číslem popisným	{624}	Židenice	582786	\N	\N	\N	\N
19421842	budova s číslem popisným	{625}	Židenice	582786	\N	\N	\N	\N
19421851	budova s číslem popisným	{626}	Židenice	582786	\N	\N	\N	\N
19421869	budova s číslem popisným	{627}	Židenice	582786	\N	\N	\N	\N
19421877	budova s číslem popisným	{628}	Židenice	582786	\N	\N	\N	\N
19421885	budova s číslem popisným	{629}	Židenice	582786	\N	\N	\N	\N
19421893	budova s číslem popisným	{630}	Židenice	582786	\N	\N	\N	\N
19421907	budova s číslem popisným	{631}	Židenice	582786	\N	\N	\N	\N
19421915	budova s číslem popisným	{632}	Židenice	582786	\N	\N	\N	\N
19421923	budova s číslem popisným	{633}	Židenice	582786	\N	\N	\N	\N
19421940	budova s číslem popisným	{635}	Židenice	582786	\N	\N	\N	\N
19421966	budova s číslem popisným	{637}	Židenice	582786	\N	\N	\N	\N
19421974	budova s číslem popisným	{638}	Židenice	582786	\N	\N	\N	\N
19421982	budova s číslem popisným	{639}	Židenice	582786	\N	\N	\N	\N
19421991	budova s číslem popisným	{640}	Židenice	582786	\N	\N	\N	\N
19422008	budova s číslem popisným	{641}	Židenice	582786	\N	\N	\N	\N
19422016	budova s číslem popisným	{642}	Židenice	582786	\N	\N	\N	\N
19422024	budova s číslem popisným	{643}	Židenice	582786	\N	\N	\N	\N
19422032	budova s číslem popisným	{644}	Židenice	582786	\N	\N	\N	\N
19422041	budova s číslem popisným	{645}	Židenice	582786	\N	\N	\N	\N
19422059	budova s číslem popisným	{646}	Židenice	582786	\N	\N	\N	\N
19422067	budova s číslem popisným	{647}	Židenice	582786	\N	\N	\N	\N
19422075	budova s číslem popisným	{648}	Židenice	582786	\N	\N	\N	\N
19422083	budova s číslem popisným	{649}	Židenice	582786	\N	\N	\N	\N
19422091	budova s číslem popisným	{650}	Židenice	582786	\N	\N	\N	\N
19422105	budova s číslem popisným	{651}	Židenice	582786	\N	\N	\N	\N
19422156	budova s číslem popisným	{656}	Židenice	582786	\N	\N	\N	\N
19422164	budova s číslem popisným	{657}	Židenice	582786	\N	\N	\N	\N
19422172	budova s číslem popisným	{658}	Židenice	582786	\N	\N	\N	\N
19422199	budova s číslem popisným	{660}	Židenice	582786	\N	\N	\N	\N
19422202	budova s číslem popisným	{661}	Židenice	582786	\N	\N	\N	\N
19422211	budova s číslem popisným	{662}	Židenice	582786	\N	\N	\N	\N
19422229	budova s číslem popisným	{663}	Židenice	582786	\N	\N	\N	\N
19422237	budova s číslem popisným	{664}	Židenice	582786	\N	\N	\N	\N
19422245	budova s číslem popisným	{665}	Židenice	582786	\N	\N	\N	\N
19422253	budova s číslem popisným	{666}	Židenice	582786	\N	\N	\N	\N
19422261	budova s číslem popisným	{667}	Židenice	582786	\N	\N	\N	\N
19422270	budova s číslem popisným	{668}	Židenice	582786	\N	\N	\N	\N
19422288	budova s číslem popisným	{669}	Židenice	582786	\N	\N	\N	\N
19422296	budova s číslem popisným	{670}	Židenice	582786	\N	\N	\N	\N
19422300	budova s číslem popisným	{671}	Židenice	582786	\N	\N	\N	\N
19422318	budova s číslem popisným	{672}	Židenice	582786	\N	\N	\N	\N
19422326	budova s číslem popisným	{673}	Židenice	582786	\N	\N	\N	\N
19422334	budova s číslem popisným	{674}	Židenice	582786	\N	\N	\N	\N
19422342	budova s číslem popisným	{675}	Židenice	582786	\N	\N	\N	\N
19422369	budova s číslem popisným	{677}	Židenice	582786	\N	\N	\N	\N
19422377	budova s číslem popisným	{678}	Židenice	582786	\N	\N	\N	\N
19422385	budova s číslem popisným	{679}	Židenice	582786	\N	\N	\N	\N
19422393	budova s číslem popisným	{680}	Židenice	582786	\N	\N	\N	\N
19422407	budova s číslem popisným	{681}	Židenice	582786	\N	\N	\N	\N
19422415	budova s číslem popisným	{682}	Židenice	582786	\N	\N	\N	\N
19422423	budova s číslem popisným	{683}	Židenice	582786	\N	\N	\N	\N
19422431	budova s číslem popisným	{684}	Židenice	582786	\N	\N	\N	\N
19422458	budova s číslem popisným	{686}	Židenice	582786	\N	\N	\N	\N
19422474	budova s číslem popisným	{688}	Židenice	582786	\N	\N	\N	\N
19422504	budova s číslem popisným	{4297}	Židenice	582786	\N	\N	\N	\N
19422512	budova s číslem popisným	{692}	Židenice	582786	\N	\N	\N	\N
19422521	budova s číslem popisným	{576,579,693}	Židenice	582786	\N	\N	\N	\N
19422539	budova s číslem popisným	{694}	Židenice	582786	\N	\N	\N	\N
19422547	budova s číslem popisným	{695}	Židenice	582786	\N	\N	\N	\N
19422555	budova s číslem popisným	{696}	Židenice	582786	\N	\N	\N	\N
19422563	budova s číslem popisným	{697}	Židenice	582786	\N	\N	\N	\N
19422571	budova s číslem popisným	{698}	Židenice	582786	\N	\N	\N	\N
19422580	budova s číslem popisným	{699}	Židenice	582786	\N	\N	\N	\N
19422598	budova s číslem popisným	{700}	Židenice	582786	\N	\N	\N	\N
19422601	budova s číslem popisným	{701}	Židenice	582786	\N	\N	\N	\N
19422610	budova s číslem popisným	{702}	Židenice	582786	\N	\N	\N	\N
19422628	budova s číslem popisným	{703}	Židenice	582786	\N	\N	\N	\N
19422636	budova s číslem popisným	{704}	Židenice	582786	\N	\N	\N	\N
19422644	budova s číslem popisným	{705}	Židenice	582786	\N	\N	\N	\N
19422652	budova s číslem popisným	{710}	Židenice	582786	\N	\N	\N	\N
19422661	budova s číslem popisným	{711}	Židenice	582786	\N	\N	\N	\N
19422679	budova s číslem popisným	{714}	Židenice	582786	\N	\N	\N	\N
19422687	budova s číslem popisným	{715}	Židenice	582786	\N	\N	\N	\N
19422695	budova s číslem popisným	{716}	Židenice	582786	\N	\N	\N	\N
19422717	budova s číslem popisným	{718}	Židenice	582786	\N	\N	\N	\N
19422725	budova s číslem popisným	{719}	Židenice	582786	\N	\N	\N	\N
19422733	budova s číslem popisným	{720}	Židenice	582786	\N	\N	\N	\N
19422741	budova s číslem popisným	{721}	Židenice	582786	\N	\N	\N	\N
19422750	budova s číslem popisným	{725}	Židenice	582786	\N	\N	\N	\N
19422768	budova s číslem popisným	{726}	Židenice	582786	\N	\N	\N	\N
19422776	budova s číslem popisným	{727}	Židenice	582786	\N	\N	\N	\N
19422784	budova s číslem popisným	{728}	Židenice	582786	\N	\N	\N	\N
19422792	budova s číslem popisným	{729}	Židenice	582786	\N	\N	\N	\N
19422806	budova s číslem popisným	{730}	Židenice	582786	\N	\N	\N	\N
19422814	budova s číslem popisným	{731}	Židenice	582786	\N	\N	\N	\N
19422822	budova s číslem popisným	{732}	Židenice	582786	\N	\N	\N	\N
19422831	budova s číslem popisným	{733}	Židenice	582786	\N	\N	\N	\N
19422849	budova s číslem popisným	{734}	Židenice	582786	\N	\N	\N	\N
19422857	budova s číslem popisným	{735}	Židenice	582786	\N	\N	\N	\N
19422865	budova s číslem popisným	{736}	Židenice	582786	\N	\N	\N	\N
19422873	budova s číslem popisným	{737}	Židenice	582786	\N	\N	\N	\N
19422881	budova s číslem popisným	{738}	Židenice	582786	\N	\N	\N	\N
19422903	budova s číslem popisným	{740}	Židenice	582786	\N	\N	\N	\N
19422911	budova s číslem popisným	{739,741,789}	Židenice	582786	\N	\N	\N	\N
19422920	budova s číslem popisným	{742}	Židenice	582786	\N	\N	\N	\N
19422938	budova s číslem popisným	{743}	Židenice	582786	\N	\N	\N	\N
19422946	budova s číslem popisným	{744}	Židenice	582786	\N	\N	\N	\N
19422954	budova s číslem popisným	{4381}	Židenice	582786	\N	\N	\N	\N
19422962	budova s číslem popisným	{751}	Židenice	582786	\N	\N	\N	\N
19422971	budova s číslem popisným	{752}	Židenice	582786	\N	\N	\N	\N
19422997	budova s číslem popisným	{754}	Židenice	582786	\N	\N	\N	\N
19423004	budova s číslem popisným	{755}	Židenice	582786	\N	\N	\N	\N
19423012	budova s číslem popisným	{756}	Židenice	582786	\N	\N	\N	\N
19423021	budova s číslem popisným	{757}	Židenice	582786	\N	\N	\N	\N
19423039	budova s číslem popisným	{758}	Židenice	582786	\N	\N	\N	\N
19423047	budova s číslem popisným	{759}	Židenice	582786	\N	\N	\N	\N
19423055	budova s číslem popisným	{760}	Židenice	582786	\N	\N	\N	\N
19423063	budova s číslem popisným	{762}	Židenice	582786	\N	\N	\N	\N
19423080	budova s číslem popisným	{768}	Židenice	582786	\N	\N	\N	\N
19423098	budova s číslem popisným	{769}	Židenice	582786	\N	\N	\N	\N
19423101	budova s číslem popisným	{770}	Židenice	582786	\N	\N	\N	\N
19423110	budova s číslem popisným	{771}	Židenice	582786	\N	\N	\N	\N
19423128	budova s číslem popisným	{772}	Židenice	582786	\N	\N	\N	\N
19423136	budova s číslem popisným	{773}	Židenice	582786	\N	\N	\N	\N
19423144	budova s číslem popisným	{774}	Židenice	582786	\N	\N	\N	\N
19423152	budova s číslem popisným	{775}	Židenice	582786	\N	\N	\N	\N
19423161	budova s číslem popisným	{776}	Židenice	582786	\N	\N	\N	\N
19423179	budova s číslem popisným	{777}	Židenice	582786	\N	\N	\N	\N
19423187	budova s číslem popisným	{779}	Židenice	582786	\N	\N	\N	\N
19423195	budova s číslem popisným	{780}	Židenice	582786	\N	\N	\N	\N
19423209	budova s číslem popisným	{781}	Židenice	582786	\N	\N	\N	\N
19423217	budova s číslem popisným	{782}	Židenice	582786	\N	\N	\N	\N
19423225	budova s číslem popisným	{783}	Židenice	582786	\N	\N	\N	\N
19423233	budova s číslem popisným	{784}	Židenice	582786	\N	\N	\N	\N
19423241	budova s číslem popisným	{785}	Židenice	582786	\N	\N	\N	\N
19423250	budova s číslem popisným	{786}	Židenice	582786	\N	\N	\N	\N
19423268	budova s číslem popisným	{787}	Židenice	582786	\N	\N	\N	\N
19423276	budova s číslem popisným	{788}	Židenice	582786	\N	\N	\N	\N
19423292	budova s číslem popisným	{790}	Židenice	582786	\N	\N	\N	\N
19423306	budova s číslem popisným	{791}	Židenice	582786	\N	\N	\N	\N
19423314	budova s číslem popisným	{793}	Židenice	582786	\N	\N	\N	\N
19423322	budova s číslem popisným	{794}	Židenice	582786	\N	\N	\N	\N
19423349	budova s číslem popisným	{796}	Židenice	582786	\N	\N	\N	\N
19423357	budova s číslem popisným	{798}	Židenice	582786	\N	\N	\N	\N
19423365	budova s číslem popisným	{799}	Židenice	582786	\N	\N	\N	\N
19423373	budova s číslem popisným	{800}	Židenice	582786	\N	\N	\N	\N
19423390	budova s číslem popisným	{802}	Židenice	582786	\N	\N	\N	\N
19423403	budova s číslem popisným	{803}	Židenice	582786	\N	\N	\N	\N
19423446	budova s číslem popisným	{807}	Židenice	582786	\N	\N	\N	\N
19423454	budova s číslem popisným	{808}	Židenice	582786	\N	\N	\N	\N
19423462	budova s číslem popisným	{809}	Židenice	582786	\N	\N	\N	\N
19423471	budova s číslem popisným	{810}	Židenice	582786	\N	\N	\N	\N
19423535	budova s číslem popisným	{816}	Židenice	582786	\N	\N	\N	\N
19423543	budova s číslem popisným	{817}	Židenice	582786	\N	\N	\N	\N
19423551	budova s číslem popisným	{818}	Židenice	582786	\N	\N	\N	\N
19423560	budova s číslem popisným	{819}	Židenice	582786	\N	\N	\N	\N
19423578	budova s číslem popisným	{820}	Židenice	582786	\N	\N	\N	\N
19423586	budova s číslem popisným	{821}	Židenice	582786	\N	\N	\N	\N
19423594	budova s číslem popisným	{822}	Židenice	582786	\N	\N	\N	\N
19423608	budova s číslem popisným	{823}	Židenice	582786	\N	\N	\N	\N
19423616	budova s číslem popisným	{824}	Židenice	582786	\N	\N	\N	\N
19423632	budova s číslem popisným	{826}	Židenice	582786	\N	\N	\N	\N
19423641	budova s číslem popisným	{827}	Židenice	582786	\N	\N	\N	\N
19423659	budova s číslem popisným	{828}	Židenice	582786	\N	\N	\N	\N
19423667	budova s číslem popisným	{829}	Židenice	582786	\N	\N	\N	\N
19423675	budova s číslem popisným	{830}	Židenice	582786	\N	\N	\N	\N
19423683	budova s číslem popisným	{831}	Židenice	582786	\N	\N	\N	\N
19423691	budova s číslem popisným	{835}	Židenice	582786	\N	\N	\N	\N
19423705	budova s číslem popisným	{836}	Židenice	582786	\N	\N	\N	\N
19423713	budova s číslem popisným	{837}	Židenice	582786	\N	\N	\N	\N
19423748	budova s číslem popisným	{840}	Židenice	582786	\N	\N	\N	\N
19423756	budova s číslem popisným	{841}	Židenice	582786	\N	\N	\N	\N
19423764	budova s číslem popisným	{842}	Židenice	582786	\N	\N	\N	\N
19423772	budova s číslem popisným	{843}	Židenice	582786	\N	\N	\N	\N
19423781	budova s číslem popisným	{844}	Židenice	582786	\N	\N	\N	\N
19423799	budova s číslem popisným	{845}	Židenice	582786	\N	\N	\N	\N
19423811	budova s číslem popisným	{847}	Židenice	582786	\N	\N	\N	\N
19423829	budova s číslem popisným	{848}	Židenice	582786	\N	\N	\N	\N
19423837	budova s číslem popisným	{849}	Židenice	582786	\N	\N	\N	\N
19423845	budova s číslem popisným	{850}	Židenice	582786	\N	\N	\N	\N
19423853	budova s číslem popisným	{851}	Židenice	582786	\N	\N	\N	\N
19423861	budova s číslem popisným	{852}	Židenice	582786	\N	\N	\N	\N
19423870	budova s číslem popisným	{853}	Židenice	582786	\N	\N	\N	\N
19423888	budova s číslem popisným	{857}	Židenice	582786	\N	\N	\N	\N
19423896	budova s číslem popisným	{858}	Židenice	582786	\N	\N	\N	\N
19423900	budova s číslem popisným	{859}	Židenice	582786	\N	\N	\N	\N
19423918	budova s číslem popisným	{860}	Židenice	582786	\N	\N	\N	\N
19423926	budova s číslem popisným	{861,896,1046}	Židenice	582786	\N	\N	\N	\N
19423934	budova s číslem popisným	{862}	Židenice	582786	\N	\N	\N	\N
19423942	budova s číslem popisným	{863}	Židenice	582786	\N	\N	\N	\N
19423951	budova s číslem popisným	{864}	Židenice	582786	\N	\N	\N	\N
19423969	budova s číslem popisným	{865}	Židenice	582786	\N	\N	\N	\N
19423977	budova s číslem popisným	{866}	Židenice	582786	\N	\N	\N	\N
19423985	budova s číslem popisným	{867}	Židenice	582786	\N	\N	\N	\N
19423993	budova s číslem popisným	{868}	Židenice	582786	\N	\N	\N	\N
19424001	budova s číslem popisným	{869}	Židenice	582786	\N	\N	\N	\N
19424019	budova s číslem popisným	{870}	Židenice	582786	\N	\N	\N	\N
19424027	budova s číslem popisným	{871}	Židenice	582786	\N	\N	\N	\N
19424035	budova s číslem popisným	{872}	Židenice	582786	\N	\N	\N	\N
19424043	budova s číslem popisným	{873}	Židenice	582786	\N	\N	\N	\N
19424051	budova s číslem popisným	{874}	Židenice	582786	\N	\N	\N	\N
19424060	budova s číslem popisným	{875}	Židenice	582786	\N	\N	\N	\N
19424078	budova s číslem popisným	{876}	Židenice	582786	\N	\N	\N	\N
19424086	budova s číslem popisným	{877}	Židenice	582786	\N	\N	\N	\N
19424124	budova s číslem popisným	{881}	Židenice	582786	\N	\N	\N	\N
19424132	budova s číslem popisným	{882}	Židenice	582786	\N	\N	\N	\N
19424141	budova s číslem popisným	{883}	Židenice	582786	\N	\N	\N	\N
19424159	budova s číslem popisným	{884}	Židenice	582786	\N	\N	\N	\N
19424167	budova s číslem popisným	{885}	Židenice	582786	\N	\N	\N	\N
19424175	budova s číslem popisným	{886}	Židenice	582786	\N	\N	\N	\N
19424183	budova s číslem popisným	{887}	Židenice	582786	\N	\N	\N	\N
19424191	budova s číslem popisným	{888}	Židenice	582786	\N	\N	\N	\N
19424205	budova s číslem popisným	{889}	Židenice	582786	\N	\N	\N	\N
19424213	budova s číslem popisným	{890}	Židenice	582786	\N	\N	\N	\N
19424221	budova s číslem popisným	{891}	Židenice	582786	\N	\N	\N	\N
19424230	budova s číslem popisným	{892}	Židenice	582786	\N	\N	\N	\N
19424248	budova s číslem popisným	{893}	Židenice	582786	\N	\N	\N	\N
19424256	budova s číslem popisným	{894}	Židenice	582786	\N	\N	\N	\N
19424264	budova s číslem popisným	{895}	Židenice	582786	\N	\N	\N	\N
19424281	budova s číslem popisným	{897}	Židenice	582786	\N	\N	\N	\N
19424299	budova s číslem popisným	{898}	Židenice	582786	\N	\N	\N	\N
19424302	budova s číslem popisným	{899}	Židenice	582786	\N	\N	\N	\N
19424311	budova s číslem popisným	{900}	Židenice	582786	\N	\N	\N	\N
19424329	budova s číslem popisným	{901}	Židenice	582786	\N	\N	\N	\N
19424337	budova s číslem popisným	{4448}	Židenice	582786	\N	\N	\N	\N
19424345	budova s číslem popisným	{903}	Židenice	582786	\N	\N	\N	\N
19424361	budova s číslem popisným	{906}	Židenice	582786	\N	\N	\N	\N
19424370	budova s číslem popisným	{907}	Židenice	582786	\N	\N	\N	\N
19424388	budova s číslem popisným	{908}	Židenice	582786	\N	\N	\N	\N
19424396	budova s číslem popisným	{909}	Židenice	582786	\N	\N	\N	\N
19424400	budova s číslem popisným	{910}	Židenice	582786	\N	\N	\N	\N
19424418	budova s číslem popisným	{911}	Židenice	582786	\N	\N	\N	\N
19424426	budova s číslem popisným	{912}	Židenice	582786	\N	\N	\N	\N
19424434	budova s číslem popisným	{913}	Židenice	582786	\N	\N	\N	\N
19424442	budova s číslem popisným	{914}	Židenice	582786	\N	\N	\N	\N
19424451	budova s číslem popisným	{915}	Židenice	582786	\N	\N	\N	\N
19424469	budova s číslem popisným	{916}	Židenice	582786	\N	\N	\N	\N
19424477	budova s číslem popisným	{917}	Židenice	582786	\N	\N	\N	\N
19424493	budova s číslem popisným	{919}	Židenice	582786	\N	\N	\N	\N
19424507	budova s číslem popisným	{921}	Židenice	582786	\N	\N	\N	\N
19424515	budova s číslem popisným	{922}	Židenice	582786	\N	\N	\N	\N
19424523	budova s číslem popisným	{923}	Židenice	582786	\N	\N	\N	\N
19424540	budova s číslem popisným	{926}	Židenice	582786	\N	\N	\N	\N
19424566	budova s číslem popisným	{928}	Židenice	582786	\N	\N	\N	\N
19424574	budova s číslem popisným	{929}	Židenice	582786	\N	\N	\N	\N
19424582	budova s číslem popisným	{930}	Židenice	582786	\N	\N	\N	\N
19424591	budova s číslem popisným	{931}	Židenice	582786	\N	\N	\N	\N
19424604	budova s číslem popisným	{932}	Židenice	582786	\N	\N	\N	\N
19424612	budova s číslem popisným	{933}	Židenice	582786	\N	\N	\N	\N
19424621	budova s číslem popisným	{934}	Židenice	582786	\N	\N	\N	\N
19424639	budova s číslem popisným	{935}	Židenice	582786	\N	\N	\N	\N
19424647	budova s číslem popisným	{936}	Židenice	582786	\N	\N	\N	\N
19424655	budova s číslem popisným	{937}	Židenice	582786	\N	\N	\N	\N
19424663	budova s číslem popisným	{938}	Židenice	582786	\N	\N	\N	\N
19424671	budova s číslem popisným	{939}	Židenice	582786	\N	\N	\N	\N
19424680	budova s číslem popisným	{940}	Židenice	582786	\N	\N	\N	\N
19424698	budova s číslem popisným	{941}	Židenice	582786	\N	\N	\N	\N
19424701	budova s číslem popisným	{942}	Židenice	582786	\N	\N	\N	\N
19424710	budova s číslem popisným	{943}	Židenice	582786	\N	\N	\N	\N
19424728	budova s číslem popisným	{944}	Židenice	582786	\N	\N	\N	\N
19424736	budova s číslem popisným	{945}	Židenice	582786	\N	\N	\N	\N
19424744	budova s číslem popisným	{946}	Židenice	582786	\N	\N	\N	\N
19424752	budova s číslem popisným	{947}	Židenice	582786	\N	\N	\N	\N
19424761	budova s číslem popisným	{948}	Židenice	582786	\N	\N	\N	\N
19424779	budova s číslem popisným	{949}	Židenice	582786	\N	\N	\N	\N
19424787	budova s číslem popisným	{950}	Židenice	582786	\N	\N	\N	\N
19424795	budova s číslem popisným	{951}	Židenice	582786	\N	\N	\N	\N
19424809	budova s číslem popisným	{952}	Židenice	582786	\N	\N	\N	\N
19424817	budova s číslem popisným	{953}	Židenice	582786	\N	\N	\N	\N
19424825	budova s číslem popisným	{954}	Židenice	582786	\N	\N	\N	\N
19424833	budova s číslem popisným	{955}	Židenice	582786	\N	\N	\N	\N
19424841	budova s číslem popisným	{956}	Židenice	582786	\N	\N	\N	\N
19424850	budova s číslem popisným	{957}	Židenice	582786	\N	\N	\N	\N
19424868	budova s číslem popisným	{959}	Židenice	582786	\N	\N	\N	\N
19424876	budova s číslem popisným	{960}	Židenice	582786	\N	\N	\N	\N
19424884	budova s číslem popisným	{961}	Židenice	582786	\N	\N	\N	\N
19424892	budova s číslem popisným	{962}	Židenice	582786	\N	\N	\N	\N
19424906	budova s číslem popisným	{963}	Židenice	582786	\N	\N	\N	\N
19424914	budova s číslem popisným	{964}	Židenice	582786	\N	\N	\N	\N
19424922	budova s číslem popisným	{965}	Židenice	582786	\N	\N	\N	\N
19424931	budova s číslem popisným	{966}	Židenice	582786	\N	\N	\N	\N
19424949	budova s číslem popisným	{967}	Židenice	582786	\N	\N	\N	\N
19424957	budova s číslem popisným	{968}	Židenice	582786	\N	\N	\N	\N
19424965	budova s číslem popisným	{969}	Židenice	582786	\N	\N	\N	\N
19424973	budova s číslem popisným	{970}	Židenice	582786	\N	\N	\N	\N
19424981	budova s číslem popisným	{971}	Židenice	582786	\N	\N	\N	\N
19424990	budova s číslem popisným	{972}	Židenice	582786	\N	\N	\N	\N
19425007	budova s číslem popisným	{973}	Židenice	582786	\N	\N	\N	\N
19425015	budova s číslem popisným	{974}	Židenice	582786	\N	\N	\N	\N
19425023	budova s číslem popisným	{975}	Židenice	582786	\N	\N	\N	\N
19425031	budova s číslem popisným	{976}	Židenice	582786	\N	\N	\N	\N
19425040	budova s číslem popisným	{977}	Židenice	582786	\N	\N	\N	\N
19425058	budova s číslem popisným	{978}	Židenice	582786	\N	\N	\N	\N
19425066	budova s číslem popisným	{979}	Židenice	582786	\N	\N	\N	\N
19425074	budova s číslem popisným	{980}	Židenice	582786	\N	\N	\N	\N
19425082	budova s číslem popisným	{981}	Židenice	582786	\N	\N	\N	\N
19425091	budova s číslem popisným	{982}	Židenice	582786	\N	\N	\N	\N
19425104	budova s číslem popisným	{983}	Židenice	582786	\N	\N	\N	\N
19425112	budova s číslem popisným	{984}	Židenice	582786	\N	\N	\N	\N
19425139	budova s číslem popisným	{987}	Židenice	582786	\N	\N	\N	\N
19425147	budova s číslem popisným	{988}	Židenice	582786	\N	\N	\N	\N
19425155	budova s číslem popisným	{989}	Židenice	582786	\N	\N	\N	\N
19425171	budova s číslem popisným	{991}	Židenice	582786	\N	\N	\N	\N
19425198	budova s číslem popisným	{993}	Židenice	582786	\N	\N	\N	\N
19425201	budova s číslem popisným	{994}	Židenice	582786	\N	\N	\N	\N
19425210	budova s číslem popisným	{995}	Židenice	582786	\N	\N	\N	\N
19425228	budova s číslem popisným	{996}	Židenice	582786	\N	\N	\N	\N
19425236	budova s číslem popisným	{997}	Židenice	582786	\N	\N	\N	\N
19425244	budova s číslem popisným	{998}	Židenice	582786	\N	\N	\N	\N
19425252	budova s číslem popisným	{999}	Židenice	582786	\N	\N	\N	\N
19425261	budova s číslem popisným	{1000}	Židenice	582786	\N	\N	\N	\N
19425287	budova s číslem popisným	{1002,1003,1004}	Židenice	582786	\N	\N	\N	\N
19425341	budova s číslem popisným	{1009}	Židenice	582786	\N	\N	\N	\N
19425350	budova s číslem popisným	{1010}	Židenice	582786	\N	\N	\N	\N
19425368	budova s číslem popisným	{1011}	Židenice	582786	\N	\N	\N	\N
19425376	budova s číslem popisným	{1012}	Židenice	582786	\N	\N	\N	\N
19425384	budova s číslem popisným	{1013}	Židenice	582786	\N	\N	\N	\N
19425392	budova s číslem popisným	{1014}	Židenice	582786	\N	\N	\N	\N
19425406	budova s číslem popisným	{1015}	Židenice	582786	\N	\N	\N	\N
19425414	budova s číslem popisným	{1016}	Židenice	582786	\N	\N	\N	\N
19425422	budova s číslem popisným	{1017}	Židenice	582786	\N	\N	\N	\N
19425431	budova s číslem popisným	{1018}	Židenice	582786	\N	\N	\N	\N
19425449	budova s číslem popisným	{1019}	Židenice	582786	\N	\N	\N	\N
19425457	budova s číslem popisným	{1020}	Židenice	582786	\N	\N	\N	\N
19425473	budova s číslem popisným	{1022}	Židenice	582786	\N	\N	\N	\N
19425481	budova s číslem popisným	{1023}	Židenice	582786	\N	\N	\N	\N
19425490	budova s číslem popisným	{1024}	Židenice	582786	\N	\N	\N	\N
19425503	budova s číslem popisným	{1025}	Židenice	582786	\N	\N	\N	\N
19425511	budova s číslem popisným	{1026}	Židenice	582786	\N	\N	\N	\N
19425520	budova s číslem popisným	{1027}	Židenice	582786	\N	\N	\N	\N
19425538	budova s číslem popisným	{1028}	Židenice	582786	\N	\N	\N	\N
19425546	budova s číslem popisným	{1029}	Židenice	582786	\N	\N	\N	\N
19425562	budova s číslem popisným	{1032}	Židenice	582786	\N	\N	\N	\N
19425571	budova s číslem popisným	{1033}	Židenice	582786	\N	\N	\N	\N
19425589	budova s číslem popisným	{1034}	Židenice	582786	\N	\N	\N	\N
19425597	budova s číslem popisným	{1035}	Židenice	582786	\N	\N	\N	\N
19425601	budova s číslem popisným	{1036}	Židenice	582786	\N	\N	\N	\N
19425627	budova s číslem popisným	{1038}	Židenice	582786	\N	\N	\N	\N
19425635	budova s číslem popisným	{1039}	Židenice	582786	\N	\N	\N	\N
19425643	budova s číslem popisným	{1040}	Židenice	582786	\N	\N	\N	\N
19425651	budova s číslem popisným	{1041}	Židenice	582786	\N	\N	\N	\N
19425660	budova s číslem popisným	{1042}	Židenice	582786	\N	\N	\N	\N
19425678	budova s číslem popisným	{1043}	Židenice	582786	\N	\N	\N	\N
19425686	budova s číslem popisným	{1044}	Židenice	582786	\N	\N	\N	\N
19425694	budova s číslem popisným	{1045}	Židenice	582786	\N	\N	\N	\N
19425716	budova s číslem popisným	{1047}	Židenice	582786	\N	\N	\N	\N
19425724	budova s číslem popisným	{1049}	Židenice	582786	\N	\N	\N	\N
19425732	budova s číslem popisným	{1050}	Židenice	582786	\N	\N	\N	\N
19425741	budova s číslem popisným	{1051}	Židenice	582786	\N	\N	\N	\N
19425767	budova s číslem popisným	{1053}	Židenice	582786	\N	\N	\N	\N
19425783	budova s číslem popisným	{1055}	Židenice	582786	\N	\N	\N	\N
19425791	budova s číslem popisným	{1056}	Židenice	582786	\N	\N	\N	\N
19425805	budova s číslem popisným	{1057}	Židenice	582786	\N	\N	\N	\N
19425813	budova s číslem popisným	{1058}	Židenice	582786	\N	\N	\N	\N
19425821	budova s číslem popisným	{1059}	Židenice	582786	\N	\N	\N	\N
19425830	budova s číslem popisným	{1060}	Židenice	582786	\N	\N	\N	\N
19425848	budova s číslem popisným	{1062}	Židenice	582786	\N	\N	\N	\N
19425856	budova s číslem popisným	{1063}	Židenice	582786	\N	\N	\N	\N
19425864	budova s číslem popisným	{1064}	Židenice	582786	\N	\N	\N	\N
19425872	budova s číslem popisným	{1065}	Židenice	582786	\N	\N	\N	\N
19425881	budova s číslem popisným	{1066}	Židenice	582786	\N	\N	\N	\N
19425899	budova s číslem popisným	{1067}	Židenice	582786	\N	\N	\N	\N
19425902	budova s číslem popisným	{1068}	Židenice	582786	\N	\N	\N	\N
19425911	budova s číslem popisným	{1069}	Židenice	582786	\N	\N	\N	\N
19425929	budova s číslem popisným	{1070}	Židenice	582786	\N	\N	\N	\N
19425937	budova s číslem popisným	{1071}	Židenice	582786	\N	\N	\N	\N
19425945	budova s číslem popisným	{1072}	Židenice	582786	\N	\N	\N	\N
19425953	budova s číslem popisným	{1073}	Židenice	582786	\N	\N	\N	\N
19425961	budova s číslem popisným	{1075}	Židenice	582786	\N	\N	\N	\N
19425970	budova s číslem popisným	{1076}	Židenice	582786	\N	\N	\N	\N
19425988	budova s číslem popisným	{1077,1164,1165}	Židenice	582786	\N	\N	\N	\N
19425996	budova s číslem popisným	{1078}	Židenice	582786	\N	\N	\N	\N
19426003	budova s číslem popisným	{1079}	Židenice	582786	\N	\N	\N	\N
19426011	budova s číslem popisným	{1080}	Židenice	582786	\N	\N	\N	\N
19426020	budova s číslem popisným	{1081}	Židenice	582786	\N	\N	\N	\N
19426038	budova s číslem popisným	{1082}	Židenice	582786	\N	\N	\N	\N
19426046	budova s číslem popisným	{1083}	Židenice	582786	\N	\N	\N	\N
19426054	budova s číslem popisným	{1084}	Židenice	582786	\N	\N	\N	\N
19426062	budova s číslem popisným	{1085}	Židenice	582786	\N	\N	\N	\N
19426071	budova s číslem popisným	{1086}	Židenice	582786	\N	\N	\N	\N
19426089	budova s číslem popisným	{1087}	Židenice	582786	\N	\N	\N	\N
19426097	budova s číslem popisným	{1088}	Židenice	582786	\N	\N	\N	\N
19426101	budova s číslem popisným	{1089}	Židenice	582786	\N	\N	\N	\N
19426119	budova s číslem popisným	{1090}	Židenice	582786	\N	\N	\N	\N
19426127	budova s číslem popisným	{1091}	Židenice	582786	\N	\N	\N	\N
19426135	budova s číslem popisným	{1092}	Židenice	582786	\N	\N	\N	\N
19426143	budova s číslem popisným	{1093}	Židenice	582786	\N	\N	\N	\N
19426151	budova s číslem popisným	{1094}	Židenice	582786	\N	\N	\N	\N
19426160	budova s číslem popisným	{1095}	Židenice	582786	\N	\N	\N	\N
19426178	budova s číslem popisným	{1096}	Židenice	582786	\N	\N	\N	\N
19426186	budova s číslem popisným	{1097}	Židenice	582786	\N	\N	\N	\N
19426194	budova s číslem popisným	{1098}	Židenice	582786	\N	\N	\N	\N
19426208	budova s číslem popisným	{1099}	Židenice	582786	\N	\N	\N	\N
19426216	budova s číslem popisným	{1100}	Židenice	582786	\N	\N	\N	\N
19426224	budova s číslem popisným	{1101}	Židenice	582786	\N	\N	\N	\N
19426232	budova s číslem popisným	{1102}	Židenice	582786	\N	\N	\N	\N
19426241	budova s číslem popisným	{1103}	Židenice	582786	\N	\N	\N	\N
19426259	budova s číslem popisným	{1104}	Židenice	582786	\N	\N	\N	\N
19426267	budova s číslem popisným	{1105}	Židenice	582786	\N	\N	\N	\N
19426275	budova s číslem popisným	{1106}	Židenice	582786	\N	\N	\N	\N
19426283	budova s číslem popisným	{1107}	Židenice	582786	\N	\N	\N	\N
19426291	budova s číslem popisným	{1108}	Židenice	582786	\N	\N	\N	\N
19426305	budova s číslem popisným	{1109}	Židenice	582786	\N	\N	\N	\N
19426313	budova s číslem popisným	{1110}	Židenice	582786	\N	\N	\N	\N
19426330	budova s číslem popisným	{1112}	Židenice	582786	\N	\N	\N	\N
19426348	budova s číslem popisným	{1113}	Židenice	582786	\N	\N	\N	\N
19426356	budova s číslem popisným	{1114}	Židenice	582786	\N	\N	\N	\N
19426364	budova s číslem popisným	{1115}	Židenice	582786	\N	\N	\N	\N
19426372	budova s číslem popisným	{1116}	Židenice	582786	\N	\N	\N	\N
19426381	budova s číslem popisným	{1117}	Židenice	582786	\N	\N	\N	\N
19426402	budova s číslem popisným	{1119}	Židenice	582786	\N	\N	\N	\N
19426411	budova s číslem popisným	{1120}	Židenice	582786	\N	\N	\N	\N
19426429	budova s číslem popisným	{1121}	Židenice	582786	\N	\N	\N	\N
19426437	budova s číslem popisným	{1122}	Židenice	582786	\N	\N	\N	\N
19426445	budova s číslem popisným	{1123}	Židenice	582786	\N	\N	\N	\N
19426453	budova s číslem popisným	{1124}	Židenice	582786	\N	\N	\N	\N
19426461	budova s číslem popisným	{1125}	Židenice	582786	\N	\N	\N	\N
19426488	budova s číslem popisným	{1127}	Židenice	582786	\N	\N	\N	\N
19426496	budova s číslem popisným	{1128}	Židenice	582786	\N	\N	\N	\N
19426500	budova s číslem popisným	{1129}	Židenice	582786	\N	\N	\N	\N
19426518	budova s číslem popisným	{1130}	Židenice	582786	\N	\N	\N	\N
19426526	budova s číslem popisným	{1131}	Židenice	582786	\N	\N	\N	\N
19426534	budova s číslem popisným	{1132}	Židenice	582786	\N	\N	\N	\N
19426542	budova s číslem popisným	{1133}	Židenice	582786	\N	\N	\N	\N
19426551	budova s číslem popisným	{1134}	Židenice	582786	\N	\N	\N	\N
19426569	budova s číslem popisným	{1135}	Židenice	582786	\N	\N	\N	\N
19426577	budova s číslem popisným	{1136}	Židenice	582786	\N	\N	\N	\N
19426585	budova s číslem popisným	{1137}	Židenice	582786	\N	\N	\N	\N
19426593	budova s číslem popisným	{1138}	Židenice	582786	\N	\N	\N	\N
19426607	budova s číslem popisným	{1140}	Židenice	582786	\N	\N	\N	\N
19426615	budova s číslem popisným	{1141}	Židenice	582786	\N	\N	\N	\N
19426623	budova s číslem popisným	{1142}	Židenice	582786	\N	\N	\N	\N
19426640	budova s číslem popisným	{1144}	Židenice	582786	\N	\N	\N	\N
19426658	budova s číslem popisným	{1145}	Židenice	582786	\N	\N	\N	\N
19426666	budova s číslem popisným	{1146}	Židenice	582786	\N	\N	\N	\N
19426674	budova s číslem popisným	{1147}	Židenice	582786	\N	\N	\N	\N
19426682	budova s číslem popisným	{1148}	Židenice	582786	\N	\N	\N	\N
19426691	budova s číslem popisným	{1149}	Židenice	582786	\N	\N	\N	\N
19426704	budova s číslem popisným	{1150}	Židenice	582786	\N	\N	\N	\N
19426721	budova s číslem popisným	{1152}	Židenice	582786	\N	\N	\N	\N
19426739	budova s číslem popisným	{1153}	Židenice	582786	\N	\N	\N	\N
19426747	budova s číslem popisným	{1154}	Židenice	582786	\N	\N	\N	\N
19426763	budova s číslem popisným	{1156}	Židenice	582786	\N	\N	\N	\N
19426771	budova s číslem popisným	{1157}	Židenice	582786	\N	\N	\N	\N
19426780	budova s číslem popisným	{1158}	Židenice	582786	\N	\N	\N	\N
19426798	budova s číslem popisným	{1159}	Židenice	582786	\N	\N	\N	\N
19426801	budova s číslem popisným	{1160}	Židenice	582786	\N	\N	\N	\N
19426810	budova s číslem popisným	{1161}	Židenice	582786	\N	\N	\N	\N
19426828	budova s číslem popisným	{1162}	Židenice	582786	\N	\N	\N	\N
19426836	budova s číslem popisným	{1163}	Židenice	582786	\N	\N	\N	\N
19426861	budova s číslem popisným	{1166}	Židenice	582786	\N	\N	\N	\N
19426879	budova s číslem popisným	{1167}	Židenice	582786	\N	\N	\N	\N
19426887	budova s číslem popisným	{1168}	Židenice	582786	\N	\N	\N	\N
19426895	budova s číslem popisným	{1169}	Židenice	582786	\N	\N	\N	\N
19426909	budova s číslem popisným	{1170}	Židenice	582786	\N	\N	\N	\N
19426917	budova s číslem popisným	{1171}	Židenice	582786	\N	\N	\N	\N
19426933	budova s číslem popisným	{1173}	Židenice	582786	\N	\N	\N	\N
19426941	budova s číslem popisným	{1174}	Židenice	582786	\N	\N	\N	\N
19426950	budova s číslem popisným	{1175,1258,1341,1398,1481,1502}	Židenice	582786	\N	\N	\N	\N
19426968	budova s číslem popisným	{1176}	Židenice	582786	\N	\N	\N	\N
19426976	budova s číslem popisným	{1177}	Židenice	582786	\N	\N	\N	\N
19426992	budova s číslem popisným	{1179}	Židenice	582786	\N	\N	\N	\N
19427000	budova s číslem popisným	{1180}	Židenice	582786	\N	\N	\N	\N
19427018	budova s číslem popisným	{1181}	Židenice	582786	\N	\N	\N	\N
19427034	budova s číslem popisným	{1183}	Židenice	582786	\N	\N	\N	\N
19427042	budova s číslem popisným	{1184}	Židenice	582786	\N	\N	\N	\N
19427077	budova s číslem popisným	{1187}	Židenice	582786	\N	\N	\N	\N
19427085	budova s číslem popisným	{1188}	Židenice	582786	\N	\N	\N	\N
19427093	budova s číslem popisným	{1189}	Židenice	582786	\N	\N	\N	\N
19427107	budova s číslem popisným	{1190}	Židenice	582786	\N	\N	\N	\N
19427115	budova s číslem popisným	{1191}	Židenice	582786	\N	\N	\N	\N
19427123	budova s číslem popisným	{1192}	Židenice	582786	\N	\N	\N	\N
19427131	budova s číslem popisným	{1193}	Židenice	582786	\N	\N	\N	\N
19427140	budova s číslem popisným	{1194}	Židenice	582786	\N	\N	\N	\N
19427158	budova s číslem popisným	{1195}	Židenice	582786	\N	\N	\N	\N
19427166	budova s číslem popisným	{1196}	Židenice	582786	\N	\N	\N	\N
19427174	budova s číslem popisným	{1197}	Židenice	582786	\N	\N	\N	\N
19427182	budova s číslem popisným	{1198}	Židenice	582786	\N	\N	\N	\N
19427212	budova s číslem popisným	{1201}	Židenice	582786	\N	\N	\N	\N
19427221	budova s číslem popisným	{1203}	Židenice	582786	\N	\N	\N	\N
19427239	budova s číslem popisným	{1204}	Židenice	582786	\N	\N	\N	\N
19427247	budova s číslem popisným	{1205}	Židenice	582786	\N	\N	\N	\N
19427255	budova s číslem popisným	{1206}	Židenice	582786	\N	\N	\N	\N
19427263	budova s číslem popisným	{1207}	Židenice	582786	\N	\N	\N	\N
19427271	budova s číslem popisným	{1208}	Židenice	582786	\N	\N	\N	\N
19427280	budova s číslem popisným	{1209}	Židenice	582786	\N	\N	\N	\N
19427298	budova s číslem popisným	{1210}	Židenice	582786	\N	\N	\N	\N
19427301	budova s číslem popisným	{1211}	Židenice	582786	\N	\N	\N	\N
19427310	budova s číslem popisným	{1212}	Židenice	582786	\N	\N	\N	\N
19427328	budova s číslem popisným	{1213}	Židenice	582786	\N	\N	\N	\N
19427336	budova s číslem popisným	{1214}	Židenice	582786	\N	\N	\N	\N
19427344	budova s číslem popisným	{1215}	Židenice	582786	\N	\N	\N	\N
19427352	budova s číslem popisným	{1216}	Židenice	582786	\N	\N	\N	\N
19427361	budova s číslem popisným	{1217}	Židenice	582786	\N	\N	\N	\N
19427387	budova s číslem popisným	{1219}	Židenice	582786	\N	\N	\N	\N
19427395	budova s číslem popisným	{1220}	Židenice	582786	\N	\N	\N	\N
19427409	budova s číslem popisným	{1221}	Židenice	582786	\N	\N	\N	\N
19427417	budova s číslem popisným	{1222}	Židenice	582786	\N	\N	\N	\N
19427425	budova s číslem popisným	{1223}	Židenice	582786	\N	\N	\N	\N
19427433	budova s číslem popisným	{1224}	Židenice	582786	\N	\N	\N	\N
19427441	budova s číslem popisným	{1225}	Židenice	582786	\N	\N	\N	\N
19427450	budova s číslem popisným	{1226}	Židenice	582786	\N	\N	\N	\N
19427468	budova s číslem popisným	{1227}	Židenice	582786	\N	\N	\N	\N
19427476	budova s číslem popisným	{1228}	Židenice	582786	\N	\N	\N	\N
19427484	budova s číslem popisným	{1229}	Židenice	582786	\N	\N	\N	\N
19427492	budova s číslem popisným	{1230}	Židenice	582786	\N	\N	\N	\N
19427506	budova s číslem popisným	{1231}	Židenice	582786	\N	\N	\N	\N
19427514	budova s číslem popisným	{1232}	Židenice	582786	\N	\N	\N	\N
19427522	budova s číslem popisným	{1233}	Židenice	582786	\N	\N	\N	\N
19427531	budova s číslem popisným	{1234}	Židenice	582786	\N	\N	\N	\N
19427557	budova s číslem popisným	{1236}	Židenice	582786	\N	\N	\N	\N
19427565	budova s číslem popisným	{1237}	Židenice	582786	\N	\N	\N	\N
19427573	budova s číslem popisným	{1238}	Židenice	582786	\N	\N	\N	\N
19427581	budova s číslem popisným	{1239}	Židenice	582786	\N	\N	\N	\N
19427590	budova s číslem popisným	{1240}	Židenice	582786	\N	\N	\N	\N
19427603	budova s číslem popisným	{1241}	Židenice	582786	\N	\N	\N	\N
19427611	budova s číslem popisným	{1242}	Židenice	582786	\N	\N	\N	\N
19427620	budova s číslem popisným	{1244}	Židenice	582786	\N	\N	\N	\N
19427638	budova s číslem popisným	{1245}	Židenice	582786	\N	\N	\N	\N
19427646	budova s číslem popisným	{1246}	Židenice	582786	\N	\N	\N	\N
19427654	budova s číslem popisným	{1247}	Židenice	582786	\N	\N	\N	\N
19427662	budova s číslem popisným	{1248}	Židenice	582786	\N	\N	\N	\N
19427689	budova s číslem popisným	{1250}	Židenice	582786	\N	\N	\N	\N
19427697	budova s číslem popisným	{1252}	Židenice	582786	\N	\N	\N	\N
19427701	budova s číslem popisným	{1253}	Židenice	582786	\N	\N	\N	\N
19427719	budova s číslem popisným	{1254}	Židenice	582786	\N	\N	\N	\N
19427727	budova s číslem popisným	{1255}	Židenice	582786	\N	\N	\N	\N
19427735	budova s číslem popisným	{1256}	Židenice	582786	\N	\N	\N	\N
19427743	budova s číslem popisným	{1257}	Židenice	582786	\N	\N	\N	\N
19427760	budova s číslem popisným	{1259}	Židenice	582786	\N	\N	\N	\N
19427778	budova s číslem popisným	{1260}	Židenice	582786	\N	\N	\N	\N
19427786	budova s číslem popisným	{1261}	Židenice	582786	\N	\N	\N	\N
19427794	budova s číslem popisným	{1262}	Židenice	582786	\N	\N	\N	\N
19427808	budova s číslem popisným	{1264}	Židenice	582786	\N	\N	\N	\N
19427816	budova s číslem popisným	{1265}	Židenice	582786	\N	\N	\N	\N
19427824	budova s číslem popisným	{1266}	Židenice	582786	\N	\N	\N	\N
19427832	budova s číslem popisným	{1267}	Židenice	582786	\N	\N	\N	\N
19427841	budova s číslem popisným	{1268}	Židenice	582786	\N	\N	\N	\N
19427859	budova s číslem popisným	{1269}	Židenice	582786	\N	\N	\N	\N
19427867	budova s číslem popisným	{1270}	Židenice	582786	\N	\N	\N	\N
19427875	budova s číslem popisným	{1271}	Židenice	582786	\N	\N	\N	\N
19427883	budova s číslem popisným	{1272}	Židenice	582786	\N	\N	\N	\N
19427891	budova s číslem popisným	{1273}	Židenice	582786	\N	\N	\N	\N
19427913	budova s číslem popisným	{1275}	Židenice	582786	\N	\N	\N	\N
19427921	budova s číslem popisným	{1276}	Židenice	582786	\N	\N	\N	\N
19427930	budova s číslem popisným	{1277}	Židenice	582786	\N	\N	\N	\N
19427948	budova s číslem popisným	{1278}	Židenice	582786	\N	\N	\N	\N
19427964	budova s číslem popisným	{1280}	Židenice	582786	\N	\N	\N	\N
19427972	budova s číslem popisným	{1281}	Židenice	582786	\N	\N	\N	\N
19427981	budova s číslem popisným	{1282}	Židenice	582786	\N	\N	\N	\N
19427999	budova s číslem popisným	{1283}	Židenice	582786	\N	\N	\N	\N
19428006	budova s číslem popisným	{1284}	Židenice	582786	\N	\N	\N	\N
19428014	budova s číslem popisným	{1285}	Židenice	582786	\N	\N	\N	\N
19428022	budova s číslem popisným	{1286}	Židenice	582786	\N	\N	\N	\N
19428031	budova s číslem popisným	{1287}	Židenice	582786	\N	\N	\N	\N
19428049	budova s číslem popisným	{1288}	Židenice	582786	\N	\N	\N	\N
19428057	budova s číslem popisným	{1289}	Židenice	582786	\N	\N	\N	\N
19428065	budova s číslem popisným	{1290}	Židenice	582786	\N	\N	\N	\N
19428073	budova s číslem popisným	{1291}	Židenice	582786	\N	\N	\N	\N
19428081	budova s číslem popisným	{1292}	Židenice	582786	\N	\N	\N	\N
19428090	budova s číslem popisným	{1293}	Židenice	582786	\N	\N	\N	\N
19428103	budova s číslem popisným	{1294}	Židenice	582786	\N	\N	\N	\N
19428111	budova s číslem popisným	{1295}	Židenice	582786	\N	\N	\N	\N
19428120	budova s číslem popisným	{1296}	Židenice	582786	\N	\N	\N	\N
19428138	budova s číslem popisným	{1297}	Židenice	582786	\N	\N	\N	\N
19428146	budova s číslem popisným	{1298}	Židenice	582786	\N	\N	\N	\N
19428154	budova s číslem popisným	{1299}	Židenice	582786	\N	\N	\N	\N
19428162	budova s číslem popisným	{1300}	Židenice	582786	\N	\N	\N	\N
19428171	budova s číslem popisným	{1301}	Židenice	582786	\N	\N	\N	\N
19428189	budova s číslem popisným	{1302}	Židenice	582786	\N	\N	\N	\N
19428197	budova s číslem popisným	{1303}	Židenice	582786	\N	\N	\N	\N
19428219	budova s číslem popisným	{1305}	Židenice	582786	\N	\N	\N	\N
19428227	budova s číslem popisným	{1306}	Židenice	582786	\N	\N	\N	\N
19428235	budova s číslem popisným	{1307}	Židenice	582786	\N	\N	\N	\N
19428243	budova s číslem popisným	{1308}	Židenice	582786	\N	\N	\N	\N
19428251	budova s číslem popisným	{1309}	Židenice	582786	\N	\N	\N	\N
19428278	budova s číslem popisným	{1311}	Židenice	582786	\N	\N	\N	\N
19428286	budova s číslem popisným	{1312}	Židenice	582786	\N	\N	\N	\N
19428294	budova s číslem popisným	{1313}	Židenice	582786	\N	\N	\N	\N
19428308	budova s číslem popisným	{1316}	Židenice	582786	\N	\N	\N	\N
19428316	budova s číslem popisným	{1317}	Židenice	582786	\N	\N	\N	\N
19428332	budova s číslem popisným	{1319}	Židenice	582786	\N	\N	\N	\N
19428359	budova s číslem popisným	{1321}	Židenice	582786	\N	\N	\N	\N
19428367	budova s číslem popisným	{1322}	Židenice	582786	\N	\N	\N	\N
19428375	budova s číslem popisným	{1323}	Židenice	582786	\N	\N	\N	\N
19428383	budova s číslem popisným	{1324}	Židenice	582786	\N	\N	\N	\N
19428391	budova s číslem popisným	{1325}	Židenice	582786	\N	\N	\N	\N
19428405	budova s číslem popisným	{1326}	Židenice	582786	\N	\N	\N	\N
19428421	budova s číslem popisným	{1330}	Židenice	582786	\N	\N	\N	\N
19428430	budova s číslem popisným	{1331}	Židenice	582786	\N	\N	\N	\N
19428448	budova s číslem popisným	{1332}	Židenice	582786	\N	\N	\N	\N
19428456	budova s číslem popisným	{1333}	Židenice	582786	\N	\N	\N	\N
19428464	budova s číslem popisným	{1334}	Židenice	582786	\N	\N	\N	\N
19428472	budova s číslem popisným	{1335}	Židenice	582786	\N	\N	\N	\N
19428481	budova s číslem popisným	{1336}	Židenice	582786	\N	\N	\N	\N
19428499	budova s číslem popisným	{1337}	Židenice	582786	\N	\N	\N	\N
19428502	budova s číslem popisným	{1338}	Židenice	582786	\N	\N	\N	\N
19428545	budova s číslem popisným	{1342}	Židenice	582786	\N	\N	\N	\N
19428553	budova s číslem popisným	{1343}	Židenice	582786	\N	\N	\N	\N
19428561	budova s číslem popisným	{1344}	Židenice	582786	\N	\N	\N	\N
19428570	budova s číslem popisným	{1345}	Židenice	582786	\N	\N	\N	\N
19428588	budova s číslem popisným	{1346}	Židenice	582786	\N	\N	\N	\N
19428596	budova s číslem popisným	{1347}	Židenice	582786	\N	\N	\N	\N
19428600	budova s číslem popisným	{1348}	Židenice	582786	\N	\N	\N	\N
19428618	budova s číslem popisným	{1349}	Židenice	582786	\N	\N	\N	\N
19428626	budova s číslem popisným	{1350}	Židenice	582786	\N	\N	\N	\N
19428634	budova s číslem popisným	{1351}	Židenice	582786	\N	\N	\N	\N
19428642	budova s číslem popisným	{1352}	Židenice	582786	\N	\N	\N	\N
19428651	budova s číslem popisným	{1353}	Židenice	582786	\N	\N	\N	\N
19428669	budova s číslem popisným	{1354}	Židenice	582786	\N	\N	\N	\N
19428677	budova s číslem popisným	{1355}	Židenice	582786	\N	\N	\N	\N
19428707	budova s číslem popisným	{1358}	Židenice	582786	\N	\N	\N	\N
19428715	budova s číslem popisným	{1359}	Židenice	582786	\N	\N	\N	\N
19428723	budova s číslem popisným	{1360}	Židenice	582786	\N	\N	\N	\N
19428731	budova s číslem popisným	{1361}	Židenice	582786	\N	\N	\N	\N
19428740	budova s číslem popisným	{1362}	Židenice	582786	\N	\N	\N	\N
19428758	budova s číslem popisným	{1363}	Židenice	582786	\N	\N	\N	\N
19428766	budova s číslem popisným	{1364}	Židenice	582786	\N	\N	\N	\N
19428774	budova s číslem popisným	{1365}	Židenice	582786	\N	\N	\N	\N
19428782	budova s číslem popisným	{1366}	Židenice	582786	\N	\N	\N	\N
19428791	budova s číslem popisným	{1367}	Židenice	582786	\N	\N	\N	\N
19428804	budova s číslem popisným	{1368}	Židenice	582786	\N	\N	\N	\N
19428812	budova s číslem popisným	{1369}	Židenice	582786	\N	\N	\N	\N
19428821	budova s číslem popisným	{1370}	Židenice	582786	\N	\N	\N	\N
19428839	budova s číslem popisným	{1371}	Židenice	582786	\N	\N	\N	\N
19428847	budova s číslem popisným	{1372}	Židenice	582786	\N	\N	\N	\N
19428871	budova s číslem popisným	{1375}	Židenice	582786	\N	\N	\N	\N
19428880	budova s číslem popisným	{1376}	Židenice	582786	\N	\N	\N	\N
19428898	budova s číslem popisným	{1377}	Židenice	582786	\N	\N	\N	\N
19428901	budova s číslem popisným	{1378}	Židenice	582786	\N	\N	\N	\N
19428910	budova s číslem popisným	{1379}	Židenice	582786	\N	\N	\N	\N
19428928	budova s číslem popisným	{1380}	Židenice	582786	\N	\N	\N	\N
19428936	budova s číslem popisným	{1381}	Židenice	582786	\N	\N	\N	\N
19428944	budova s číslem popisným	{1382}	Židenice	582786	\N	\N	\N	\N
19428952	budova s číslem popisným	{1383}	Židenice	582786	\N	\N	\N	\N
19428961	budova s číslem popisným	{1384}	Židenice	582786	\N	\N	\N	\N
19428979	budova s číslem popisným	{1385}	Židenice	582786	\N	\N	\N	\N
19428987	budova s číslem popisným	{1386}	Židenice	582786	\N	\N	\N	\N
19429037	budova s číslem popisným	{1391}	Židenice	582786	\N	\N	\N	\N
19429045	budova s číslem popisným	{1392}	Židenice	582786	\N	\N	\N	\N
19429053	budova s číslem popisným	{1393}	Židenice	582786	\N	\N	\N	\N
19429061	budova s číslem popisným	{1394}	Židenice	582786	\N	\N	\N	\N
19429070	budova s číslem popisným	{1395}	Židenice	582786	\N	\N	\N	\N
19429088	budova s číslem popisným	{1396}	Židenice	582786	\N	\N	\N	\N
19429096	budova s číslem popisným	{1397}	Židenice	582786	\N	\N	\N	\N
19429126	budova s číslem popisným	{1400}	Židenice	582786	\N	\N	\N	\N
19429134	budova s číslem popisným	{1401}	Židenice	582786	\N	\N	\N	\N
19429142	budova s číslem popisným	{1402}	Židenice	582786	\N	\N	\N	\N
19429151	budova s číslem popisným	{1404}	Židenice	582786	\N	\N	\N	\N
19429169	budova s číslem popisným	{1409}	Židenice	582786	\N	\N	\N	\N
19429177	budova s číslem popisným	{1410}	Židenice	582786	\N	\N	\N	\N
19429185	budova s číslem popisným	{1411}	Židenice	582786	\N	\N	\N	\N
19429193	budova s číslem popisným	{1412}	Židenice	582786	\N	\N	\N	\N
19429207	budova s číslem popisným	{1413}	Židenice	582786	\N	\N	\N	\N
19429215	budova s číslem popisným	{1414}	Židenice	582786	\N	\N	\N	\N
19429223	budova s číslem popisným	{1415}	Židenice	582786	\N	\N	\N	\N
19429231	budova s číslem popisným	{1416}	Židenice	582786	\N	\N	\N	\N
19429240	budova s číslem popisným	{1417}	Židenice	582786	\N	\N	\N	\N
19429258	budova s číslem popisným	{1418}	Židenice	582786	\N	\N	\N	\N
19429266	budova s číslem popisným	{1419}	Židenice	582786	\N	\N	\N	\N
19429274	budova s číslem popisným	{1420}	Židenice	582786	\N	\N	\N	\N
19429282	budova s číslem popisným	{1421}	Židenice	582786	\N	\N	\N	\N
19429291	budova s číslem popisným	{1422}	Židenice	582786	\N	\N	\N	\N
19429304	budova s číslem popisným	{1423}	Židenice	582786	\N	\N	\N	\N
19429312	budova s číslem popisným	{1424}	Židenice	582786	\N	\N	\N	\N
19429321	budova s číslem popisným	{1425}	Židenice	582786	\N	\N	\N	\N
19429347	budova s číslem popisným	{1427}	Židenice	582786	\N	\N	\N	\N
19429363	budova s číslem popisným	{1429}	Židenice	582786	\N	\N	\N	\N
19429380	budova s číslem popisným	{1431}	Židenice	582786	\N	\N	\N	\N
19429398	budova s číslem popisným	{1432}	Židenice	582786	\N	\N	\N	\N
19429401	budova s číslem popisným	{1433}	Židenice	582786	\N	\N	\N	\N
19429410	budova s číslem popisným	{1434}	Židenice	582786	\N	\N	\N	\N
19429428	budova s číslem popisným	{1437}	Židenice	582786	\N	\N	\N	\N
19429436	budova s číslem popisným	{1438}	Židenice	582786	\N	\N	\N	\N
19429444	budova s číslem popisným	{1439}	Židenice	582786	\N	\N	\N	\N
19429452	budova s číslem popisným	{1440}	Židenice	582786	\N	\N	\N	\N
19429461	budova s číslem popisným	{1441}	Židenice	582786	\N	\N	\N	\N
19429479	budova s číslem popisným	{1442}	Židenice	582786	\N	\N	\N	\N
19429487	budova s číslem popisným	{1443}	Židenice	582786	\N	\N	\N	\N
19429495	budova s číslem popisným	{1444}	Židenice	582786	\N	\N	\N	\N
19429509	budova s číslem popisným	{1445}	Židenice	582786	\N	\N	\N	\N
19429517	budova s číslem popisným	{1446}	Židenice	582786	\N	\N	\N	\N
19429525	budova s číslem popisným	{1447}	Židenice	582786	\N	\N	\N	\N
19429533	budova s číslem popisným	{1448}	Židenice	582786	\N	\N	\N	\N
19429541	budova s číslem popisným	{1449}	Židenice	582786	\N	\N	\N	\N
19429550	budova s číslem popisným	{1450}	Židenice	582786	\N	\N	\N	\N
19429568	budova s číslem popisným	{1451}	Židenice	582786	\N	\N	\N	\N
19429584	budova s číslem popisným	{1453}	Židenice	582786	\N	\N	\N	\N
19429592	budova s číslem popisným	{1454}	Židenice	582786	\N	\N	\N	\N
19429606	budova s číslem popisným	{1455}	Židenice	582786	\N	\N	\N	\N
19429614	budova s číslem popisným	{1456}	Židenice	582786	\N	\N	\N	\N
19429622	budova s číslem popisným	{1457}	Židenice	582786	\N	\N	\N	\N
19429631	budova s číslem popisným	{1458}	Židenice	582786	\N	\N	\N	\N
19429649	budova s číslem popisným	{1459}	Židenice	582786	\N	\N	\N	\N
19429657	budova s číslem popisným	{1460}	Židenice	582786	\N	\N	\N	\N
19429665	budova s číslem popisným	{4464}	Židenice	582786	\N	\N	\N	\N
19429673	budova s číslem popisným	{1462}	Židenice	582786	\N	\N	\N	\N
19429681	budova s číslem popisným	{1463}	Židenice	582786	\N	\N	\N	\N
19429690	budova s číslem popisným	{1464}	Židenice	582786	\N	\N	\N	\N
19429703	budova s číslem popisným	{1465}	Židenice	582786	\N	\N	\N	\N
19429711	budova s číslem popisným	{1466}	Židenice	582786	\N	\N	\N	\N
19429720	budova s číslem popisným	{1467}	Židenice	582786	\N	\N	\N	\N
19429738	budova s číslem popisným	{1468}	Židenice	582786	\N	\N	\N	\N
19429746	budova s číslem popisným	{1469}	Židenice	582786	\N	\N	\N	\N
19429754	budova s číslem popisným	{1470}	Židenice	582786	\N	\N	\N	\N
19429762	budova s číslem popisným	{1471}	Židenice	582786	\N	\N	\N	\N
19429771	budova s číslem popisným	{1472}	Židenice	582786	\N	\N	\N	\N
19429789	budova s číslem popisným	{1473}	Židenice	582786	\N	\N	\N	\N
19429797	budova s číslem popisným	{1474}	Židenice	582786	\N	\N	\N	\N
19429801	budova s číslem popisným	{1475}	Židenice	582786	\N	\N	\N	\N
19429819	budova s číslem popisným	{1476}	Židenice	582786	\N	\N	\N	\N
19429827	budova s číslem popisným	{1477}	Židenice	582786	\N	\N	\N	\N
19429835	budova s číslem popisným	{1478}	Židenice	582786	\N	\N	\N	\N
19429843	budova s číslem popisným	{1479}	Židenice	582786	\N	\N	\N	\N
19429851	budova s číslem popisným	{1480}	Židenice	582786	\N	\N	\N	\N
19429878	budova s číslem popisným	{1482}	Židenice	582786	\N	\N	\N	\N
19429886	budova s číslem popisným	{1483}	Židenice	582786	\N	\N	\N	\N
19429894	budova s číslem popisným	{1484}	Židenice	582786	\N	\N	\N	\N
19429908	budova s číslem popisným	{4372}	Židenice	582786	\N	\N	\N	\N
19429916	budova s číslem popisným	{1486}	Židenice	582786	\N	\N	\N	\N
19429924	budova s číslem popisným	{1487}	Židenice	582786	\N	\N	\N	\N
19429932	budova s číslem popisným	{1488}	Židenice	582786	\N	\N	\N	\N
19429941	budova s číslem popisným	{1489}	Židenice	582786	\N	\N	\N	\N
19429967	budova s číslem popisným	{1491}	Židenice	582786	\N	\N	\N	\N
19429991	budova s číslem popisným	{1494}	Židenice	582786	\N	\N	\N	\N
19430001	budova s číslem popisným	{1495}	Židenice	582786	\N	\N	\N	\N
19430019	budova s číslem popisným	{1496}	Židenice	582786	\N	\N	\N	\N
19430027	budova s číslem popisným	{1497}	Židenice	582786	\N	\N	\N	\N
19430035	budova s číslem popisným	{1498}	Židenice	582786	\N	\N	\N	\N
19430043	budova s číslem popisným	{1499}	Židenice	582786	\N	\N	\N	\N
19430051	budova s číslem popisným	{1500}	Židenice	582786	\N	\N	\N	\N
19430108	budova s číslem popisným	{1505}	Židenice	582786	\N	\N	\N	\N
19430116	budova s číslem popisným	{1506}	Židenice	582786	\N	\N	\N	\N
19430132	budova s číslem popisným	{1508}	Židenice	582786	\N	\N	\N	\N
19430141	budova s číslem popisným	{1509}	Židenice	582786	\N	\N	\N	\N
19430159	budova s číslem popisným	{1510}	Židenice	582786	\N	\N	\N	\N
19430167	budova s číslem popisným	{1511}	Židenice	582786	\N	\N	\N	\N
19430175	budova s číslem popisným	{1512}	Židenice	582786	\N	\N	\N	\N
19430183	budova s číslem popisným	{1513}	Židenice	582786	\N	\N	\N	\N
19430191	budova s číslem popisným	{1514}	Židenice	582786	\N	\N	\N	\N
19430205	budova s číslem popisným	{1515}	Židenice	582786	\N	\N	\N	\N
19430213	budova s číslem popisným	{1516}	Židenice	582786	\N	\N	\N	\N
19430221	budova s číslem popisným	{1517}	Židenice	582786	\N	\N	\N	\N
19430230	budova s číslem popisným	{1518}	Židenice	582786	\N	\N	\N	\N
19430248	budova s číslem popisným	{1519}	Židenice	582786	\N	\N	\N	\N
19430256	budova s číslem popisným	{1520}	Židenice	582786	\N	\N	\N	\N
19430272	budova s číslem popisným	{1522}	Židenice	582786	\N	\N	\N	\N
19430281	budova s číslem popisným	{1523}	Židenice	582786	\N	\N	\N	\N
19430299	budova s číslem popisným	{1524}	Židenice	582786	\N	\N	\N	\N
19430302	budova s číslem popisným	{1525}	Židenice	582786	\N	\N	\N	\N
19430311	budova s číslem popisným	{1528}	Židenice	582786	\N	\N	\N	\N
19430329	budova s číslem popisným	{1529}	Židenice	582786	\N	\N	\N	\N
19430337	budova s číslem popisným	{1530}	Židenice	582786	\N	\N	\N	\N
19430345	budova s číslem popisným	{1531}	Židenice	582786	\N	\N	\N	\N
19430353	budova s číslem popisným	{1532}	Židenice	582786	\N	\N	\N	\N
19430361	budova s číslem popisným	{1533}	Židenice	582786	\N	\N	\N	\N
19430370	budova s číslem popisným	{1534}	Židenice	582786	\N	\N	\N	\N
19430388	budova s číslem popisným	{1535}	Židenice	582786	\N	\N	\N	\N
19430396	budova s číslem popisným	{1537}	Židenice	582786	\N	\N	\N	\N
19430400	budova s číslem popisným	{1538}	Židenice	582786	\N	\N	\N	\N
19430418	budova s číslem popisným	{1539}	Židenice	582786	\N	\N	\N	\N
19430426	budova s číslem popisným	{1540}	Židenice	582786	\N	\N	\N	\N
19430434	budova s číslem popisným	{1541}	Židenice	582786	\N	\N	\N	\N
19430442	budova s číslem popisným	{1542}	Židenice	582786	\N	\N	\N	\N
19430451	budova s číslem popisným	{1543}	Židenice	582786	\N	\N	\N	\N
19430469	budova s číslem popisným	{1544}	Židenice	582786	\N	\N	\N	\N
19430477	budova s číslem popisným	{1545}	Židenice	582786	\N	\N	\N	\N
19430485	budova s číslem popisným	{1546}	Židenice	582786	\N	\N	\N	\N
19430493	budova s číslem popisným	{1547}	Židenice	582786	\N	\N	\N	\N
19430507	budova s číslem popisným	{1548}	Židenice	582786	\N	\N	\N	\N
19430515	budova s číslem popisným	{1549}	Židenice	582786	\N	\N	\N	\N
19430523	budova s číslem popisným	{1550}	Židenice	582786	\N	\N	\N	\N
19430531	budova s číslem popisným	{1551}	Židenice	582786	\N	\N	\N	\N
19430540	budova s číslem popisným	{1552}	Židenice	582786	\N	\N	\N	\N
19430566	budova s číslem popisným	{1554}	Židenice	582786	\N	\N	\N	\N
19430574	budova s číslem popisným	{1555}	Židenice	582786	\N	\N	\N	\N
19430582	budova s číslem popisným	{1556}	Židenice	582786	\N	\N	\N	\N
19430591	budova s číslem popisným	{1557}	Židenice	582786	\N	\N	\N	\N
19430604	budova s číslem popisným	{1558}	Židenice	582786	\N	\N	\N	\N
19430612	budova s číslem popisným	{1561}	Židenice	582786	\N	\N	\N	\N
19430621	budova s číslem popisným	{1562}	Židenice	582786	\N	\N	\N	\N
19430647	budova s číslem popisným	{1564}	Židenice	582786	\N	\N	\N	\N
19430663	budova s číslem popisným	{1567}	Židenice	582786	\N	\N	\N	\N
19430671	budova s číslem popisným	{1568}	Židenice	582786	\N	\N	\N	\N
19430680	budova s číslem popisným	{1569}	Židenice	582786	\N	\N	\N	\N
19430698	budova s číslem popisným	{1570}	Židenice	582786	\N	\N	\N	\N
19430701	budova s číslem popisným	{1571}	Židenice	582786	\N	\N	\N	\N
19430710	budova s číslem popisným	{1572}	Židenice	582786	\N	\N	\N	\N
19430728	budova s číslem popisným	{1573}	Židenice	582786	\N	\N	\N	\N
19430736	budova s číslem popisným	{1574}	Židenice	582786	\N	\N	\N	\N
19430744	budova s číslem popisným	{1575}	Židenice	582786	\N	\N	\N	\N
19430752	budova s číslem popisným	{1576}	Židenice	582786	\N	\N	\N	\N
19430761	budova s číslem popisným	{1577}	Židenice	582786	\N	\N	\N	\N
19430779	budova s číslem popisným	{1578}	Židenice	582786	\N	\N	\N	\N
19430787	budova s číslem popisným	{1579}	Židenice	582786	\N	\N	\N	\N
19430795	budova s číslem popisným	{1580}	Židenice	582786	\N	\N	\N	\N
19430809	budova s číslem popisným	{1581}	Židenice	582786	\N	\N	\N	\N
19430817	budova s číslem popisným	{1582}	Židenice	582786	\N	\N	\N	\N
19430825	budova s číslem popisným	{1583}	Židenice	582786	\N	\N	\N	\N
19430833	budova s číslem popisným	{1584}	Židenice	582786	\N	\N	\N	\N
19430841	budova s číslem popisným	{1585}	Židenice	582786	\N	\N	\N	\N
19430850	budova s číslem popisným	{1586}	Židenice	582786	\N	\N	\N	\N
19430868	budova s číslem popisným	{1587}	Židenice	582786	\N	\N	\N	\N
19430876	budova s číslem popisným	{1588}	Židenice	582786	\N	\N	\N	\N
19430892	budova s číslem popisným	{1591}	Židenice	582786	\N	\N	\N	\N
19430914	budova s číslem popisným	{1593}	Židenice	582786	\N	\N	\N	\N
19430922	budova s číslem popisným	{1594}	Židenice	582786	\N	\N	\N	\N
19430931	budova s číslem popisným	{1595}	Židenice	582786	\N	\N	\N	\N
19430957	budova s číslem popisným	{1597}	Židenice	582786	\N	\N	\N	\N
19430973	budova s číslem popisným	{1599}	Židenice	582786	\N	\N	\N	\N
19430981	budova s číslem popisným	{1600}	Židenice	582786	\N	\N	\N	\N
19430990	budova s číslem popisným	{1601}	Židenice	582786	\N	\N	\N	\N
19431007	budova s číslem popisným	{1602}	Židenice	582786	\N	\N	\N	\N
19431015	budova s číslem popisným	{1603}	Židenice	582786	\N	\N	\N	\N
19431023	budova s číslem popisným	{1604}	Židenice	582786	\N	\N	\N	\N
19431031	budova s číslem popisným	{1605}	Židenice	582786	\N	\N	\N	\N
19431040	budova s číslem popisným	{1606}	Židenice	582786	\N	\N	\N	\N
19431058	budova s číslem popisným	{1607}	Židenice	582786	\N	\N	\N	\N
19431066	budova s číslem popisným	{1608}	Židenice	582786	\N	\N	\N	\N
19431074	budova s číslem popisným	{1609}	Židenice	582786	\N	\N	\N	\N
19431082	budova s číslem popisným	{1610}	Židenice	582786	\N	\N	\N	\N
19431091	budova s číslem popisným	{1611}	Židenice	582786	\N	\N	\N	\N
19431104	budova s číslem popisným	{1612}	Židenice	582786	\N	\N	\N	\N
19431112	budova s číslem popisným	{1613}	Židenice	582786	\N	\N	\N	\N
19431121	budova s číslem popisným	{1614}	Židenice	582786	\N	\N	\N	\N
19431139	budova s číslem popisným	{1615}	Židenice	582786	\N	\N	\N	\N
19431147	budova s číslem popisným	{1616}	Židenice	582786	\N	\N	\N	\N
19431155	budova s číslem popisným	{1617}	Židenice	582786	\N	\N	\N	\N
19431163	budova s číslem popisným	{1618}	Židenice	582786	\N	\N	\N	\N
19431171	budova s číslem popisným	{1619}	Židenice	582786	\N	\N	\N	\N
19431180	budova s číslem popisným	{1620}	Židenice	582786	\N	\N	\N	\N
19431198	budova s číslem popisným	{1621}	Židenice	582786	\N	\N	\N	\N
19431201	budova s číslem popisným	{1622}	Židenice	582786	\N	\N	\N	\N
19431228	budova s číslem popisným	{1624}	Židenice	582786	\N	\N	\N	\N
19431236	budova s číslem popisným	{1625}	Židenice	582786	\N	\N	\N	\N
19431244	budova s číslem popisným	{1626}	Židenice	582786	\N	\N	\N	\N
19431252	budova s číslem popisným	{1627}	Židenice	582786	\N	\N	\N	\N
19431261	budova s číslem popisným	{1628}	Židenice	582786	\N	\N	\N	\N
19431279	budova s číslem popisným	{1629}	Židenice	582786	\N	\N	\N	\N
19431287	budova s číslem popisným	{1630}	Židenice	582786	\N	\N	\N	\N
19431295	budova s číslem popisným	{1631}	Židenice	582786	\N	\N	\N	\N
19431309	budova s číslem popisným	{1632}	Židenice	582786	\N	\N	\N	\N
19431317	budova s číslem popisným	{1633}	Židenice	582786	\N	\N	\N	\N
19431325	budova s číslem popisným	{1634}	Židenice	582786	\N	\N	\N	\N
19431333	budova s číslem popisným	{1635}	Židenice	582786	\N	\N	\N	\N
19431341	budova s číslem popisným	{1636}	Židenice	582786	\N	\N	\N	\N
19431350	budova s číslem popisným	{1637}	Židenice	582786	\N	\N	\N	\N
19431368	budova s číslem popisným	{1638}	Židenice	582786	\N	\N	\N	\N
19431376	budova s číslem popisným	{1639}	Židenice	582786	\N	\N	\N	\N
19431384	budova s číslem popisným	{1640}	Židenice	582786	\N	\N	\N	\N
19431406	budova s číslem popisným	{1642}	Židenice	582786	\N	\N	\N	\N
19431414	budova s číslem popisným	{1643}	Židenice	582786	\N	\N	\N	\N
19431422	budova s číslem popisným	{1644}	Židenice	582786	\N	\N	\N	\N
19431431	budova s číslem popisným	{1645}	Židenice	582786	\N	\N	\N	\N
19431449	budova s číslem popisným	{1646}	Židenice	582786	\N	\N	\N	\N
19431457	budova s číslem popisným	{1647}	Židenice	582786	\N	\N	\N	\N
19431465	budova s číslem popisným	{1648}	Židenice	582786	\N	\N	\N	\N
19431473	budova s číslem popisným	{1649}	Židenice	582786	\N	\N	\N	\N
19431481	budova s číslem popisným	{1650}	Židenice	582786	\N	\N	\N	\N
19431490	budova s číslem popisným	{1651}	Židenice	582786	\N	\N	\N	\N
19431503	budova s číslem popisným	{1652}	Židenice	582786	\N	\N	\N	\N
19431511	budova s číslem popisným	{1653}	Židenice	582786	\N	\N	\N	\N
19431520	budova s číslem popisným	{1654}	Židenice	582786	\N	\N	\N	\N
19431538	budova s číslem popisným	{1655}	Židenice	582786	\N	\N	\N	\N
19431546	budova s číslem popisným	{1656}	Židenice	582786	\N	\N	\N	\N
19431554	budova s číslem popisným	{1657}	Židenice	582786	\N	\N	\N	\N
19431562	budova s číslem popisným	{1658}	Židenice	582786	\N	\N	\N	\N
19431571	budova s číslem popisným	{1659}	Židenice	582786	\N	\N	\N	\N
19431589	budova s číslem popisným	{1660}	Židenice	582786	\N	\N	\N	\N
19431597	budova s číslem popisným	{1661}	Židenice	582786	\N	\N	\N	\N
19431601	budova s číslem popisným	{1662}	Židenice	582786	\N	\N	\N	\N
19431619	budova s číslem popisným	{1663}	Židenice	582786	\N	\N	\N	\N
19431627	budova s číslem popisným	{1665}	Židenice	582786	\N	\N	\N	\N
19431635	budova s číslem popisným	{1666}	Židenice	582786	\N	\N	\N	\N
19431643	budova s číslem popisným	{1667}	Židenice	582786	\N	\N	\N	\N
19431651	budova s číslem popisným	{1668}	Židenice	582786	\N	\N	\N	\N
19431660	budova s číslem popisným	{1669}	Židenice	582786	\N	\N	\N	\N
19431678	budova s číslem popisným	{1670}	Židenice	582786	\N	\N	\N	\N
19431686	budova s číslem popisným	{1671}	Židenice	582786	\N	\N	\N	\N
19431694	budova s číslem popisným	{1672}	Židenice	582786	\N	\N	\N	\N
19431708	budova s číslem popisným	{1673}	Židenice	582786	\N	\N	\N	\N
19431716	budova s číslem popisným	{1674}	Židenice	582786	\N	\N	\N	\N
19431724	budova s číslem popisným	{1675}	Židenice	582786	\N	\N	\N	\N
19431741	budova s číslem popisným	{1677}	Židenice	582786	\N	\N	\N	\N
19431759	budova s číslem popisným	{1678}	Židenice	582786	\N	\N	\N	\N
19431775	budova s číslem popisným	{1680}	Židenice	582786	\N	\N	\N	\N
19431783	budova s číslem popisným	{1681}	Židenice	582786	\N	\N	\N	\N
19431791	budova s číslem popisným	{1682}	Židenice	582786	\N	\N	\N	\N
19431805	budova s číslem popisným	{1683}	Židenice	582786	\N	\N	\N	\N
19431813	budova s číslem popisným	{1684}	Židenice	582786	\N	\N	\N	\N
19431821	budova s číslem popisným	{1685}	Židenice	582786	\N	\N	\N	\N
19431830	budova s číslem popisným	{1686}	Židenice	582786	\N	\N	\N	\N
19431848	budova s číslem popisným	{1687}	Židenice	582786	\N	\N	\N	\N
19431856	budova s číslem popisným	{1688}	Židenice	582786	\N	\N	\N	\N
19431864	budova s číslem popisným	{1689}	Židenice	582786	\N	\N	\N	\N
19431872	budova s číslem popisným	{1690}	Židenice	582786	\N	\N	\N	\N
19431881	budova s číslem popisným	{1691}	Židenice	582786	\N	\N	\N	\N
19431899	budova s číslem popisným	{1692}	Židenice	582786	\N	\N	\N	\N
19431902	budova s číslem popisným	{1693}	Židenice	582786	\N	\N	\N	\N
19431911	budova s číslem popisným	{1694}	Židenice	582786	\N	\N	\N	\N
19431929	budova s číslem popisným	{1695}	Židenice	582786	\N	\N	\N	\N
19431937	budova s číslem popisným	{1696}	Židenice	582786	\N	\N	\N	\N
19431945	budova s číslem popisným	{1697}	Židenice	582786	\N	\N	\N	\N
19431953	budova s číslem popisným	{1698}	Židenice	582786	\N	\N	\N	\N
19431961	budova s číslem popisným	{1699}	Židenice	582786	\N	\N	\N	\N
19431970	budova s číslem popisným	{1700}	Židenice	582786	\N	\N	\N	\N
19431988	budova s číslem popisným	{1701}	Židenice	582786	\N	\N	\N	\N
19431996	budova s číslem popisným	{1702}	Židenice	582786	\N	\N	\N	\N
19432003	budova s číslem popisným	{1703}	Židenice	582786	\N	\N	\N	\N
19432011	budova s číslem popisným	{1704}	Židenice	582786	\N	\N	\N	\N
19432020	budova s číslem popisným	{1705}	Židenice	582786	\N	\N	\N	\N
19432038	budova s číslem popisným	{1706}	Židenice	582786	\N	\N	\N	\N
19432046	budova s číslem popisným	{1707}	Židenice	582786	\N	\N	\N	\N
19432054	budova s číslem popisným	{1708}	Židenice	582786	\N	\N	\N	\N
19432062	budova s číslem popisným	{1709}	Židenice	582786	\N	\N	\N	\N
19432071	budova s číslem popisným	{1710}	Židenice	582786	\N	\N	\N	\N
19432089	budova s číslem popisným	{1711}	Židenice	582786	\N	\N	\N	\N
19432097	budova s číslem popisným	{1712}	Židenice	582786	\N	\N	\N	\N
19432101	budova s číslem popisným	{1713}	Židenice	582786	\N	\N	\N	\N
19432119	budova s číslem popisným	{1714}	Židenice	582786	\N	\N	\N	\N
19432127	budova s číslem popisným	{1715}	Židenice	582786	\N	\N	\N	\N
19432135	budova s číslem popisným	{1716}	Židenice	582786	\N	\N	\N	\N
19432143	budova s číslem popisným	{1717}	Židenice	582786	\N	\N	\N	\N
19432151	budova s číslem popisným	{1718}	Židenice	582786	\N	\N	\N	\N
19432160	budova s číslem popisným	{1719}	Židenice	582786	\N	\N	\N	\N
19432178	budova s číslem popisným	{1720}	Židenice	582786	\N	\N	\N	\N
19432186	budova s číslem popisným	{1721}	Židenice	582786	\N	\N	\N	\N
19432194	budova s číslem popisným	{1722}	Židenice	582786	\N	\N	\N	\N
19432208	budova s číslem popisným	{1723}	Židenice	582786	\N	\N	\N	\N
19432216	budova s číslem popisným	{1724}	Židenice	582786	\N	\N	\N	\N
19432224	budova s číslem popisným	{1725}	Židenice	582786	\N	\N	\N	\N
19432232	budova s číslem popisným	{1726}	Židenice	582786	\N	\N	\N	\N
19432241	budova s číslem popisným	{1727}	Židenice	582786	\N	\N	\N	\N
19432259	budova s číslem popisným	{1728}	Židenice	582786	\N	\N	\N	\N
19432267	budova s číslem popisným	{1729}	Židenice	582786	\N	\N	\N	\N
19432275	budova s číslem popisným	{1730}	Židenice	582786	\N	\N	\N	\N
19432283	budova s číslem popisným	{1731}	Židenice	582786	\N	\N	\N	\N
19432291	budova s číslem popisným	{1732}	Židenice	582786	\N	\N	\N	\N
19432305	budova s číslem popisným	{1733}	Židenice	582786	\N	\N	\N	\N
19432313	budova s číslem popisným	{1734}	Židenice	582786	\N	\N	\N	\N
19432321	budova s číslem popisným	{1735}	Židenice	582786	\N	\N	\N	\N
19432330	budova s číslem popisným	{1736}	Židenice	582786	\N	\N	\N	\N
19432348	budova s číslem popisným	{1737}	Židenice	582786	\N	\N	\N	\N
19432356	budova s číslem popisným	{1738}	Židenice	582786	\N	\N	\N	\N
19432364	budova s číslem popisným	{1740}	Židenice	582786	\N	\N	\N	\N
19432372	budova s číslem popisným	{1741}	Židenice	582786	\N	\N	\N	\N
19432381	budova s číslem popisným	{1742}	Židenice	582786	\N	\N	\N	\N
19432399	budova s číslem popisným	{1743}	Židenice	582786	\N	\N	\N	\N
19432402	budova s číslem popisným	{1744}	Židenice	582786	\N	\N	\N	\N
19432411	budova s číslem popisným	{1745}	Židenice	582786	\N	\N	\N	\N
19432429	budova s číslem popisným	{1746}	Židenice	582786	\N	\N	\N	\N
19432445	budova s číslem popisným	{1749}	Židenice	582786	\N	\N	\N	\N
19432453	budova s číslem popisným	{1750}	Židenice	582786	\N	\N	\N	\N
19432461	budova s číslem popisným	{1751}	Židenice	582786	\N	\N	\N	\N
19432470	budova s číslem popisným	{1752}	Židenice	582786	\N	\N	\N	\N
19432488	budova s číslem popisným	{1753}	Židenice	582786	\N	\N	\N	\N
19432496	budova s číslem popisným	{1754}	Židenice	582786	\N	\N	\N	\N
19432518	budova s číslem popisným	{1756}	Židenice	582786	\N	\N	\N	\N
19432526	budova s číslem popisným	{1757}	Židenice	582786	\N	\N	\N	\N
19432534	budova s číslem popisným	{1758}	Židenice	582786	\N	\N	\N	\N
19432542	budova s číslem popisným	{1759}	Židenice	582786	\N	\N	\N	\N
19432551	budova s číslem popisným	{1760}	Židenice	582786	\N	\N	\N	\N
19432569	budova s číslem popisným	{1761}	Židenice	582786	\N	\N	\N	\N
19432577	budova s číslem popisným	{1762}	Židenice	582786	\N	\N	\N	\N
19432585	budova s číslem popisným	{1763}	Židenice	582786	\N	\N	\N	\N
19432593	budova s číslem popisným	{1764}	Židenice	582786	\N	\N	\N	\N
19432607	budova s číslem popisným	{1765}	Židenice	582786	\N	\N	\N	\N
19432615	budova s číslem popisným	{1766}	Židenice	582786	\N	\N	\N	\N
19432623	budova s číslem popisným	{1767}	Židenice	582786	\N	\N	\N	\N
19432631	budova s číslem popisným	{1768}	Židenice	582786	\N	\N	\N	\N
19432640	budova s číslem popisným	{1769}	Židenice	582786	\N	\N	\N	\N
19432658	budova s číslem popisným	{1770}	Židenice	582786	\N	\N	\N	\N
19432666	budova s číslem popisným	{1771}	Židenice	582786	\N	\N	\N	\N
19432674	budova s číslem popisným	{1772}	Židenice	582786	\N	\N	\N	\N
19432682	budova s číslem popisným	{1773}	Židenice	582786	\N	\N	\N	\N
19432691	budova s číslem popisným	{1774}	Židenice	582786	\N	\N	\N	\N
19432704	budova s číslem popisným	{1775}	Židenice	582786	\N	\N	\N	\N
19432712	budova s číslem popisným	{1776}	Židenice	582786	\N	\N	\N	\N
19432721	budova s číslem popisným	{1777}	Židenice	582786	\N	\N	\N	\N
19432739	budova s číslem popisným	{1778}	Židenice	582786	\N	\N	\N	\N
19432747	budova s číslem popisným	{1779}	Židenice	582786	\N	\N	\N	\N
19432755	budova s číslem popisným	{1780}	Židenice	582786	\N	\N	\N	\N
19432763	budova s číslem popisným	{1781}	Židenice	582786	\N	\N	\N	\N
19432771	budova s číslem popisným	{1782}	Židenice	582786	\N	\N	\N	\N
19432780	budova s číslem popisným	{1783}	Židenice	582786	\N	\N	\N	\N
19432798	budova s číslem popisným	{1784}	Židenice	582786	\N	\N	\N	\N
19432801	budova s číslem popisným	{1785}	Židenice	582786	\N	\N	\N	\N
19432810	budova s číslem popisným	{1786}	Židenice	582786	\N	\N	\N	\N
19432828	budova s číslem popisným	{1787}	Židenice	582786	\N	\N	\N	\N
19432836	budova s číslem popisným	{1788}	Židenice	582786	\N	\N	\N	\N
19432844	budova s číslem popisným	{1789}	Židenice	582786	\N	\N	\N	\N
19432852	budova s číslem popisným	{1790}	Židenice	582786	\N	\N	\N	\N
19432861	budova s číslem popisným	{1791}	Židenice	582786	\N	\N	\N	\N
19432879	budova s číslem popisným	{1792}	Židenice	582786	\N	\N	\N	\N
19432887	budova s číslem popisným	{1793}	Židenice	582786	\N	\N	\N	\N
19432895	budova s číslem popisným	{1794}	Židenice	582786	\N	\N	\N	\N
19432909	budova s číslem popisným	{1795}	Židenice	582786	\N	\N	\N	\N
19432917	budova s číslem popisným	{1796}	Židenice	582786	\N	\N	\N	\N
19432925	budova s číslem popisným	{1797}	Židenice	582786	\N	\N	\N	\N
19432933	budova s číslem popisným	{1798}	Židenice	582786	\N	\N	\N	\N
19432941	budova s číslem popisným	{1799}	Židenice	582786	\N	\N	\N	\N
19432950	budova s číslem popisným	{1800}	Židenice	582786	\N	\N	\N	\N
19432968	budova s číslem popisným	{1801}	Židenice	582786	\N	\N	\N	\N
19432976	budova s číslem popisným	{1802}	Židenice	582786	\N	\N	\N	\N
19432984	budova s číslem popisným	{1803}	Židenice	582786	\N	\N	\N	\N
19432992	budova s číslem popisným	{1804}	Židenice	582786	\N	\N	\N	\N
19433000	budova s číslem popisným	{1805}	Židenice	582786	\N	\N	\N	\N
19433018	budova s číslem popisným	{1806}	Židenice	582786	\N	\N	\N	\N
19433026	budova s číslem popisným	{1807}	Židenice	582786	\N	\N	\N	\N
19433034	budova s číslem popisným	{1808}	Židenice	582786	\N	\N	\N	\N
19433042	budova s číslem popisným	{1809}	Židenice	582786	\N	\N	\N	\N
19433051	budova s číslem popisným	{1810}	Židenice	582786	\N	\N	\N	\N
19433069	budova s číslem popisným	{1811}	Židenice	582786	\N	\N	\N	\N
19433077	budova s číslem popisným	{1812}	Židenice	582786	\N	\N	\N	\N
19433085	budova s číslem popisným	{1813}	Židenice	582786	\N	\N	\N	\N
19433093	budova s číslem popisným	{1814}	Židenice	582786	\N	\N	\N	\N
19433107	budova s číslem popisným	{1815}	Židenice	582786	\N	\N	\N	\N
19433115	budova s číslem popisným	{1816}	Židenice	582786	\N	\N	\N	\N
19433123	budova s číslem popisným	{1817}	Židenice	582786	\N	\N	\N	\N
19433131	budova s číslem popisným	{1818}	Židenice	582786	\N	\N	\N	\N
19433140	budova s číslem popisným	{1819}	Židenice	582786	\N	\N	\N	\N
19433158	budova s číslem popisným	{1820}	Židenice	582786	\N	\N	\N	\N
19433166	budova s číslem popisným	{1821}	Židenice	582786	\N	\N	\N	\N
19433174	budova s číslem popisným	{1822}	Židenice	582786	\N	\N	\N	\N
19433182	budova s číslem popisným	{1823}	Židenice	582786	\N	\N	\N	\N
19433191	budova s číslem popisným	{1824}	Židenice	582786	\N	\N	\N	\N
19433204	budova s číslem popisným	{1825}	Židenice	582786	\N	\N	\N	\N
19433212	budova s číslem popisným	{1826}	Židenice	582786	\N	\N	\N	\N
19433221	budova s číslem popisným	{1827}	Židenice	582786	\N	\N	\N	\N
19433239	budova s číslem popisným	{1828}	Židenice	582786	\N	\N	\N	\N
19433247	budova s číslem popisným	{1829}	Židenice	582786	\N	\N	\N	\N
19433255	budova s číslem popisným	{1830}	Židenice	582786	\N	\N	\N	\N
19433263	budova s číslem popisným	{1831}	Židenice	582786	\N	\N	\N	\N
19433271	budova s číslem popisným	{1832}	Židenice	582786	\N	\N	\N	\N
19433280	budova s číslem popisným	{1833}	Židenice	582786	\N	\N	\N	\N
19433298	budova s číslem popisným	{1834}	Židenice	582786	\N	\N	\N	\N
19433301	budova s číslem popisným	{1835}	Židenice	582786	\N	\N	\N	\N
19433310	budova s číslem popisným	{1836}	Židenice	582786	\N	\N	\N	\N
19433328	budova s číslem popisným	{1837}	Židenice	582786	\N	\N	\N	\N
19433336	budova s číslem popisným	{1838}	Židenice	582786	\N	\N	\N	\N
19433344	budova s číslem popisným	{1839}	Židenice	582786	\N	\N	\N	\N
19433352	budova s číslem popisným	{1840}	Židenice	582786	\N	\N	\N	\N
19433361	budova s číslem popisným	{1841}	Židenice	582786	\N	\N	\N	\N
19433379	budova s číslem popisným	{1842}	Židenice	582786	\N	\N	\N	\N
19433387	budova s číslem popisným	{1843}	Židenice	582786	\N	\N	\N	\N
19433395	budova s číslem popisným	{1844}	Židenice	582786	\N	\N	\N	\N
19433409	budova s číslem popisným	{1845}	Židenice	582786	\N	\N	\N	\N
19433417	budova s číslem popisným	{1846}	Židenice	582786	\N	\N	\N	\N
19433425	budova s číslem popisným	{1847}	Židenice	582786	\N	\N	\N	\N
19433433	budova s číslem popisným	{1848}	Židenice	582786	\N	\N	\N	\N
19433441	budova s číslem popisným	{1849}	Židenice	582786	\N	\N	\N	\N
19433450	budova s číslem popisným	{1850}	Židenice	582786	\N	\N	\N	\N
19433476	budova s číslem popisným	{1852}	Židenice	582786	\N	\N	\N	\N
19433484	budova s číslem popisným	{1853}	Židenice	582786	\N	\N	\N	\N
19433492	budova s číslem popisným	{1854}	Židenice	582786	\N	\N	\N	\N
19433506	budova s číslem popisným	{1855}	Židenice	582786	\N	\N	\N	\N
19433514	budova s číslem popisným	{1856}	Židenice	582786	\N	\N	\N	\N
19433522	budova s číslem popisným	{1857}	Židenice	582786	\N	\N	\N	\N
19433531	budova s číslem popisným	{1858}	Židenice	582786	\N	\N	\N	\N
19433549	budova s číslem popisným	{1859}	Židenice	582786	\N	\N	\N	\N
19433557	budova s číslem popisným	{1860}	Židenice	582786	\N	\N	\N	\N
19433565	budova s číslem popisným	{1861}	Židenice	582786	\N	\N	\N	\N
19433590	budova s číslem popisným	{1865}	Židenice	582786	\N	\N	\N	\N
19433603	budova s číslem popisným	{1866}	Židenice	582786	\N	\N	\N	\N
19433611	budova s číslem popisným	{1867}	Židenice	582786	\N	\N	\N	\N
19433620	budova s číslem popisným	{1868}	Židenice	582786	\N	\N	\N	\N
19433638	budova s číslem popisným	{1869}	Židenice	582786	\N	\N	\N	\N
19433646	budova s číslem popisným	{1870}	Židenice	582786	\N	\N	\N	\N
19433654	budova s číslem popisným	{1871}	Židenice	582786	\N	\N	\N	\N
19433662	budova s číslem popisným	{1872}	Židenice	582786	\N	\N	\N	\N
19433671	budova s číslem popisným	{1873}	Židenice	582786	\N	\N	\N	\N
19433689	budova s číslem popisným	{1874}	Židenice	582786	\N	\N	\N	\N
19433697	budova s číslem popisným	{1875}	Židenice	582786	\N	\N	\N	\N
19433701	budova s číslem popisným	{1876}	Židenice	582786	\N	\N	\N	\N
19433719	budova s číslem popisným	{1877}	Židenice	582786	\N	\N	\N	\N
19433727	budova s číslem popisným	{1878}	Židenice	582786	\N	\N	\N	\N
19433735	budova s číslem popisným	{1879}	Židenice	582786	\N	\N	\N	\N
19433743	budova s číslem popisným	{1880}	Židenice	582786	\N	\N	\N	\N
19433751	budova s číslem popisným	{1881}	Židenice	582786	\N	\N	\N	\N
19433760	budova s číslem popisným	{1882}	Židenice	582786	\N	\N	\N	\N
19433778	budova s číslem popisným	{1883}	Židenice	582786	\N	\N	\N	\N
19433786	budova s číslem popisným	{1884}	Židenice	582786	\N	\N	\N	\N
19433794	budova s číslem popisným	{1885}	Židenice	582786	\N	\N	\N	\N
19433808	budova s číslem popisným	{1886}	Židenice	582786	\N	\N	\N	\N
19433816	budova s číslem popisným	{1887}	Židenice	582786	\N	\N	\N	\N
19433824	budova s číslem popisným	{1888}	Židenice	582786	\N	\N	\N	\N
19433832	budova s číslem popisným	{1889}	Židenice	582786	\N	\N	\N	\N
19433841	budova s číslem popisným	{1890}	Židenice	582786	\N	\N	\N	\N
19433859	budova s číslem popisným	{1891}	Židenice	582786	\N	\N	\N	\N
19433867	budova s číslem popisným	{1892}	Židenice	582786	\N	\N	\N	\N
19433875	budova s číslem popisným	{1893}	Židenice	582786	\N	\N	\N	\N
19433883	budova s číslem popisným	{1894}	Židenice	582786	\N	\N	\N	\N
19433891	budova s číslem popisným	{1895}	Židenice	582786	\N	\N	\N	\N
19433905	budova s číslem popisným	{1896}	Židenice	582786	\N	\N	\N	\N
19433913	budova s číslem popisným	{1897}	Židenice	582786	\N	\N	\N	\N
19433921	budova s číslem popisným	{1898}	Židenice	582786	\N	\N	\N	\N
19433930	budova s číslem popisným	{1899}	Židenice	582786	\N	\N	\N	\N
19433948	budova s číslem popisným	{1900}	Židenice	582786	\N	\N	\N	\N
19433956	budova s číslem popisným	{1901}	Židenice	582786	\N	\N	\N	\N
19433964	budova s číslem popisným	{1902}	Židenice	582786	\N	\N	\N	\N
19433972	budova s číslem popisným	{1903}	Židenice	582786	\N	\N	\N	\N
19433981	budova s číslem popisným	{1904}	Židenice	582786	\N	\N	\N	\N
19433999	budova s číslem popisným	{1905}	Židenice	582786	\N	\N	\N	\N
19434006	budova s číslem popisným	{1906}	Židenice	582786	\N	\N	\N	\N
19434014	budova s číslem popisným	{1907}	Židenice	582786	\N	\N	\N	\N
19434022	budova s číslem popisným	{1908}	Židenice	582786	\N	\N	\N	\N
19434031	budova s číslem popisným	{1909}	Židenice	582786	\N	\N	\N	\N
19434049	budova s číslem popisným	{1910}	Židenice	582786	\N	\N	\N	\N
19434057	budova s číslem popisným	{1911}	Židenice	582786	\N	\N	\N	\N
19434065	budova s číslem popisným	{1912}	Židenice	582786	\N	\N	\N	\N
19434073	budova s číslem popisným	{1913}	Židenice	582786	\N	\N	\N	\N
19434090	budova s číslem popisným	{1915}	Židenice	582786	\N	\N	\N	\N
19434103	budova s číslem popisným	{1916}	Židenice	582786	\N	\N	\N	\N
19434111	budova s číslem popisným	{1917}	Židenice	582786	\N	\N	\N	\N
19434120	budova s číslem popisným	{1918}	Židenice	582786	\N	\N	\N	\N
19434138	budova s číslem popisným	{1919}	Židenice	582786	\N	\N	\N	\N
19434146	budova s číslem popisným	{1920}	Židenice	582786	\N	\N	\N	\N
19434154	budova s číslem popisným	{1921}	Židenice	582786	\N	\N	\N	\N
19434162	budova s číslem popisným	{1922}	Židenice	582786	\N	\N	\N	\N
19434171	budova s číslem popisným	{1923}	Židenice	582786	\N	\N	\N	\N
19434189	budova s číslem popisným	{1924}	Židenice	582786	\N	\N	\N	\N
19434197	budova s číslem popisným	{1925}	Židenice	582786	\N	\N	\N	\N
19434201	budova s číslem popisným	{1926}	Židenice	582786	\N	\N	\N	\N
19434219	budova s číslem popisným	{1927}	Židenice	582786	\N	\N	\N	\N
19434227	budova s číslem popisným	{1928}	Židenice	582786	\N	\N	\N	\N
19434235	budova s číslem popisným	{1929}	Židenice	582786	\N	\N	\N	\N
19434243	budova s číslem popisným	{1930}	Židenice	582786	\N	\N	\N	\N
19434251	budova s číslem popisným	{1931}	Židenice	582786	\N	\N	\N	\N
19434260	budova s číslem popisným	{1932}	Židenice	582786	\N	\N	\N	\N
19434286	budova s číslem popisným	{1935}	Židenice	582786	\N	\N	\N	\N
19434294	budova s číslem popisným	{1936}	Židenice	582786	\N	\N	\N	\N
19434308	budova s číslem popisným	{1937}	Židenice	582786	\N	\N	\N	\N
19434316	budova s číslem popisným	{1938}	Židenice	582786	\N	\N	\N	\N
19434324	budova s číslem popisným	{1939}	Židenice	582786	\N	\N	\N	\N
19434332	budova s číslem popisným	{1940}	Židenice	582786	\N	\N	\N	\N
19434341	budova s číslem popisným	{1941}	Židenice	582786	\N	\N	\N	\N
19434359	budova s číslem popisným	{1942}	Židenice	582786	\N	\N	\N	\N
19434367	budova s číslem popisným	{1943}	Židenice	582786	\N	\N	\N	\N
19434375	budova s číslem popisným	{1944}	Židenice	582786	\N	\N	\N	\N
19434383	budova s číslem popisným	{1945}	Židenice	582786	\N	\N	\N	\N
19434391	budova s číslem popisným	{1946}	Židenice	582786	\N	\N	\N	\N
19434405	budova s číslem popisným	{1947}	Židenice	582786	\N	\N	\N	\N
19434413	budova s číslem popisným	{1948}	Židenice	582786	\N	\N	\N	\N
19434421	budova s číslem popisným	{1949}	Židenice	582786	\N	\N	\N	\N
19434430	budova s číslem popisným	{1951}	Židenice	582786	\N	\N	\N	\N
19434448	budova s číslem popisným	{1952}	Židenice	582786	\N	\N	\N	\N
19434456	budova s číslem popisným	{1953}	Židenice	582786	\N	\N	\N	\N
19434464	budova s číslem popisným	{1954}	Židenice	582786	\N	\N	\N	\N
19434472	budova s číslem popisným	{1955}	Židenice	582786	\N	\N	\N	\N
19434481	budova s číslem popisným	{1956}	Židenice	582786	\N	\N	\N	\N
19434499	budova s číslem popisným	{1957}	Židenice	582786	\N	\N	\N	\N
19434502	budova s číslem popisným	{1958}	Židenice	582786	\N	\N	\N	\N
19434511	budova s číslem popisným	{1959}	Židenice	582786	\N	\N	\N	\N
19434529	budova s číslem popisným	{1960}	Židenice	582786	\N	\N	\N	\N
19434537	budova s číslem popisným	{1961}	Židenice	582786	\N	\N	\N	\N
19434545	budova s číslem popisným	{1962}	Židenice	582786	\N	\N	\N	\N
19434553	budova s číslem popisným	{1963}	Židenice	582786	\N	\N	\N	\N
19434561	budova s číslem popisným	{1964}	Židenice	582786	\N	\N	\N	\N
19434570	budova s číslem popisným	{1965}	Židenice	582786	\N	\N	\N	\N
19434588	budova s číslem popisným	{1966}	Židenice	582786	\N	\N	\N	\N
19434596	budova s číslem popisným	{1967}	Židenice	582786	\N	\N	\N	\N
19434600	budova s číslem popisným	{1968}	Židenice	582786	\N	\N	\N	\N
19434618	budova s číslem popisným	{1969}	Židenice	582786	\N	\N	\N	\N
19434626	budova s číslem popisným	{1970}	Židenice	582786	\N	\N	\N	\N
19434634	budova s číslem popisným	{1971}	Židenice	582786	\N	\N	\N	\N
19434642	budova s číslem popisným	{1972}	Židenice	582786	\N	\N	\N	\N
19434651	budova s číslem popisným	{1973}	Židenice	582786	\N	\N	\N	\N
19434669	budova s číslem popisným	{1974}	Židenice	582786	\N	\N	\N	\N
19434677	budova s číslem popisným	{1975}	Židenice	582786	\N	\N	\N	\N
19434685	budova s číslem popisným	{1976}	Židenice	582786	\N	\N	\N	\N
19434693	budova s číslem popisným	{1977}	Židenice	582786	\N	\N	\N	\N
19434707	budova s číslem popisným	{1978}	Židenice	582786	\N	\N	\N	\N
19434715	budova s číslem popisným	{1979}	Židenice	582786	\N	\N	\N	\N
19434723	budova s číslem popisným	{1981}	Židenice	582786	\N	\N	\N	\N
19434731	budova s číslem popisným	{1982}	Židenice	582786	\N	\N	\N	\N
19434740	budova s číslem popisným	{1983}	Židenice	582786	\N	\N	\N	\N
19434758	budova s číslem popisným	{1984}	Židenice	582786	\N	\N	\N	\N
19434766	budova s číslem popisným	{1985}	Židenice	582786	\N	\N	\N	\N
19434774	budova s číslem popisným	{1987}	Židenice	582786	\N	\N	\N	\N
19434782	budova s číslem popisným	{1988}	Židenice	582786	\N	\N	\N	\N
19434791	budova s číslem popisným	{1989}	Židenice	582786	\N	\N	\N	\N
19434804	budova s číslem popisným	{1990}	Židenice	582786	\N	\N	\N	\N
19434812	budova s číslem popisným	{1991}	Židenice	582786	\N	\N	\N	\N
19434821	budova s číslem popisným	{1992}	Židenice	582786	\N	\N	\N	\N
19434839	budova s číslem popisným	{1993}	Židenice	582786	\N	\N	\N	\N
19434847	budova s číslem popisným	{1994}	Židenice	582786	\N	\N	\N	\N
19434855	budova s číslem popisným	{1995}	Židenice	582786	\N	\N	\N	\N
19434863	budova s číslem popisným	{1996}	Židenice	582786	\N	\N	\N	\N
19434871	budova s číslem popisným	{1997}	Židenice	582786	\N	\N	\N	\N
19434880	budova s číslem popisným	{1998}	Židenice	582786	\N	\N	\N	\N
19434898	budova s číslem popisným	{1999}	Židenice	582786	\N	\N	\N	\N
19434901	budova s číslem popisným	{2000}	Židenice	582786	\N	\N	\N	\N
19434910	budova s číslem popisným	{2001}	Židenice	582786	\N	\N	\N	\N
19434928	budova s číslem popisným	{2002}	Židenice	582786	\N	\N	\N	\N
19434936	budova s číslem popisným	{2003}	Židenice	582786	\N	\N	\N	\N
19434944	budova s číslem popisným	{2005}	Židenice	582786	\N	\N	\N	\N
19434952	budova s číslem popisným	{2006}	Židenice	582786	\N	\N	\N	\N
19434961	budova s číslem popisným	{2007}	Židenice	582786	\N	\N	\N	\N
19434979	budova s číslem popisným	{2008}	Židenice	582786	\N	\N	\N	\N
19434987	budova s číslem popisným	{2009}	Židenice	582786	\N	\N	\N	\N
19434995	budova s číslem popisným	{2010}	Židenice	582786	\N	\N	\N	\N
19435002	budova s číslem popisným	{2011}	Židenice	582786	\N	\N	\N	\N
19435011	budova s číslem popisným	{2012}	Židenice	582786	\N	\N	\N	\N
19435029	budova s číslem popisným	{2013}	Židenice	582786	\N	\N	\N	\N
19435037	budova s číslem popisným	{2014}	Židenice	582786	\N	\N	\N	\N
19435045	budova s číslem popisným	{2015}	Židenice	582786	\N	\N	\N	\N
19435053	budova s číslem popisným	{2016}	Židenice	582786	\N	\N	\N	\N
19435061	budova s číslem popisným	{2020}	Židenice	582786	\N	\N	\N	\N
19435070	budova s číslem popisným	{2021}	Židenice	582786	\N	\N	\N	\N
19435088	budova s číslem popisným	{2022}	Židenice	582786	\N	\N	\N	\N
19435096	budova s číslem popisným	{2023}	Židenice	582786	\N	\N	\N	\N
19435100	budova s číslem popisným	{2024}	Židenice	582786	\N	\N	\N	\N
19435118	budova s číslem popisným	{2025}	Židenice	582786	\N	\N	\N	\N
19435126	budova s číslem popisným	{2026}	Židenice	582786	\N	\N	\N	\N
19435134	budova s číslem popisným	{2027}	Židenice	582786	\N	\N	\N	\N
19435142	budova s číslem popisným	{2028}	Židenice	582786	\N	\N	\N	\N
19435151	budova s číslem popisným	{2029}	Židenice	582786	\N	\N	\N	\N
19435169	budova s číslem popisným	{2030}	Židenice	582786	\N	\N	\N	\N
19435177	budova s číslem popisným	{2031}	Židenice	582786	\N	\N	\N	\N
19435185	budova s číslem popisným	{2032}	Židenice	582786	\N	\N	\N	\N
19435193	budova s číslem popisným	{2033}	Židenice	582786	\N	\N	\N	\N
19435207	budova s číslem popisným	{2034}	Židenice	582786	\N	\N	\N	\N
19435215	budova s číslem popisným	{2035}	Židenice	582786	\N	\N	\N	\N
19435223	budova s číslem popisným	{2036}	Židenice	582786	\N	\N	\N	\N
19435231	budova s číslem popisným	{2037}	Židenice	582786	\N	\N	\N	\N
19435240	budova s číslem popisným	{2038}	Židenice	582786	\N	\N	\N	\N
19435258	budova s číslem popisným	{2039}	Židenice	582786	\N	\N	\N	\N
19435266	budova s číslem popisným	{2040}	Židenice	582786	\N	\N	\N	\N
19435274	budova s číslem popisným	{2041}	Židenice	582786	\N	\N	\N	\N
19435282	budova s číslem popisným	{2042}	Židenice	582786	\N	\N	\N	\N
19435291	budova s číslem popisným	{2043}	Židenice	582786	\N	\N	\N	\N
19435304	budova s číslem popisným	{2044}	Židenice	582786	\N	\N	\N	\N
19435312	budova s číslem popisným	{2045}	Židenice	582786	\N	\N	\N	\N
19435321	budova s číslem popisným	{2046}	Židenice	582786	\N	\N	\N	\N
19435339	budova s číslem popisným	{2047}	Židenice	582786	\N	\N	\N	\N
19435347	budova s číslem popisným	{2048}	Židenice	582786	\N	\N	\N	\N
19435355	budova s číslem popisným	{2049}	Židenice	582786	\N	\N	\N	\N
19435363	budova s číslem popisným	{2050}	Židenice	582786	\N	\N	\N	\N
19435371	budova s číslem popisným	{2051}	Židenice	582786	\N	\N	\N	\N
19435380	budova s číslem popisným	{2052}	Židenice	582786	\N	\N	\N	\N
19435398	budova s číslem popisným	{2053}	Židenice	582786	\N	\N	\N	\N
19435401	budova s číslem popisným	{2054}	Židenice	582786	\N	\N	\N	\N
19435410	budova s číslem popisným	{2055}	Židenice	582786	\N	\N	\N	\N
19435428	budova s číslem popisným	{2056}	Židenice	582786	\N	\N	\N	\N
19435436	budova s číslem popisným	{2057}	Židenice	582786	\N	\N	\N	\N
19435444	budova s číslem popisným	{2058}	Židenice	582786	\N	\N	\N	\N
19435452	budova s číslem popisným	{2059}	Židenice	582786	\N	\N	\N	\N
19435461	budova s číslem popisným	{2060}	Židenice	582786	\N	\N	\N	\N
19435479	budova s číslem popisným	{2061}	Židenice	582786	\N	\N	\N	\N
19435487	budova s číslem popisným	{2062}	Židenice	582786	\N	\N	\N	\N
19435495	budova s číslem popisným	{2063}	Židenice	582786	\N	\N	\N	\N
19435509	budova s číslem popisným	{2064}	Židenice	582786	\N	\N	\N	\N
19435525	budova s číslem popisným	{2066}	Židenice	582786	\N	\N	\N	\N
19435533	budova s číslem popisným	{2067}	Židenice	582786	\N	\N	\N	\N
19435541	budova s číslem popisným	{2068}	Židenice	582786	\N	\N	\N	\N
19435550	budova s číslem popisným	{2069}	Židenice	582786	\N	\N	\N	\N
19435568	budova s číslem popisným	{2070}	Židenice	582786	\N	\N	\N	\N
19435576	budova s číslem popisným	{2071}	Židenice	582786	\N	\N	\N	\N
19435584	budova s číslem popisným	{2072}	Židenice	582786	\N	\N	\N	\N
19435592	budova s číslem popisným	{2073}	Židenice	582786	\N	\N	\N	\N
19435606	budova s číslem popisným	{2074}	Židenice	582786	\N	\N	\N	\N
19435614	budova s číslem popisným	{2075}	Židenice	582786	\N	\N	\N	\N
19435622	budova s číslem popisným	{2076}	Židenice	582786	\N	\N	\N	\N
19435631	budova s číslem popisným	{2077}	Židenice	582786	\N	\N	\N	\N
19435649	budova s číslem popisným	{2078}	Židenice	582786	\N	\N	\N	\N
19435657	budova s číslem popisným	{2079}	Židenice	582786	\N	\N	\N	\N
19435665	budova s číslem popisným	{2080}	Židenice	582786	\N	\N	\N	\N
19435673	budova s číslem popisným	{2081}	Židenice	582786	\N	\N	\N	\N
19435681	budova s číslem popisným	{2082}	Židenice	582786	\N	\N	\N	\N
19435690	budova s číslem popisným	{2083}	Židenice	582786	\N	\N	\N	\N
19435703	budova s číslem popisným	{2085}	Židenice	582786	\N	\N	\N	\N
19435711	budova s číslem popisným	{2086}	Židenice	582786	\N	\N	\N	\N
19435720	budova s číslem popisným	{2087}	Židenice	582786	\N	\N	\N	\N
19435738	budova s číslem popisným	{2089}	Židenice	582786	\N	\N	\N	\N
19435746	budova s číslem popisným	{2090}	Židenice	582786	\N	\N	\N	\N
19435754	budova s číslem popisným	{2091}	Židenice	582786	\N	\N	\N	\N
19435762	budova s číslem popisným	{2092}	Židenice	582786	\N	\N	\N	\N
19435771	budova s číslem popisným	{2094}	Židenice	582786	\N	\N	\N	\N
19435789	budova s číslem popisným	{2095}	Židenice	582786	\N	\N	\N	\N
19435797	budova s číslem popisným	{2096}	Židenice	582786	\N	\N	\N	\N
19435801	budova s číslem popisným	{2097}	Židenice	582786	\N	\N	\N	\N
19435819	budova s číslem popisným	{2098}	Židenice	582786	\N	\N	\N	\N
19435827	budova s číslem popisným	{2099}	Židenice	582786	\N	\N	\N	\N
19435835	budova s číslem popisným	{2100}	Židenice	582786	\N	\N	\N	\N
19435843	budova s číslem popisným	{2101}	Židenice	582786	\N	\N	\N	\N
19435851	budova s číslem popisným	{2102}	Židenice	582786	\N	\N	\N	\N
19435860	budova s číslem popisným	{2103}	Židenice	582786	\N	\N	\N	\N
19435878	budova s číslem popisným	{2104}	Židenice	582786	\N	\N	\N	\N
19435886	budova s číslem popisným	{2105}	Židenice	582786	\N	\N	\N	\N
19435894	budova s číslem popisným	{2106}	Židenice	582786	\N	\N	\N	\N
19435908	budova s číslem popisným	{2107}	Židenice	582786	\N	\N	\N	\N
19435916	budova s číslem popisným	{2108}	Židenice	582786	\N	\N	\N	\N
19435924	budova s číslem popisným	{2109}	Židenice	582786	\N	\N	\N	\N
19435932	budova s číslem popisným	{2110}	Židenice	582786	\N	\N	\N	\N
19435941	budova s číslem popisným	{2111}	Židenice	582786	\N	\N	\N	\N
19435959	budova s číslem popisným	{2112}	Židenice	582786	\N	\N	\N	\N
19435967	budova s číslem popisným	{2113}	Židenice	582786	\N	\N	\N	\N
19435975	budova s číslem popisným	{2115}	Židenice	582786	\N	\N	\N	\N
19435983	budova s číslem popisným	{2116}	Židenice	582786	\N	\N	\N	\N
19435991	budova s číslem popisným	{2117}	Židenice	582786	\N	\N	\N	\N
19436009	budova s číslem popisným	{2118}	Židenice	582786	\N	\N	\N	\N
19436017	budova s číslem popisným	{2119}	Židenice	582786	\N	\N	\N	\N
19436025	budova s číslem popisným	{2120}	Židenice	582786	\N	\N	\N	\N
19436033	budova s číslem popisným	{2121}	Židenice	582786	\N	\N	\N	\N
19436041	budova s číslem popisným	{2122}	Židenice	582786	\N	\N	\N	\N
19436050	budova s číslem popisným	{2123}	Židenice	582786	\N	\N	\N	\N
19436068	budova s číslem popisným	{2124}	Židenice	582786	\N	\N	\N	\N
19436076	budova s číslem popisným	{2125}	Židenice	582786	\N	\N	\N	\N
19436084	budova s číslem popisným	{2126}	Židenice	582786	\N	\N	\N	\N
19436092	budova s číslem popisným	{2127}	Židenice	582786	\N	\N	\N	\N
19436106	budova s číslem popisným	{2129}	Židenice	582786	\N	\N	\N	\N
19436114	budova s číslem popisným	{2131}	Židenice	582786	\N	\N	\N	\N
19436122	budova s číslem popisným	{2132}	Židenice	582786	\N	\N	\N	\N
19436131	budova s číslem popisným	{2133}	Židenice	582786	\N	\N	\N	\N
19436149	budova s číslem popisným	{2134}	Židenice	582786	\N	\N	\N	\N
19436157	budova s číslem popisným	{2135}	Židenice	582786	\N	\N	\N	\N
19436165	budova s číslem popisným	{2136}	Židenice	582786	\N	\N	\N	\N
19436173	budova s číslem popisným	{2137}	Židenice	582786	\N	\N	\N	\N
19436181	budova s číslem popisným	{2138}	Židenice	582786	\N	\N	\N	\N
19436190	budova s číslem popisným	{2139}	Židenice	582786	\N	\N	\N	\N
19436203	budova s číslem popisným	{2141}	Židenice	582786	\N	\N	\N	\N
19436211	budova s číslem popisným	{2142}	Židenice	582786	\N	\N	\N	\N
19436220	budova s číslem popisným	{2143}	Židenice	582786	\N	\N	\N	\N
19436238	budova s číslem popisným	{2144}	Židenice	582786	\N	\N	\N	\N
19436246	budova s číslem popisným	{2145}	Židenice	582786	\N	\N	\N	\N
19436254	budova s číslem popisným	{2146}	Židenice	582786	\N	\N	\N	\N
19436271	budova s číslem popisným	{2149}	Židenice	582786	\N	\N	\N	\N
19436289	budova s číslem popisným	{2150}	Židenice	582786	\N	\N	\N	\N
19436297	budova s číslem popisným	{2151}	Židenice	582786	\N	\N	\N	\N
19436301	budova s číslem popisným	{2152}	Židenice	582786	\N	\N	\N	\N
19436319	budova s číslem popisným	{2153}	Židenice	582786	\N	\N	\N	\N
19436327	budova s číslem popisným	{2154}	Židenice	582786	\N	\N	\N	\N
19436335	budova s číslem popisným	{2155}	Židenice	582786	\N	\N	\N	\N
19436343	budova s číslem popisným	{2156}	Židenice	582786	\N	\N	\N	\N
19436351	budova s číslem popisným	{2157}	Židenice	582786	\N	\N	\N	\N
19436360	budova s číslem popisným	{2158}	Židenice	582786	\N	\N	\N	\N
19436378	budova s číslem popisným	{2159}	Židenice	582786	\N	\N	\N	\N
19436386	budova s číslem popisným	{2160}	Židenice	582786	\N	\N	\N	\N
19436394	budova s číslem popisným	{2161}	Židenice	582786	\N	\N	\N	\N
19436408	budova s číslem popisným	{2162}	Židenice	582786	\N	\N	\N	\N
19436416	budova s číslem popisným	{2163}	Židenice	582786	\N	\N	\N	\N
19436424	budova s číslem popisným	{2164}	Židenice	582786	\N	\N	\N	\N
19436432	budova s číslem popisným	{2165}	Židenice	582786	\N	\N	\N	\N
19436441	budova s číslem popisným	{2166}	Židenice	582786	\N	\N	\N	\N
19436459	budova s číslem popisným	{2167}	Židenice	582786	\N	\N	\N	\N
19436467	budova s číslem popisným	{2168}	Židenice	582786	\N	\N	\N	\N
19436475	budova s číslem popisným	{2169}	Židenice	582786	\N	\N	\N	\N
19436483	budova s číslem popisným	{2170}	Židenice	582786	\N	\N	\N	\N
19436491	budova s číslem popisným	{2171}	Židenice	582786	\N	\N	\N	\N
19436505	budova s číslem popisným	{2172}	Židenice	582786	\N	\N	\N	\N
19436513	budova s číslem popisným	{2173}	Židenice	582786	\N	\N	\N	\N
19436521	budova s číslem popisným	{2174}	Židenice	582786	\N	\N	\N	\N
19436530	budova s číslem popisným	{2175}	Židenice	582786	\N	\N	\N	\N
19436548	budova s číslem popisným	{2176}	Židenice	582786	\N	\N	\N	\N
19436556	budova s číslem popisným	{2177}	Židenice	582786	\N	\N	\N	\N
19436564	budova s číslem popisným	{2178}	Židenice	582786	\N	\N	\N	\N
19436572	budova s číslem popisným	{2179}	Židenice	582786	\N	\N	\N	\N
19436581	budova s číslem popisným	{2180}	Židenice	582786	\N	\N	\N	\N
19436599	budova s číslem popisným	{2181}	Židenice	582786	\N	\N	\N	\N
19436602	budova s číslem popisným	{2182}	Židenice	582786	\N	\N	\N	\N
19436611	budova s číslem popisným	{2183}	Židenice	582786	\N	\N	\N	\N
19436629	budova s číslem popisným	{2184}	Židenice	582786	\N	\N	\N	\N
19436637	budova s číslem popisným	{2185}	Židenice	582786	\N	\N	\N	\N
19436645	budova s číslem popisným	{2186}	Židenice	582786	\N	\N	\N	\N
19436653	budova s číslem popisným	{2187}	Židenice	582786	\N	\N	\N	\N
19436661	budova s číslem popisným	{2188}	Židenice	582786	\N	\N	\N	\N
19436670	budova s číslem popisným	{2189}	Židenice	582786	\N	\N	\N	\N
19436688	budova s číslem popisným	{2190}	Židenice	582786	\N	\N	\N	\N
19436696	budova s číslem popisným	{2191}	Židenice	582786	\N	\N	\N	\N
19436700	budova s číslem popisným	{2192}	Židenice	582786	\N	\N	\N	\N
19436718	budova s číslem popisným	{2193}	Židenice	582786	\N	\N	\N	\N
19436726	budova s číslem popisným	{2195}	Židenice	582786	\N	\N	\N	\N
19436734	budova s číslem popisným	{2196}	Židenice	582786	\N	\N	\N	\N
19436742	budova s číslem popisným	{2197}	Židenice	582786	\N	\N	\N	\N
19436751	budova s číslem popisným	{2199}	Židenice	582786	\N	\N	\N	\N
19436769	budova s číslem popisným	{2200}	Židenice	582786	\N	\N	\N	\N
19436777	budova s číslem popisným	{2201}	Židenice	582786	\N	\N	\N	\N
19436785	budova s číslem popisným	{2202}	Židenice	582786	\N	\N	\N	\N
19436793	budova s číslem popisným	{2203}	Židenice	582786	\N	\N	\N	\N
19436807	budova s číslem popisným	{2204}	Židenice	582786	\N	\N	\N	\N
19436815	budova s číslem popisným	{2205}	Židenice	582786	\N	\N	\N	\N
19436823	budova s číslem popisným	{2206}	Židenice	582786	\N	\N	\N	\N
19436831	budova s číslem popisným	{2207}	Židenice	582786	\N	\N	\N	\N
19436840	budova s číslem popisným	{2208}	Židenice	582786	\N	\N	\N	\N
19436858	budova s číslem popisným	{2209}	Židenice	582786	\N	\N	\N	\N
19436866	budova s číslem popisným	{2210}	Židenice	582786	\N	\N	\N	\N
19436874	budova s číslem popisným	{2211}	Židenice	582786	\N	\N	\N	\N
19436882	budova s číslem popisným	{2212}	Židenice	582786	\N	\N	\N	\N
19436891	budova s číslem popisným	{2213}	Židenice	582786	\N	\N	\N	\N
19436904	budova s číslem popisným	{2214}	Židenice	582786	\N	\N	\N	\N
19436912	budova s číslem popisným	{2215}	Židenice	582786	\N	\N	\N	\N
19436921	budova s číslem popisným	{2216}	Židenice	582786	\N	\N	\N	\N
19436939	budova s číslem popisným	{2217}	Židenice	582786	\N	\N	\N	\N
19436947	budova s číslem popisným	{2218}	Židenice	582786	\N	\N	\N	\N
19436955	budova s číslem popisným	{2220}	Židenice	582786	\N	\N	\N	\N
19436963	budova s číslem popisným	{2221}	Židenice	582786	\N	\N	\N	\N
19436971	budova s číslem popisným	{2227}	Židenice	582786	\N	\N	\N	\N
19436980	budova s číslem popisným	{2228}	Židenice	582786	\N	\N	\N	\N
19436998	budova s číslem popisným	{2229}	Židenice	582786	\N	\N	\N	\N
19437005	budova s číslem popisným	{2230}	Židenice	582786	\N	\N	\N	\N
19437013	budova s číslem popisným	{2231}	Židenice	582786	\N	\N	\N	\N
19437021	budova s číslem popisným	{2232}	Židenice	582786	\N	\N	\N	\N
19437030	budova s číslem popisným	{2234}	Židenice	582786	\N	\N	\N	\N
19437048	budova s číslem popisným	{2235}	Židenice	582786	\N	\N	\N	\N
19437056	budova s číslem popisným	{2236}	Židenice	582786	\N	\N	\N	\N
19437064	budova s číslem popisným	{2237}	Židenice	582786	\N	\N	\N	\N
19437072	budova s číslem popisným	{2238}	Židenice	582786	\N	\N	\N	\N
19437081	budova s číslem popisným	{2239}	Židenice	582786	\N	\N	\N	\N
19437099	budova s číslem popisným	{2240}	Židenice	582786	\N	\N	\N	\N
19437102	budova s číslem popisným	{2241}	Židenice	582786	\N	\N	\N	\N
19437111	budova s číslem popisným	{2242}	Židenice	582786	\N	\N	\N	\N
19437129	budova s číslem popisným	{2243}	Židenice	582786	\N	\N	\N	\N
19437137	budova s číslem popisným	{2244}	Židenice	582786	\N	\N	\N	\N
19437145	budova s číslem popisným	{2245}	Židenice	582786	\N	\N	\N	\N
19437153	budova s číslem popisným	{2246}	Židenice	582786	\N	\N	\N	\N
19437161	budova s číslem popisným	{2247}	Židenice	582786	\N	\N	\N	\N
19437170	budova s číslem popisným	{2248}	Židenice	582786	\N	\N	\N	\N
19437188	budova s číslem popisným	{2249}	Židenice	582786	\N	\N	\N	\N
19437196	budova s číslem popisným	{2250}	Židenice	582786	\N	\N	\N	\N
19437200	budova s číslem popisným	{2251}	Židenice	582786	\N	\N	\N	\N
19437218	budova s číslem popisným	{2252}	Židenice	582786	\N	\N	\N	\N
19437226	budova s číslem popisným	{2253}	Židenice	582786	\N	\N	\N	\N
19437234	budova s číslem popisným	{2254}	Židenice	582786	\N	\N	\N	\N
19437242	budova s číslem popisným	{2255}	Židenice	582786	\N	\N	\N	\N
19437251	budova s číslem popisným	{2256}	Židenice	582786	\N	\N	\N	\N
19437269	budova s číslem popisným	{2257}	Židenice	582786	\N	\N	\N	\N
19437277	budova s číslem popisným	{2258}	Židenice	582786	\N	\N	\N	\N
19437285	budova s číslem popisným	{2259}	Židenice	582786	\N	\N	\N	\N
19437293	budova s číslem popisným	{2260}	Židenice	582786	\N	\N	\N	\N
19437307	budova s číslem popisným	{2261}	Židenice	582786	\N	\N	\N	\N
19437315	budova s číslem popisným	{2262}	Židenice	582786	\N	\N	\N	\N
19437323	budova s číslem popisným	{2263}	Židenice	582786	\N	\N	\N	\N
19437331	budova s číslem popisným	{2264}	Židenice	582786	\N	\N	\N	\N
19437340	budova s číslem popisným	{2265}	Židenice	582786	\N	\N	\N	\N
19437358	budova s číslem popisným	{2266}	Židenice	582786	\N	\N	\N	\N
19437366	budova s číslem popisným	{2267}	Židenice	582786	\N	\N	\N	\N
19437374	budova s číslem popisným	{2268}	Židenice	582786	\N	\N	\N	\N
19437382	budova s číslem popisným	{2269}	Židenice	582786	\N	\N	\N	\N
19437391	budova s číslem popisným	{2270}	Židenice	582786	\N	\N	\N	\N
19437412	budova s číslem popisným	{2272}	Židenice	582786	\N	\N	\N	\N
19437421	budova s číslem popisným	{2273}	Židenice	582786	\N	\N	\N	\N
19437439	budova s číslem popisným	{2274}	Židenice	582786	\N	\N	\N	\N
19437447	budova s číslem popisným	{2275}	Židenice	582786	\N	\N	\N	\N
19437455	budova s číslem popisným	{2276}	Židenice	582786	\N	\N	\N	\N
19437463	budova s číslem popisným	{2277}	Židenice	582786	\N	\N	\N	\N
19437471	budova s číslem popisným	{2278}	Židenice	582786	\N	\N	\N	\N
19437480	budova s číslem popisným	{2279}	Židenice	582786	\N	\N	\N	\N
19437498	budova s číslem popisným	{2280}	Židenice	582786	\N	\N	\N	\N
19437501	budova s číslem popisným	{2281}	Židenice	582786	\N	\N	\N	\N
19437510	budova s číslem popisným	{2282}	Židenice	582786	\N	\N	\N	\N
19437528	budova s číslem popisným	{2283}	Židenice	582786	\N	\N	\N	\N
19437536	budova s číslem popisným	{2284}	Židenice	582786	\N	\N	\N	\N
19437544	budova s číslem popisným	{2285}	Židenice	582786	\N	\N	\N	\N
19437561	budova s číslem popisným	{2287}	Židenice	582786	\N	\N	\N	\N
19437579	budova s číslem popisným	{2288}	Židenice	582786	\N	\N	\N	\N
19437587	budova s číslem popisným	{2290}	Židenice	582786	\N	\N	\N	\N
19437595	budova s číslem popisným	{2291}	Židenice	582786	\N	\N	\N	\N
19437609	budova s číslem popisným	{2292}	Židenice	582786	\N	\N	\N	\N
19437617	budova s číslem popisným	{2293}	Židenice	582786	\N	\N	\N	\N
19437625	budova s číslem popisným	{2294}	Židenice	582786	\N	\N	\N	\N
19437633	budova s číslem popisným	{2295}	Židenice	582786	\N	\N	\N	\N
19437641	budova s číslem popisným	{2296}	Židenice	582786	\N	\N	\N	\N
19437650	budova s číslem popisným	{2297}	Židenice	582786	\N	\N	\N	\N
19437668	budova s číslem popisným	{2298}	Židenice	582786	\N	\N	\N	\N
19437676	budova s číslem popisným	{2299}	Židenice	582786	\N	\N	\N	\N
19437684	budova s číslem popisným	{2300}	Židenice	582786	\N	\N	\N	\N
19437692	budova s číslem popisným	{2301}	Židenice	582786	\N	\N	\N	\N
19437706	budova s číslem popisným	{2302}	Židenice	582786	\N	\N	\N	\N
19437714	budova s číslem popisným	{2303}	Židenice	582786	\N	\N	\N	\N
19437722	budova s číslem popisným	{2304}	Židenice	582786	\N	\N	\N	\N
19437731	budova s číslem popisným	{2305}	Židenice	582786	\N	\N	\N	\N
19437749	budova s číslem popisným	{2306}	Židenice	582786	\N	\N	\N	\N
19437757	budova s číslem popisným	{2307}	Židenice	582786	\N	\N	\N	\N
19437765	budova s číslem popisným	{2308}	Židenice	582786	\N	\N	\N	\N
19437773	budova s číslem popisným	{2309}	Židenice	582786	\N	\N	\N	\N
19437781	budova s číslem popisným	{2310}	Židenice	582786	\N	\N	\N	\N
19437790	budova s číslem popisným	{2311}	Židenice	582786	\N	\N	\N	\N
19437803	budova s číslem popisným	{2312}	Židenice	582786	\N	\N	\N	\N
19437811	budova s číslem popisným	{2313}	Židenice	582786	\N	\N	\N	\N
19437820	budova s číslem popisným	{2314}	Židenice	582786	\N	\N	\N	\N
19437838	budova s číslem popisným	{2315}	Židenice	582786	\N	\N	\N	\N
19437846	budova s číslem popisným	{2316}	Židenice	582786	\N	\N	\N	\N
19437854	budova s číslem popisným	{2317}	Židenice	582786	\N	\N	\N	\N
19437862	budova s číslem popisným	{2318}	Židenice	582786	\N	\N	\N	\N
19437871	budova s číslem popisným	{2319}	Židenice	582786	\N	\N	\N	\N
19437889	budova s číslem popisným	{2320}	Židenice	582786	\N	\N	\N	\N
19437897	budova s číslem popisným	{2321}	Židenice	582786	\N	\N	\N	\N
19437901	budova s číslem popisným	{2322}	Židenice	582786	\N	\N	\N	\N
19437919	budova s číslem popisným	{2323}	Židenice	582786	\N	\N	\N	\N
19437927	budova s číslem popisným	{2324}	Židenice	582786	\N	\N	\N	\N
19437935	budova s číslem popisným	{2325}	Židenice	582786	\N	\N	\N	\N
19437943	budova s číslem popisným	{2328}	Židenice	582786	\N	\N	\N	\N
19437951	budova s číslem popisným	{2329}	Židenice	582786	\N	\N	\N	\N
19437960	budova s číslem popisným	{2330}	Židenice	582786	\N	\N	\N	\N
19437978	budova s číslem popisným	{2331}	Židenice	582786	\N	\N	\N	\N
19437986	budova s číslem popisným	{2332}	Židenice	582786	\N	\N	\N	\N
19437994	budova s číslem popisným	{2333}	Židenice	582786	\N	\N	\N	\N
19438001	budova s číslem popisným	{2334}	Židenice	582786	\N	\N	\N	\N
19438010	budova s číslem popisným	{2342}	Židenice	582786	\N	\N	\N	\N
19438028	budova s číslem popisným	{2343}	Židenice	582786	\N	\N	\N	\N
19438036	budova s číslem popisným	{2345}	Židenice	582786	\N	\N	\N	\N
19438044	budova s číslem popisným	{2347}	Židenice	582786	\N	\N	\N	\N
19438052	budova s číslem popisným	{2348}	Židenice	582786	\N	\N	\N	\N
19438061	budova s číslem popisným	{2349}	Židenice	582786	\N	\N	\N	\N
19438079	budova s číslem popisným	{2350}	Židenice	582786	\N	\N	\N	\N
19438087	budova s číslem popisným	{2351}	Židenice	582786	\N	\N	\N	\N
19438095	budova s číslem popisným	{2352}	Židenice	582786	\N	\N	\N	\N
19438109	budova s číslem popisným	{2353}	Židenice	582786	\N	\N	\N	\N
19438117	budova s číslem popisným	{2354}	Židenice	582786	\N	\N	\N	\N
19438125	budova s číslem popisným	{2355}	Židenice	582786	\N	\N	\N	\N
19438133	budova s číslem popisným	{2356}	Židenice	582786	\N	\N	\N	\N
19438141	budova s číslem popisným	{2357}	Židenice	582786	\N	\N	\N	\N
19438150	budova s číslem popisným	{2358}	Židenice	582786	\N	\N	\N	\N
19438168	budova s číslem popisným	{2359}	Židenice	582786	\N	\N	\N	\N
19438176	budova s číslem popisným	{2361}	Židenice	582786	\N	\N	\N	\N
19438184	budova s číslem popisným	{2362}	Židenice	582786	\N	\N	\N	\N
19438192	budova s číslem popisným	{2363}	Židenice	582786	\N	\N	\N	\N
19438206	budova s číslem popisným	{2364}	Židenice	582786	\N	\N	\N	\N
19438214	budova s číslem popisným	{2365}	Židenice	582786	\N	\N	\N	\N
19438222	budova s číslem popisným	{2366}	Židenice	582786	\N	\N	\N	\N
19438231	budova s číslem popisným	{2367}	Židenice	582786	\N	\N	\N	\N
19438249	budova s číslem popisným	{2368}	Židenice	582786	\N	\N	\N	\N
19438257	budova s číslem popisným	{2369}	Židenice	582786	\N	\N	\N	\N
19438265	budova s číslem popisným	{2370}	Židenice	582786	\N	\N	\N	\N
19438273	budova s číslem popisným	{2371}	Židenice	582786	\N	\N	\N	\N
19438281	budova s číslem popisným	{2372}	Židenice	582786	\N	\N	\N	\N
19438290	budova s číslem popisným	{2373}	Židenice	582786	\N	\N	\N	\N
19438303	budova s číslem popisným	{2374}	Židenice	582786	\N	\N	\N	\N
19438320	budova s číslem popisným	{2376}	Židenice	582786	\N	\N	\N	\N
19438338	budova s číslem popisným	{2377}	Židenice	582786	\N	\N	\N	\N
19438346	budova s číslem popisným	{2378}	Židenice	582786	\N	\N	\N	\N
19438362	budova s číslem popisným	{2380}	Židenice	582786	\N	\N	\N	\N
19438371	budova s číslem popisným	{2381}	Židenice	582786	\N	\N	\N	\N
19438389	budova s číslem popisným	{2382}	Židenice	582786	\N	\N	\N	\N
19438397	budova s číslem popisným	{2383}	Židenice	582786	\N	\N	\N	\N
19438401	budova s číslem popisným	{2384}	Židenice	582786	\N	\N	\N	\N
19438419	budova s číslem popisným	{2385}	Židenice	582786	\N	\N	\N	\N
19438427	budova s číslem popisným	{2386}	Židenice	582786	\N	\N	\N	\N
19438443	budova s číslem popisným	{2389}	Židenice	582786	\N	\N	\N	\N
19438451	budova s číslem popisným	{2390}	Židenice	582786	\N	\N	\N	\N
19438460	budova s číslem popisným	{2391}	Židenice	582786	\N	\N	\N	\N
19438478	budova s číslem popisným	{2392}	Židenice	582786	\N	\N	\N	\N
19438486	budova s číslem popisným	{2393}	Židenice	582786	\N	\N	\N	\N
19438494	budova s číslem popisným	{2394}	Židenice	582786	\N	\N	\N	\N
19438508	budova s číslem popisným	{2395}	Židenice	582786	\N	\N	\N	\N
19438516	budova s číslem popisným	{2396}	Židenice	582786	\N	\N	\N	\N
19438524	budova s číslem popisným	{2397}	Židenice	582786	\N	\N	\N	\N
19438532	budova s číslem popisným	{2398}	Židenice	582786	\N	\N	\N	\N
19438541	budova s číslem popisným	{2399}	Židenice	582786	\N	\N	\N	\N
19438559	budova s číslem popisným	{2400}	Židenice	582786	\N	\N	\N	\N
19438567	budova s číslem popisným	{2401}	Židenice	582786	\N	\N	\N	\N
19438575	budova s číslem popisným	{2402}	Židenice	582786	\N	\N	\N	\N
19438583	budova s číslem popisným	{2403}	Židenice	582786	\N	\N	\N	\N
19438591	budova s číslem popisným	{2404}	Židenice	582786	\N	\N	\N	\N
19438613	budova s číslem popisným	{2406}	Židenice	582786	\N	\N	\N	\N
19438630	budova s číslem popisným	{2408}	Židenice	582786	\N	\N	\N	\N
19438648	budova s číslem popisným	{2409}	Židenice	582786	\N	\N	\N	\N
19438656	budova s číslem popisným	{2410}	Židenice	582786	\N	\N	\N	\N
19438664	budova s číslem popisným	{2411}	Židenice	582786	\N	\N	\N	\N
19438672	budova s číslem popisným	{2412}	Židenice	582786	\N	\N	\N	\N
19438681	budova s číslem popisným	{2413}	Židenice	582786	\N	\N	\N	\N
19438699	budova s číslem popisným	{2414}	Židenice	582786	\N	\N	\N	\N
19438702	budova s číslem popisným	{2415}	Židenice	582786	\N	\N	\N	\N
19438711	budova s číslem popisným	{2416}	Židenice	582786	\N	\N	\N	\N
19438729	budova s číslem popisným	{2417}	Židenice	582786	\N	\N	\N	\N
19438737	budova s číslem popisným	{2418}	Židenice	582786	\N	\N	\N	\N
19438745	budova s číslem popisným	{2419}	Židenice	582786	\N	\N	\N	\N
19438753	budova s číslem popisným	{2420}	Židenice	582786	\N	\N	\N	\N
19438761	budova s číslem popisným	{2421}	Židenice	582786	\N	\N	\N	\N
19438770	budova s číslem popisným	{2422}	Židenice	582786	\N	\N	\N	\N
19438788	budova s číslem popisným	{2423}	Židenice	582786	\N	\N	\N	\N
19438796	budova s číslem popisným	{2424}	Židenice	582786	\N	\N	\N	\N
19438800	budova s číslem popisným	{2425}	Židenice	582786	\N	\N	\N	\N
19438818	budova s číslem popisným	{2426}	Židenice	582786	\N	\N	\N	\N
19438826	budova s číslem popisným	{2427}	Židenice	582786	\N	\N	\N	\N
19438842	budova s číslem popisným	{2430}	Židenice	582786	\N	\N	\N	\N
19438851	budova s číslem popisným	{2431}	Židenice	582786	\N	\N	\N	\N
19438877	budova s číslem popisným	{2433}	Židenice	582786	\N	\N	\N	\N
19438885	budova s číslem popisným	{2436}	Židenice	582786	\N	\N	\N	\N
19438893	budova s číslem popisným	{2437}	Židenice	582786	\N	\N	\N	\N
19438907	budova s číslem popisným	{2438}	Židenice	582786	\N	\N	\N	\N
19438915	budova s číslem popisným	{2439}	Židenice	582786	\N	\N	\N	\N
19438923	budova s číslem popisným	{2440}	Židenice	582786	\N	\N	\N	\N
19438931	budova s číslem popisným	{2441}	Židenice	582786	\N	\N	\N	\N
19438940	budova s číslem popisným	{2442}	Židenice	582786	\N	\N	\N	\N
19438958	budova s číslem popisným	{2443}	Židenice	582786	\N	\N	\N	\N
19438974	budova s číslem popisným	{2445}	Židenice	582786	\N	\N	\N	\N
19438982	budova s číslem popisným	{2446}	Židenice	582786	\N	\N	\N	\N
19438991	budova s číslem popisným	{2447}	Židenice	582786	\N	\N	\N	\N
19439008	budova s číslem popisným	{2448}	Židenice	582786	\N	\N	\N	\N
19439016	budova s číslem popisným	{2449}	Židenice	582786	\N	\N	\N	\N
19439024	budova s číslem popisným	{2450}	Židenice	582786	\N	\N	\N	\N
19439032	budova s číslem popisným	{2451}	Židenice	582786	\N	\N	\N	\N
19439041	budova s číslem popisným	{2452}	Židenice	582786	\N	\N	\N	\N
19439059	budova s číslem popisným	{2453}	Židenice	582786	\N	\N	\N	\N
19439067	budova s číslem popisným	{2455}	Židenice	582786	\N	\N	\N	\N
19439075	budova s číslem popisným	{2456}	Židenice	582786	\N	\N	\N	\N
19439083	budova s číslem popisným	{2457}	Židenice	582786	\N	\N	\N	\N
19439091	budova s číslem popisným	{2458}	Židenice	582786	\N	\N	\N	\N
19439105	budova s číslem popisným	{2459}	Židenice	582786	\N	\N	\N	\N
19439130	budova s číslem popisným	{2462}	Židenice	582786	\N	\N	\N	\N
19439148	budova s číslem popisným	{2463}	Židenice	582786	\N	\N	\N	\N
19439156	budova s číslem popisným	{2464}	Židenice	582786	\N	\N	\N	\N
19439164	budova s číslem popisným	{2465}	Židenice	582786	\N	\N	\N	\N
19439172	budova s číslem popisným	{2466}	Židenice	582786	\N	\N	\N	\N
19439181	budova s číslem popisným	{2467}	Židenice	582786	\N	\N	\N	\N
19439199	budova s číslem popisným	{2468}	Židenice	582786	\N	\N	\N	\N
19439202	budova s číslem popisným	{2470}	Židenice	582786	\N	\N	\N	\N
19439211	budova s číslem popisným	{2471}	Židenice	582786	\N	\N	\N	\N
19439229	budova s číslem popisným	{2472}	Židenice	582786	\N	\N	\N	\N
19439237	budova s číslem popisným	{2473}	Židenice	582786	\N	\N	\N	\N
19439245	budova s číslem popisným	{2474}	Židenice	582786	\N	\N	\N	\N
19439253	budova s číslem popisným	{2475}	Židenice	582786	\N	\N	\N	\N
19439261	budova s číslem popisným	{2476}	Židenice	582786	\N	\N	\N	\N
19439270	budova s číslem popisným	{2477}	Židenice	582786	\N	\N	\N	\N
19439288	budova s číslem popisným	{2478}	Židenice	582786	\N	\N	\N	\N
19439296	budova s číslem popisným	{2479}	Židenice	582786	\N	\N	\N	\N
19439300	budova s číslem popisným	{2480}	Židenice	582786	\N	\N	\N	\N
19439318	budova s číslem popisným	{2481}	Židenice	582786	\N	\N	\N	\N
19439326	budova s číslem popisným	{2482}	Židenice	582786	\N	\N	\N	\N
19439334	budova s číslem popisným	{2483}	Židenice	582786	\N	\N	\N	\N
19439342	budova s číslem popisným	{2484}	Židenice	582786	\N	\N	\N	\N
19439351	budova s číslem popisným	{2485}	Židenice	582786	\N	\N	\N	\N
19439369	budova s číslem popisným	{2486}	Židenice	582786	\N	\N	\N	\N
19439377	budova s číslem popisným	{2487}	Židenice	582786	\N	\N	\N	\N
19439385	budova s číslem popisným	{2489}	Židenice	582786	\N	\N	\N	\N
19439393	budova s číslem popisným	{2490}	Židenice	582786	\N	\N	\N	\N
19439407	budova s číslem popisným	{2491}	Židenice	582786	\N	\N	\N	\N
19439415	budova s číslem popisným	{2492}	Židenice	582786	\N	\N	\N	\N
19439423	budova s číslem popisným	{2493}	Židenice	582786	\N	\N	\N	\N
19439431	budova s číslem popisným	{2494}	Židenice	582786	\N	\N	\N	\N
19439440	budova s číslem popisným	{2495}	Židenice	582786	\N	\N	\N	\N
19439458	budova s číslem popisným	{2496}	Židenice	582786	\N	\N	\N	\N
19439466	budova s číslem popisným	{2497}	Židenice	582786	\N	\N	\N	\N
19439474	budova s číslem popisným	{2498}	Židenice	582786	\N	\N	\N	\N
19439482	budova s číslem popisným	{2499}	Židenice	582786	\N	\N	\N	\N
19439491	budova s číslem popisným	{2500}	Židenice	582786	\N	\N	\N	\N
19439504	budova s číslem popisným	{2501}	Židenice	582786	\N	\N	\N	\N
19439512	budova s číslem popisným	{2502}	Židenice	582786	\N	\N	\N	\N
19439521	budova s číslem popisným	{2503}	Židenice	582786	\N	\N	\N	\N
19439539	budova s číslem popisným	{2504}	Židenice	582786	\N	\N	\N	\N
19439547	budova s číslem popisným	{2505}	Židenice	582786	\N	\N	\N	\N
19439555	budova s číslem popisným	{2507}	Židenice	582786	\N	\N	\N	\N
19439563	budova s číslem popisným	{2508}	Židenice	582786	\N	\N	\N	\N
19439571	budova s číslem popisným	{2509}	Židenice	582786	\N	\N	\N	\N
19439580	budova s číslem popisným	{2510}	Židenice	582786	\N	\N	\N	\N
19439598	budova s číslem popisným	{2512}	Židenice	582786	\N	\N	\N	\N
19439601	budova s číslem popisným	{2513}	Židenice	582786	\N	\N	\N	\N
19439610	budova s číslem popisným	{2514}	Židenice	582786	\N	\N	\N	\N
19439628	budova s číslem popisným	{2515}	Židenice	582786	\N	\N	\N	\N
19439636	budova s číslem popisným	{2516}	Židenice	582786	\N	\N	\N	\N
19439644	budova s číslem popisným	{2517}	Židenice	582786	\N	\N	\N	\N
19439652	budova s číslem popisným	{2518}	Židenice	582786	\N	\N	\N	\N
19439661	budova s číslem popisným	{2519}	Židenice	582786	\N	\N	\N	\N
19439679	budova s číslem popisným	{2520}	Židenice	582786	\N	\N	\N	\N
19439687	budova s číslem popisným	{2521}	Židenice	582786	\N	\N	\N	\N
19439695	budova s číslem popisným	{2522}	Židenice	582786	\N	\N	\N	\N
19439709	budova s číslem popisným	{2523}	Židenice	582786	\N	\N	\N	\N
19439717	budova s číslem popisným	{2524}	Židenice	582786	\N	\N	\N	\N
19439725	budova s číslem popisným	{2525}	Židenice	582786	\N	\N	\N	\N
19439733	budova s číslem popisným	{2526}	Židenice	582786	\N	\N	\N	\N
19439741	budova s číslem popisným	{2527}	Židenice	582786	\N	\N	\N	\N
19439750	budova s číslem popisným	{2528}	Židenice	582786	\N	\N	\N	\N
19439768	budova s číslem popisným	{2529}	Židenice	582786	\N	\N	\N	\N
19439776	budova s číslem popisným	{2530}	Židenice	582786	\N	\N	\N	\N
19439784	budova s číslem popisným	{2531}	Židenice	582786	\N	\N	\N	\N
19439792	budova s číslem popisným	{2532}	Židenice	582786	\N	\N	\N	\N
19439806	budova s číslem popisným	{2533}	Židenice	582786	\N	\N	\N	\N
19439814	budova s číslem popisným	{2534}	Židenice	582786	\N	\N	\N	\N
19439822	budova s číslem popisným	{2535}	Židenice	582786	\N	\N	\N	\N
19439831	budova s číslem popisným	{2536}	Židenice	582786	\N	\N	\N	\N
19439849	budova s číslem popisným	{2537}	Židenice	582786	\N	\N	\N	\N
19439857	budova s číslem popisným	{2538}	Židenice	582786	\N	\N	\N	\N
19439865	budova s číslem popisným	{2539}	Židenice	582786	\N	\N	\N	\N
19439873	budova s číslem popisným	{2540}	Židenice	582786	\N	\N	\N	\N
19439881	budova s číslem popisným	{2541}	Židenice	582786	\N	\N	\N	\N
19439903	budova s číslem popisným	{2543}	Židenice	582786	\N	\N	\N	\N
19439911	budova s číslem popisným	{2544}	Židenice	582786	\N	\N	\N	\N
19439920	budova s číslem popisným	{2545}	Židenice	582786	\N	\N	\N	\N
19439938	budova s číslem popisným	{2546}	Židenice	582786	\N	\N	\N	\N
19439946	budova s číslem popisným	{2547}	Židenice	582786	\N	\N	\N	\N
19439954	budova s číslem popisným	{2548}	Židenice	582786	\N	\N	\N	\N
19439962	budova s číslem popisným	{2549}	Židenice	582786	\N	\N	\N	\N
19439971	budova s číslem popisným	{2550}	Židenice	582786	\N	\N	\N	\N
19439989	budova s číslem popisným	{2551}	Židenice	582786	\N	\N	\N	\N
19439997	budova s číslem popisným	{2552}	Židenice	582786	\N	\N	\N	\N
19440006	budova s číslem popisným	{2553}	Židenice	582786	\N	\N	\N	\N
19440014	budova s číslem popisným	{2554}	Židenice	582786	\N	\N	\N	\N
19440022	budova s číslem popisným	{2555}	Židenice	582786	\N	\N	\N	\N
19440031	budova s číslem popisným	{2556}	Židenice	582786	\N	\N	\N	\N
19440049	budova s číslem popisným	{2562}	Židenice	582786	\N	\N	\N	\N
19440057	budova s číslem popisným	{2563}	Židenice	582786	\N	\N	\N	\N
19440065	budova s číslem popisným	{2564}	Židenice	582786	\N	\N	\N	\N
19440073	budova s číslem popisným	{2565}	Židenice	582786	\N	\N	\N	\N
19440081	budova s číslem popisným	{2566}	Židenice	582786	\N	\N	\N	\N
19440090	budova s číslem popisným	{2567}	Židenice	582786	\N	\N	\N	\N
19440103	budova s číslem popisným	{2568}	Židenice	582786	\N	\N	\N	\N
19440111	budova s číslem popisným	{2569}	Židenice	582786	\N	\N	\N	\N
19440120	budova s číslem popisným	{2570}	Židenice	582786	\N	\N	\N	\N
19440138	budova s číslem popisným	{2571}	Židenice	582786	\N	\N	\N	\N
19440146	budova s číslem popisným	{2572}	Židenice	582786	\N	\N	\N	\N
19440154	budova s číslem popisným	{2573}	Židenice	582786	\N	\N	\N	\N
19440162	budova s číslem popisným	{2574}	Židenice	582786	\N	\N	\N	\N
19440171	budova s číslem popisným	{2575}	Židenice	582786	\N	\N	\N	\N
19440189	budova s číslem popisným	{2576}	Židenice	582786	\N	\N	\N	\N
19440197	budova s číslem popisným	{2577}	Židenice	582786	\N	\N	\N	\N
19440201	budova s číslem popisným	{2578}	Židenice	582786	\N	\N	\N	\N
19440219	budova s číslem popisným	{2579}	Židenice	582786	\N	\N	\N	\N
19440227	budova s číslem popisným	{2580}	Židenice	582786	\N	\N	\N	\N
19440235	budova s číslem popisným	{2582}	Židenice	582786	\N	\N	\N	\N
19440243	budova s číslem popisným	{2583}	Židenice	582786	\N	\N	\N	\N
19440251	budova s číslem popisným	{2584}	Židenice	582786	\N	\N	\N	\N
19440260	budova s číslem popisným	{2585}	Židenice	582786	\N	\N	\N	\N
19440278	budova s číslem popisným	{2586}	Židenice	582786	\N	\N	\N	\N
19440286	budova s číslem popisným	{2587}	Židenice	582786	\N	\N	\N	\N
19440294	budova s číslem popisným	{2588}	Židenice	582786	\N	\N	\N	\N
19440308	budova s číslem popisným	{2589}	Židenice	582786	\N	\N	\N	\N
19440316	budova s číslem popisným	{2590}	Židenice	582786	\N	\N	\N	\N
19440324	budova s číslem popisným	{2591}	Židenice	582786	\N	\N	\N	\N
19440332	budova s číslem popisným	{2592}	Židenice	582786	\N	\N	\N	\N
19440341	budova s číslem popisným	{2593}	Židenice	582786	\N	\N	\N	\N
19440359	budova s číslem popisným	{2594}	Židenice	582786	\N	\N	\N	\N
19440367	budova s číslem popisným	{2595}	Židenice	582786	\N	\N	\N	\N
19440375	budova s číslem popisným	{2596}	Židenice	582786	\N	\N	\N	\N
19440383	budova s číslem popisným	{2597}	Židenice	582786	\N	\N	\N	\N
19440391	budova s číslem popisným	{2598}	Židenice	582786	\N	\N	\N	\N
19440405	budova s číslem popisným	{2599}	Židenice	582786	\N	\N	\N	\N
19440413	budova s číslem popisným	{2600}	Židenice	582786	\N	\N	\N	\N
19440421	budova s číslem popisným	{2601}	Židenice	582786	\N	\N	\N	\N
19440430	budova s číslem popisným	{2602}	Židenice	582786	\N	\N	\N	\N
19440448	budova s číslem popisným	{2603}	Židenice	582786	\N	\N	\N	\N
19440456	budova s číslem popisným	{2604}	Židenice	582786	\N	\N	\N	\N
19440464	budova s číslem popisným	{2605}	Židenice	582786	\N	\N	\N	\N
19440472	budova s číslem popisným	{2606}	Židenice	582786	\N	\N	\N	\N
19440481	budova s číslem popisným	{2607}	Židenice	582786	\N	\N	\N	\N
19440499	budova s číslem popisným	{2608}	Židenice	582786	\N	\N	\N	\N
19440502	budova s číslem popisným	{2609}	Židenice	582786	\N	\N	\N	\N
19440511	budova s číslem popisným	{2610}	Židenice	582786	\N	\N	\N	\N
19440529	budova s číslem popisným	{2611}	Židenice	582786	\N	\N	\N	\N
19440537	budova s číslem popisným	{2612}	Židenice	582786	\N	\N	\N	\N
19440545	budova s číslem popisným	{2614}	Židenice	582786	\N	\N	\N	\N
19440553	budova s číslem popisným	{2615}	Židenice	582786	\N	\N	\N	\N
19440561	budova s číslem popisným	{2616}	Židenice	582786	\N	\N	\N	\N
19440570	budova s číslem popisným	{2617}	Židenice	582786	\N	\N	\N	\N
19440588	budova s číslem popisným	{2618}	Židenice	582786	\N	\N	\N	\N
19440596	budova s číslem popisným	{2619}	Židenice	582786	\N	\N	\N	\N
19440600	budova s číslem popisným	{2620}	Židenice	582786	\N	\N	\N	\N
19440618	budova s číslem popisným	{2621}	Židenice	582786	\N	\N	\N	\N
19440626	budova s číslem popisným	{2622}	Židenice	582786	\N	\N	\N	\N
19440634	budova s číslem popisným	{2623}	Židenice	582786	\N	\N	\N	\N
19440642	budova s číslem popisným	{2624}	Židenice	582786	\N	\N	\N	\N
19440651	budova s číslem popisným	{2625}	Židenice	582786	\N	\N	\N	\N
19440669	budova s číslem popisným	{2626}	Židenice	582786	\N	\N	\N	\N
19440677	budova s číslem popisným	{2627}	Židenice	582786	\N	\N	\N	\N
19440685	budova s číslem popisným	{2628}	Židenice	582786	\N	\N	\N	\N
19440693	budova s číslem popisným	{2629}	Židenice	582786	\N	\N	\N	\N
19440707	budova s číslem popisným	{2630}	Židenice	582786	\N	\N	\N	\N
19440715	budova s číslem popisným	{2631}	Židenice	582786	\N	\N	\N	\N
19440723	budova s číslem popisným	{2632}	Židenice	582786	\N	\N	\N	\N
19440731	budova s číslem popisným	{2633}	Židenice	582786	\N	\N	\N	\N
19440740	budova s číslem popisným	{2634}	Židenice	582786	\N	\N	\N	\N
19440758	budova s číslem popisným	{2635}	Židenice	582786	\N	\N	\N	\N
19440766	budova s číslem popisným	{2636}	Židenice	582786	\N	\N	\N	\N
19440774	budova s číslem popisným	{2637}	Židenice	582786	\N	\N	\N	\N
19440782	budova s číslem popisným	{2638}	Židenice	582786	\N	\N	\N	\N
19440791	budova s číslem popisným	{2639}	Židenice	582786	\N	\N	\N	\N
19440804	budova s číslem popisným	{2640}	Židenice	582786	\N	\N	\N	\N
19440812	budova s číslem popisným	{2641}	Židenice	582786	\N	\N	\N	\N
19440821	budova s číslem popisným	{2642}	Židenice	582786	\N	\N	\N	\N
19440839	budova s číslem popisným	{2643}	Židenice	582786	\N	\N	\N	\N
19440847	budova s číslem popisným	{2644}	Židenice	582786	\N	\N	\N	\N
19440855	budova s číslem popisným	{2645}	Židenice	582786	\N	\N	\N	\N
19440863	budova s číslem popisným	{2646}	Židenice	582786	\N	\N	\N	\N
19440871	budova s číslem popisným	{2647}	Židenice	582786	\N	\N	\N	\N
19440880	budova s číslem popisným	{2648}	Židenice	582786	\N	\N	\N	\N
19440898	budova s číslem popisným	{2649}	Židenice	582786	\N	\N	\N	\N
19440901	budova s číslem popisným	{2650}	Židenice	582786	\N	\N	\N	\N
19440910	budova s číslem popisným	{2651}	Židenice	582786	\N	\N	\N	\N
19440928	budova s číslem popisným	{2652}	Židenice	582786	\N	\N	\N	\N
19440936	budova s číslem popisným	{2653}	Židenice	582786	\N	\N	\N	\N
19440944	budova s číslem popisným	{2654}	Židenice	582786	\N	\N	\N	\N
19440952	budova s číslem popisným	{2655}	Židenice	582786	\N	\N	\N	\N
19440961	budova s číslem popisným	{2656}	Židenice	582786	\N	\N	\N	\N
19440979	budova s číslem popisným	{2657}	Židenice	582786	\N	\N	\N	\N
19440987	budova s číslem popisným	{1005,1006,2658}	Židenice	582786	\N	\N	\N	\N
19440995	budova s číslem popisným	{2659}	Židenice	582786	\N	\N	\N	\N
19441002	budova s číslem popisným	{2660}	Židenice	582786	\N	\N	\N	\N
19441011	budova s číslem popisným	{2661}	Židenice	582786	\N	\N	\N	\N
19441029	budova s číslem popisným	{2662}	Židenice	582786	\N	\N	\N	\N
19441037	budova s číslem popisným	{2663}	Židenice	582786	\N	\N	\N	\N
19441045	budova s číslem popisným	{2664}	Židenice	582786	\N	\N	\N	\N
19441053	budova s číslem popisným	{2665}	Židenice	582786	\N	\N	\N	\N
19441061	budova s číslem popisným	{2666}	Židenice	582786	\N	\N	\N	\N
19441070	budova s číslem popisným	{2667}	Židenice	582786	\N	\N	\N	\N
19441088	budova s číslem popisným	{2668}	Židenice	582786	\N	\N	\N	\N
19441096	budova s číslem popisným	{2669}	Židenice	582786	\N	\N	\N	\N
19441100	budova s číslem popisným	{2670}	Židenice	582786	\N	\N	\N	\N
19441118	budova s číslem popisným	{2671}	Židenice	582786	\N	\N	\N	\N
19441126	budova s číslem popisným	{2672}	Židenice	582786	\N	\N	\N	\N
19441134	budova s číslem popisným	{2673}	Židenice	582786	\N	\N	\N	\N
19441142	budova s číslem popisným	{2674}	Židenice	582786	\N	\N	\N	\N
19441151	budova s číslem popisným	{2675}	Židenice	582786	\N	\N	\N	\N
19441169	budova s číslem popisným	{2676}	Židenice	582786	\N	\N	\N	\N
19441185	budova s číslem popisným	{2678}	Židenice	582786	\N	\N	\N	\N
19441193	budova s číslem popisným	{2679}	Židenice	582786	\N	\N	\N	\N
19441207	budova s číslem popisným	{2680}	Židenice	582786	\N	\N	\N	\N
19441215	budova s číslem popisným	{2681}	Židenice	582786	\N	\N	\N	\N
19441223	budova s číslem popisným	{2682}	Židenice	582786	\N	\N	\N	\N
19441231	budova s číslem popisným	{2683}	Židenice	582786	\N	\N	\N	\N
19441240	budova s číslem popisným	{2684}	Židenice	582786	\N	\N	\N	\N
19441258	budova s číslem popisným	{2685}	Židenice	582786	\N	\N	\N	\N
19441266	budova s číslem popisným	{2686}	Židenice	582786	\N	\N	\N	\N
19441274	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
19441291	budova s číslem popisným	{2691}	Židenice	582786	\N	\N	\N	\N
19441304	budova s číslem popisným	{2692}	Židenice	582786	\N	\N	\N	\N
19441312	budova s číslem popisným	{2693}	Židenice	582786	\N	\N	\N	\N
19441321	budova s číslem popisným	{2694}	Židenice	582786	\N	\N	\N	\N
19441339	budova s číslem popisným	{2695}	Židenice	582786	\N	\N	\N	\N
19441347	budova s číslem popisným	{2696}	Židenice	582786	\N	\N	\N	\N
19441355	budova s číslem popisným	{2697}	Židenice	582786	\N	\N	\N	\N
19441363	budova s číslem popisným	{2698}	Židenice	582786	\N	\N	\N	\N
19441371	budova s číslem popisným	{2699}	Židenice	582786	\N	\N	\N	\N
19441380	budova s číslem popisným	{2700}	Židenice	582786	\N	\N	\N	\N
19441398	budova s číslem popisným	{2701}	Židenice	582786	\N	\N	\N	\N
19441401	budova s číslem popisným	{2702}	Židenice	582786	\N	\N	\N	\N
19441410	budova s číslem popisným	{2704}	Židenice	582786	\N	\N	\N	\N
19441428	budova s číslem popisným	{2705}	Židenice	582786	\N	\N	\N	\N
19441436	budova s číslem popisným	{2706}	Židenice	582786	\N	\N	\N	\N
19441444	budova s číslem popisným	{2707}	Židenice	582786	\N	\N	\N	\N
19441452	budova s číslem popisným	{2708}	Židenice	582786	\N	\N	\N	\N
19441461	budova s číslem popisným	{2709}	Židenice	582786	\N	\N	\N	\N
19441479	budova s číslem popisným	{2710}	Židenice	582786	\N	\N	\N	\N
19441487	budova s číslem popisným	{2711}	Židenice	582786	\N	\N	\N	\N
19441495	budova s číslem popisným	{2712}	Židenice	582786	\N	\N	\N	\N
19441509	budova s číslem popisným	{2713}	Židenice	582786	\N	\N	\N	\N
19441517	budova s číslem popisným	{2714}	Židenice	582786	\N	\N	\N	\N
19441525	budova s číslem popisným	{2715}	Židenice	582786	\N	\N	\N	\N
19441533	budova s číslem popisným	{2716}	Židenice	582786	\N	\N	\N	\N
19441541	budova s číslem popisným	{2717}	Židenice	582786	\N	\N	\N	\N
19441550	budova s číslem popisným	{2718}	Židenice	582786	\N	\N	\N	\N
19441568	budova s číslem popisným	{2719}	Židenice	582786	\N	\N	\N	\N
19441576	budova s číslem popisným	{2720}	Židenice	582786	\N	\N	\N	\N
19441584	budova s číslem popisným	{2721}	Židenice	582786	\N	\N	\N	\N
19441592	budova s číslem popisným	{2722}	Židenice	582786	\N	\N	\N	\N
19441606	budova s číslem popisným	{2723}	Židenice	582786	\N	\N	\N	\N
19441614	budova s číslem popisným	{2724}	Židenice	582786	\N	\N	\N	\N
19441622	budova s číslem popisným	{2725}	Židenice	582786	\N	\N	\N	\N
19441631	budova s číslem popisným	{2726}	Židenice	582786	\N	\N	\N	\N
19441649	budova s číslem popisným	{2727}	Židenice	582786	\N	\N	\N	\N
19441657	budova s číslem popisným	{2728}	Židenice	582786	\N	\N	\N	\N
19441665	budova s číslem popisným	{2729}	Židenice	582786	\N	\N	\N	\N
19441673	budova s číslem popisným	{2730}	Židenice	582786	\N	\N	\N	\N
19441681	budova s číslem popisným	{2731}	Židenice	582786	\N	\N	\N	\N
19441690	budova s číslem popisným	{2732}	Židenice	582786	\N	\N	\N	\N
19441703	budova s číslem popisným	{2733}	Židenice	582786	\N	\N	\N	\N
19441711	budova s číslem popisným	{2734}	Židenice	582786	\N	\N	\N	\N
19441720	budova s číslem popisným	{2735}	Židenice	582786	\N	\N	\N	\N
19441738	budova s číslem popisným	{2736}	Židenice	582786	\N	\N	\N	\N
19441746	budova s číslem popisným	{2737}	Židenice	582786	\N	\N	\N	\N
19441754	budova s číslem popisným	{2738}	Židenice	582786	\N	\N	\N	\N
19441762	budova s číslem popisným	{2739}	Židenice	582786	\N	\N	\N	\N
19441771	budova s číslem popisným	{2740}	Židenice	582786	\N	\N	\N	\N
19441789	budova s číslem popisným	{2741}	Židenice	582786	\N	\N	\N	\N
19441797	budova s číslem popisným	{2742}	Židenice	582786	\N	\N	\N	\N
19441801	budova s číslem popisným	{2743}	Židenice	582786	\N	\N	\N	\N
19441819	budova s číslem popisným	{2744}	Židenice	582786	\N	\N	\N	\N
19441827	budova s číslem popisným	{2745}	Židenice	582786	\N	\N	\N	\N
19441835	budova s číslem popisným	{2746}	Židenice	582786	\N	\N	\N	\N
19441843	budova s číslem popisným	{2747}	Židenice	582786	\N	\N	\N	\N
19441851	budova s číslem popisným	{2748}	Židenice	582786	\N	\N	\N	\N
19441860	budova s číslem popisným	{2749}	Židenice	582786	\N	\N	\N	\N
19441878	budova s číslem popisným	{2750}	Židenice	582786	\N	\N	\N	\N
19441886	budova s číslem popisným	{2751}	Židenice	582786	\N	\N	\N	\N
19441894	budova s číslem popisným	{2752}	Židenice	582786	\N	\N	\N	\N
19441908	budova s číslem popisným	{2753}	Židenice	582786	\N	\N	\N	\N
19441916	budova s číslem popisným	{2754}	Židenice	582786	\N	\N	\N	\N
19441924	budova s číslem popisným	{2756}	Židenice	582786	\N	\N	\N	\N
19441932	budova s číslem popisným	{2757}	Židenice	582786	\N	\N	\N	\N
19441941	budova s číslem popisným	{2758}	Židenice	582786	\N	\N	\N	\N
19441959	budova s číslem popisným	{2759}	Židenice	582786	\N	\N	\N	\N
19441967	budova s číslem popisným	{2760}	Židenice	582786	\N	\N	\N	\N
19441975	budova s číslem popisným	{2761}	Židenice	582786	\N	\N	\N	\N
19441983	budova s číslem popisným	{2762}	Židenice	582786	\N	\N	\N	\N
19441991	budova s číslem popisným	{2763}	Židenice	582786	\N	\N	\N	\N
19442009	budova s číslem popisným	{2764}	Židenice	582786	\N	\N	\N	\N
19442017	budova s číslem popisným	{2765}	Židenice	582786	\N	\N	\N	\N
19442025	budova s číslem popisným	{2766}	Židenice	582786	\N	\N	\N	\N
19442033	budova s číslem popisným	{2767}	Židenice	582786	\N	\N	\N	\N
19442041	budova s číslem popisným	{2768}	Židenice	582786	\N	\N	\N	\N
19442050	budova s číslem popisným	{2769}	Židenice	582786	\N	\N	\N	\N
19442068	budova s číslem popisným	{2770}	Židenice	582786	\N	\N	\N	\N
19442076	budova s číslem popisným	{2771}	Židenice	582786	\N	\N	\N	\N
19442084	budova s číslem popisným	{2772}	Židenice	582786	\N	\N	\N	\N
19442092	budova s číslem popisným	{2773}	Židenice	582786	\N	\N	\N	\N
19442106	budova s číslem popisným	{2774}	Židenice	582786	\N	\N	\N	\N
19442114	budova s číslem popisným	{2775}	Židenice	582786	\N	\N	\N	\N
19442122	budova s číslem popisným	{2776}	Židenice	582786	\N	\N	\N	\N
19442131	budova s číslem popisným	{2777}	Židenice	582786	\N	\N	\N	\N
19442149	budova s číslem popisným	{2778}	Židenice	582786	\N	\N	\N	\N
19442157	budova s číslem popisným	{2779}	Židenice	582786	\N	\N	\N	\N
19442165	budova s číslem popisným	{2780}	Židenice	582786	\N	\N	\N	\N
19442173	budova s číslem popisným	{2781}	Židenice	582786	\N	\N	\N	\N
19442203	budova s číslem popisným	{2785}	Židenice	582786	\N	\N	\N	\N
19442211	budova s číslem popisným	{2786}	Židenice	582786	\N	\N	\N	\N
19442220	budova s číslem popisným	{2787}	Židenice	582786	\N	\N	\N	\N
19442238	budova s číslem popisným	{2788}	Židenice	582786	\N	\N	\N	\N
19442262	budova s číslem popisným	{2791}	Židenice	582786	\N	\N	\N	\N
19442301	budova s číslem popisným	{2796}	Židenice	582786	\N	\N	\N	\N
19442319	budova s číslem popisným	{2797}	Židenice	582786	\N	\N	\N	\N
19442327	budova s číslem popisným	{2799}	Židenice	582786	\N	\N	\N	\N
19442335	budova s číslem popisným	{2801}	Židenice	582786	\N	\N	\N	\N
19442343	budova s číslem popisným	{2802}	Židenice	582786	\N	\N	\N	\N
19442351	budova s číslem popisným	{2803}	Židenice	582786	\N	\N	\N	\N
19442360	budova s číslem popisným	{2804}	Židenice	582786	\N	\N	\N	\N
19442378	budova s číslem popisným	{2805}	Židenice	582786	\N	\N	\N	\N
19442386	budova s číslem popisným	{2806}	Židenice	582786	\N	\N	\N	\N
19442394	budova s číslem popisným	{2807}	Židenice	582786	\N	\N	\N	\N
19442408	budova s číslem popisným	{2808}	Židenice	582786	\N	\N	\N	\N
19442416	budova s číslem popisným	{2809}	Židenice	582786	\N	\N	\N	\N
19442424	budova s číslem popisným	{2810}	Židenice	582786	\N	\N	\N	\N
19442432	budova s číslem popisným	{2811}	Židenice	582786	\N	\N	\N	\N
19442441	budova s číslem popisným	{2812}	Židenice	582786	\N	\N	\N	\N
19442459	budova s číslem popisným	{2813}	Židenice	582786	\N	\N	\N	\N
19442467	budova s číslem popisným	{2814}	Židenice	582786	\N	\N	\N	\N
19442475	budova s číslem popisným	{2815}	Židenice	582786	\N	\N	\N	\N
19442483	budova s číslem popisným	{2816}	Židenice	582786	\N	\N	\N	\N
19442491	budova s číslem popisným	{2817}	Židenice	582786	\N	\N	\N	\N
19442505	budova s číslem popisným	{2818}	Židenice	582786	\N	\N	\N	\N
19442513	budova s číslem popisným	{2819}	Židenice	582786	\N	\N	\N	\N
19442521	budova s číslem popisným	{2820}	Židenice	582786	\N	\N	\N	\N
19442530	budova s číslem popisným	{2821}	Židenice	582786	\N	\N	\N	\N
19442548	budova s číslem popisným	{2822}	Židenice	582786	\N	\N	\N	\N
19442556	budova s číslem popisným	{2823}	Židenice	582786	\N	\N	\N	\N
19442564	budova s číslem popisným	{2824}	Židenice	582786	\N	\N	\N	\N
19442572	budova s číslem popisným	{2825}	Židenice	582786	\N	\N	\N	\N
19442581	budova s číslem popisným	{2826}	Židenice	582786	\N	\N	\N	\N
19442599	budova s číslem popisným	{2827}	Židenice	582786	\N	\N	\N	\N
19442602	budova s číslem popisným	{2828}	Židenice	582786	\N	\N	\N	\N
19442611	budova s číslem popisným	{2829}	Židenice	582786	\N	\N	\N	\N
19442629	budova s číslem popisným	{2830}	Židenice	582786	\N	\N	\N	\N
19442637	budova s číslem popisným	{2831}	Židenice	582786	\N	\N	\N	\N
19442645	budova s číslem popisným	{2832}	Židenice	582786	\N	\N	\N	\N
19442653	budova s číslem popisným	{2833}	Židenice	582786	\N	\N	\N	\N
19442661	budova s číslem popisným	{2834}	Židenice	582786	\N	\N	\N	\N
19442670	budova s číslem popisným	{2835}	Židenice	582786	\N	\N	\N	\N
19442688	budova s číslem popisným	{2836}	Židenice	582786	\N	\N	\N	\N
19442696	budova s číslem popisným	{2837}	Židenice	582786	\N	\N	\N	\N
19442700	budova s číslem popisným	{2838}	Židenice	582786	\N	\N	\N	\N
19442718	budova s číslem popisným	{2839}	Židenice	582786	\N	\N	\N	\N
19442726	budova s číslem popisným	{2840}	Židenice	582786	\N	\N	\N	\N
19442734	budova s číslem popisným	{2841}	Židenice	582786	\N	\N	\N	\N
19442742	budova s číslem popisným	{2842}	Židenice	582786	\N	\N	\N	\N
19442751	budova s číslem popisným	{2843}	Židenice	582786	\N	\N	\N	\N
19442769	budova s číslem popisným	{2844}	Židenice	582786	\N	\N	\N	\N
19442777	budova s číslem popisným	{2845}	Židenice	582786	\N	\N	\N	\N
19442785	budova s číslem popisným	{2846}	Židenice	582786	\N	\N	\N	\N
19442793	budova s číslem popisným	{2847}	Židenice	582786	\N	\N	\N	\N
19442807	budova s číslem popisným	{2848}	Židenice	582786	\N	\N	\N	\N
19442815	budova s číslem popisným	{2849}	Židenice	582786	\N	\N	\N	\N
19442823	budova s číslem popisným	{2850}	Židenice	582786	\N	\N	\N	\N
19442831	budova s číslem popisným	{2851}	Židenice	582786	\N	\N	\N	\N
19442840	budova s číslem popisným	{2852}	Židenice	582786	\N	\N	\N	\N
19442858	budova s číslem popisným	{2853}	Židenice	582786	\N	\N	\N	\N
19442866	budova s číslem popisným	{2854}	Židenice	582786	\N	\N	\N	\N
19442874	budova s číslem popisným	{2855}	Židenice	582786	\N	\N	\N	\N
19442882	budova s číslem popisným	{2856}	Židenice	582786	\N	\N	\N	\N
19442891	budova s číslem popisným	{2857}	Židenice	582786	\N	\N	\N	\N
19442904	budova s číslem popisným	{2858}	Židenice	582786	\N	\N	\N	\N
19442912	budova s číslem popisným	{2859}	Židenice	582786	\N	\N	\N	\N
19442921	budova s číslem popisným	{2860}	Židenice	582786	\N	\N	\N	\N
19442939	budova s číslem popisným	{2861}	Židenice	582786	\N	\N	\N	\N
19442947	budova s číslem popisným	{2862}	Židenice	582786	\N	\N	\N	\N
19442971	budova s číslem popisným	{2865}	Židenice	582786	\N	\N	\N	\N
19442980	budova s číslem popisným	{2866}	Židenice	582786	\N	\N	\N	\N
19442998	budova s číslem popisným	{2867}	Židenice	582786	\N	\N	\N	\N
19443005	budova s číslem popisným	{2868}	Židenice	582786	\N	\N	\N	\N
19443013	budova s číslem popisným	{2869}	Židenice	582786	\N	\N	\N	\N
19443021	budova s číslem popisným	{2870}	Židenice	582786	\N	\N	\N	\N
19443030	budova s číslem popisným	{2871}	Židenice	582786	\N	\N	\N	\N
19443048	budova s číslem popisným	{2872}	Židenice	582786	\N	\N	\N	\N
19443056	budova s číslem popisným	{2873}	Židenice	582786	\N	\N	\N	\N
19443064	budova s číslem popisným	{2874}	Židenice	582786	\N	\N	\N	\N
19443072	budova s číslem popisným	{2875}	Židenice	582786	\N	\N	\N	\N
19443081	budova s číslem popisným	{2876}	Židenice	582786	\N	\N	\N	\N
19443099	budova s číslem popisným	{2877}	Židenice	582786	\N	\N	\N	\N
19443102	budova s číslem popisným	{2878}	Židenice	582786	\N	\N	\N	\N
19443111	budova s číslem popisným	{2879}	Židenice	582786	\N	\N	\N	\N
19443129	budova s číslem popisným	{2880}	Židenice	582786	\N	\N	\N	\N
19443137	budova s číslem popisným	{2881}	Židenice	582786	\N	\N	\N	\N
19443145	budova s číslem popisným	{2882}	Židenice	582786	\N	\N	\N	\N
19443153	budova s číslem popisným	{2883}	Židenice	582786	\N	\N	\N	\N
19443161	budova s číslem popisným	{2884}	Židenice	582786	\N	\N	\N	\N
19443170	budova s číslem popisným	{2885}	Židenice	582786	\N	\N	\N	\N
19443188	budova s číslem popisným	{2886}	Židenice	582786	\N	\N	\N	\N
19443196	budova s číslem popisným	{2887}	Židenice	582786	\N	\N	\N	\N
19443200	budova s číslem popisným	{2888}	Židenice	582786	\N	\N	\N	\N
19443218	budova s číslem popisným	{2889}	Židenice	582786	\N	\N	\N	\N
19443226	budova s číslem popisným	{2890}	Židenice	582786	\N	\N	\N	\N
19443234	budova s číslem popisným	{2891}	Židenice	582786	\N	\N	\N	\N
19443242	budova s číslem popisným	{2892}	Židenice	582786	\N	\N	\N	\N
19443251	budova s číslem popisným	{2893}	Židenice	582786	\N	\N	\N	\N
19443269	budova s číslem popisným	{2894}	Židenice	582786	\N	\N	\N	\N
19443277	budova s číslem popisným	{2895}	Židenice	582786	\N	\N	\N	\N
19443285	budova s číslem popisným	{2896}	Židenice	582786	\N	\N	\N	\N
19443293	budova s číslem popisným	{2897}	Židenice	582786	\N	\N	\N	\N
19443307	budova s číslem popisným	{2898}	Židenice	582786	\N	\N	\N	\N
19443315	budova s číslem popisným	{2899}	Židenice	582786	\N	\N	\N	\N
19443323	budova s číslem popisným	{2900}	Židenice	582786	\N	\N	\N	\N
19443331	budova s číslem popisným	{2901}	Židenice	582786	\N	\N	\N	\N
19443358	budova s číslem popisným	{2903}	Židenice	582786	\N	\N	\N	\N
19443366	budova s číslem popisným	{2904}	Židenice	582786	\N	\N	\N	\N
19443374	budova s číslem popisným	{2905}	Židenice	582786	\N	\N	\N	\N
19443382	budova s číslem popisným	{2906}	Židenice	582786	\N	\N	\N	\N
19443391	budova s číslem popisným	{2907}	Židenice	582786	\N	\N	\N	\N
19443404	budova s číslem popisným	{2908}	Židenice	582786	\N	\N	\N	\N
19443412	budova s číslem popisným	{2909}	Židenice	582786	\N	\N	\N	\N
19443421	budova s číslem popisným	{2910}	Židenice	582786	\N	\N	\N	\N
19443439	budova s číslem popisným	{2911}	Židenice	582786	\N	\N	\N	\N
19443447	budova s číslem popisným	{2912}	Židenice	582786	\N	\N	\N	\N
19443455	budova s číslem popisným	{2913}	Židenice	582786	\N	\N	\N	\N
19443463	budova s číslem popisným	{2914}	Židenice	582786	\N	\N	\N	\N
19443471	budova s číslem popisným	{2915}	Židenice	582786	\N	\N	\N	\N
19443480	budova s číslem popisným	{2916}	Židenice	582786	\N	\N	\N	\N
19443498	budova s číslem popisným	{2917}	Židenice	582786	\N	\N	\N	\N
19443501	budova s číslem popisným	{2918}	Židenice	582786	\N	\N	\N	\N
19443510	budova s číslem popisným	{2919}	Židenice	582786	\N	\N	\N	\N
19443528	budova s číslem popisným	{2920}	Židenice	582786	\N	\N	\N	\N
19443536	budova s číslem popisným	{2921}	Židenice	582786	\N	\N	\N	\N
19443544	budova s číslem popisným	{2922}	Židenice	582786	\N	\N	\N	\N
19443552	budova s číslem popisným	{2923}	Židenice	582786	\N	\N	\N	\N
19443561	budova s číslem popisným	{2924}	Židenice	582786	\N	\N	\N	\N
19443579	budova s číslem popisným	{2925}	Židenice	582786	\N	\N	\N	\N
19443587	budova s číslem popisným	{2926}	Židenice	582786	\N	\N	\N	\N
19443595	budova s číslem popisným	{2927}	Židenice	582786	\N	\N	\N	\N
19443609	budova s číslem popisným	{2928}	Židenice	582786	\N	\N	\N	\N
19443617	budova s číslem popisným	{2929}	Židenice	582786	\N	\N	\N	\N
19443625	budova s číslem popisným	{2930}	Židenice	582786	\N	\N	\N	\N
19443633	budova s číslem popisným	{2931}	Židenice	582786	\N	\N	\N	\N
19443641	budova s číslem popisným	{2932}	Židenice	582786	\N	\N	\N	\N
19443650	budova s číslem popisným	{2933}	Židenice	582786	\N	\N	\N	\N
19443668	budova s číslem popisným	{2934}	Židenice	582786	\N	\N	\N	\N
19443676	budova s číslem popisným	{2935}	Židenice	582786	\N	\N	\N	\N
19443684	budova s číslem popisným	{2936}	Židenice	582786	\N	\N	\N	\N
19443692	budova s číslem popisným	{2937}	Židenice	582786	\N	\N	\N	\N
19443706	budova s číslem popisným	{2938}	Židenice	582786	\N	\N	\N	\N
19443714	budova s číslem popisným	{2939}	Židenice	582786	\N	\N	\N	\N
19443722	budova s číslem popisným	{2940}	Židenice	582786	\N	\N	\N	\N
19443731	budova s číslem popisným	{2941}	Židenice	582786	\N	\N	\N	\N
19443749	budova s číslem popisným	{2942}	Židenice	582786	\N	\N	\N	\N
19443757	budova s číslem popisným	{2943}	Židenice	582786	\N	\N	\N	\N
19443765	budova s číslem popisným	{2944}	Židenice	582786	\N	\N	\N	\N
19443773	budova s číslem popisným	{2945}	Židenice	582786	\N	\N	\N	\N
19443781	budova s číslem popisným	{2946}	Židenice	582786	\N	\N	\N	\N
19443790	budova s číslem popisným	{2947}	Židenice	582786	\N	\N	\N	\N
19443803	budova s číslem popisným	{2948}	Židenice	582786	\N	\N	\N	\N
19443811	budova s číslem popisným	{2951}	Židenice	582786	\N	\N	\N	\N
19443820	budova s číslem popisným	{2952}	Židenice	582786	\N	\N	\N	\N
19443838	budova s číslem popisným	{2953}	Židenice	582786	\N	\N	\N	\N
19443846	budova s číslem popisným	{2955}	Židenice	582786	\N	\N	\N	\N
19443854	budova s číslem popisným	{2956}	Židenice	582786	\N	\N	\N	\N
19443862	budova s číslem popisným	{2957}	Židenice	582786	\N	\N	\N	\N
19443871	budova s číslem popisným	{2960}	Židenice	582786	\N	\N	\N	\N
19443889	budova s číslem popisným	{2961}	Židenice	582786	\N	\N	\N	\N
19443897	budova s číslem popisným	{2962}	Židenice	582786	\N	\N	\N	\N
19443901	budova s číslem popisným	{2963}	Židenice	582786	\N	\N	\N	\N
19443919	budova s číslem popisným	{2964}	Židenice	582786	\N	\N	\N	\N
19443927	budova s číslem popisným	{2965}	Židenice	582786	\N	\N	\N	\N
19443935	budova s číslem popisným	{2966}	Židenice	582786	\N	\N	\N	\N
19443943	budova s číslem popisným	{2967}	Židenice	582786	\N	\N	\N	\N
19443951	budova s číslem popisným	{2970}	Židenice	582786	\N	\N	\N	\N
19443960	budova s číslem popisným	{2971}	Židenice	582786	\N	\N	\N	\N
19443978	budova s číslem popisným	{2972}	Židenice	582786	\N	\N	\N	\N
19443986	budova s číslem popisným	{2973}	Židenice	582786	\N	\N	\N	\N
19443994	budova s číslem popisným	{2974}	Židenice	582786	\N	\N	\N	\N
19444001	budova s číslem popisným	{2975}	Židenice	582786	\N	\N	\N	\N
19444010	budova s číslem popisným	{2976}	Židenice	582786	\N	\N	\N	\N
19444028	budova s číslem popisným	{2977}	Židenice	582786	\N	\N	\N	\N
19444036	budova s číslem popisným	{2978}	Židenice	582786	\N	\N	\N	\N
19444044	budova s číslem popisným	{2979}	Židenice	582786	\N	\N	\N	\N
19444052	budova s číslem popisným	{2980}	Židenice	582786	\N	\N	\N	\N
19444061	budova s číslem popisným	{2981}	Židenice	582786	\N	\N	\N	\N
19444079	budova s číslem popisným	{2984}	Židenice	582786	\N	\N	\N	\N
19444087	budova s číslem popisným	{2985}	Židenice	582786	\N	\N	\N	\N
19444095	budova s číslem popisným	{2986}	Židenice	582786	\N	\N	\N	\N
19444109	budova s číslem popisným	{2987}	Židenice	582786	\N	\N	\N	\N
19444117	budova s číslem popisným	{2988}	Židenice	582786	\N	\N	\N	\N
19444125	budova s číslem popisným	{2989}	Židenice	582786	\N	\N	\N	\N
19444133	budova s číslem popisným	{2991}	Židenice	582786	\N	\N	\N	\N
19444141	budova s číslem popisným	{2992}	Židenice	582786	\N	\N	\N	\N
19444150	budova s číslem popisným	{2993}	Židenice	582786	\N	\N	\N	\N
19444168	budova s číslem popisným	{2994}	Židenice	582786	\N	\N	\N	\N
19444176	budova s číslem popisným	{2995}	Židenice	582786	\N	\N	\N	\N
19444184	budova s číslem popisným	{2996}	Židenice	582786	\N	\N	\N	\N
19444192	budova s číslem popisným	{2997}	Židenice	582786	\N	\N	\N	\N
19444206	budova s číslem popisným	{2998}	Židenice	582786	\N	\N	\N	\N
19444214	budova s číslem popisným	{2999}	Židenice	582786	\N	\N	\N	\N
19444222	budova s číslem popisným	{3000}	Židenice	582786	\N	\N	\N	\N
19444231	budova s číslem popisným	{3001}	Židenice	582786	\N	\N	\N	\N
19444249	budova s číslem popisným	{3002}	Židenice	582786	\N	\N	\N	\N
19444257	budova s číslem popisným	{3003}	Židenice	582786	\N	\N	\N	\N
19444265	budova s číslem popisným	{3004}	Židenice	582786	\N	\N	\N	\N
19444273	budova s číslem popisným	{3005}	Židenice	582786	\N	\N	\N	\N
19444281	budova s číslem popisným	{3006}	Židenice	582786	\N	\N	\N	\N
19444290	budova s číslem popisným	{3007}	Židenice	582786	\N	\N	\N	\N
19444303	budova s číslem popisným	{3008}	Židenice	582786	\N	\N	\N	\N
19444311	budova s číslem popisným	{3009}	Židenice	582786	\N	\N	\N	\N
19444320	budova s číslem popisným	{3010}	Židenice	582786	\N	\N	\N	\N
19444338	budova s číslem popisným	{3011}	Židenice	582786	\N	\N	\N	\N
19444346	budova s číslem popisným	{3012}	Židenice	582786	\N	\N	\N	\N
19444354	budova s číslem popisným	{3013}	Židenice	582786	\N	\N	\N	\N
19444362	budova s číslem popisným	{3014}	Židenice	582786	\N	\N	\N	\N
19444371	budova s číslem popisným	{3015}	Židenice	582786	\N	\N	\N	\N
19444389	budova s číslem popisným	{3016}	Židenice	582786	\N	\N	\N	\N
19444397	budova s číslem popisným	{3017}	Židenice	582786	\N	\N	\N	\N
19444401	budova s číslem popisným	{3018}	Židenice	582786	\N	\N	\N	\N
19444419	budova s číslem popisným	{3019}	Židenice	582786	\N	\N	\N	\N
19444427	budova s číslem popisným	{3020}	Židenice	582786	\N	\N	\N	\N
19444435	budova s číslem popisným	{3021}	Židenice	582786	\N	\N	\N	\N
19444443	budova s číslem popisným	{3022}	Židenice	582786	\N	\N	\N	\N
19444451	budova s číslem popisným	{3023}	Židenice	582786	\N	\N	\N	\N
19444460	budova s číslem popisným	{3024}	Židenice	582786	\N	\N	\N	\N
19444478	budova s číslem popisným	{3025}	Židenice	582786	\N	\N	\N	\N
19444486	budova s číslem popisným	{3026}	Židenice	582786	\N	\N	\N	\N
19444494	budova s číslem popisným	{3027}	Židenice	582786	\N	\N	\N	\N
19444508	budova s číslem popisným	{3028}	Židenice	582786	\N	\N	\N	\N
19444516	budova s číslem popisným	{3029}	Židenice	582786	\N	\N	\N	\N
19444524	budova s číslem popisným	{3030}	Židenice	582786	\N	\N	\N	\N
19444532	budova s číslem popisným	{3031}	Židenice	582786	\N	\N	\N	\N
19444541	budova s číslem popisným	{3032}	Židenice	582786	\N	\N	\N	\N
19444559	budova s číslem popisným	{3033}	Židenice	582786	\N	\N	\N	\N
19444567	budova s číslem popisným	{3034}	Židenice	582786	\N	\N	\N	\N
19444575	budova s číslem popisným	{3035}	Židenice	582786	\N	\N	\N	\N
19444583	budova s číslem popisným	{3036}	Židenice	582786	\N	\N	\N	\N
19444591	budova s číslem popisným	{3037}	Židenice	582786	\N	\N	\N	\N
19444605	budova s číslem popisným	{3038}	Židenice	582786	\N	\N	\N	\N
19444613	budova s číslem popisným	{3039}	Židenice	582786	\N	\N	\N	\N
19444621	budova s číslem popisným	{3041}	Židenice	582786	\N	\N	\N	\N
19444630	budova s číslem popisným	{3042}	Židenice	582786	\N	\N	\N	\N
19444648	budova s číslem popisným	{3043}	Židenice	582786	\N	\N	\N	\N
19444656	budova s číslem popisným	{3044}	Židenice	582786	\N	\N	\N	\N
19444664	budova s číslem popisným	{3045}	Židenice	582786	\N	\N	\N	\N
19444672	budova s číslem popisným	{3046}	Židenice	582786	\N	\N	\N	\N
19444681	budova s číslem popisným	{3047}	Židenice	582786	\N	\N	\N	\N
19444699	budova s číslem popisným	{3048}	Židenice	582786	\N	\N	\N	\N
19444702	budova s číslem popisným	{3049}	Židenice	582786	\N	\N	\N	\N
19444711	budova s číslem popisným	{3050}	Židenice	582786	\N	\N	\N	\N
19444729	budova s číslem popisným	{3051}	Židenice	582786	\N	\N	\N	\N
19444737	budova s číslem popisným	{3052}	Židenice	582786	\N	\N	\N	\N
19444745	budova s číslem popisným	{3053}	Židenice	582786	\N	\N	\N	\N
19444761	budova s číslem popisným	{3055}	Židenice	582786	\N	\N	\N	\N
19444770	budova s číslem popisným	{3056}	Židenice	582786	\N	\N	\N	\N
19444788	budova s číslem popisným	{3057}	Židenice	582786	\N	\N	\N	\N
19444796	budova s číslem popisným	{3058}	Židenice	582786	\N	\N	\N	\N
19444800	budova s číslem popisným	{3059}	Židenice	582786	\N	\N	\N	\N
19444818	budova s číslem popisným	{3060}	Židenice	582786	\N	\N	\N	\N
19444826	budova s číslem popisným	{3062}	Židenice	582786	\N	\N	\N	\N
19444834	budova s číslem popisným	{3063}	Židenice	582786	\N	\N	\N	\N
19444842	budova s číslem popisným	{3064}	Židenice	582786	\N	\N	\N	\N
19444851	budova s číslem popisným	{3065}	Židenice	582786	\N	\N	\N	\N
19444869	budova s číslem popisným	{3066}	Židenice	582786	\N	\N	\N	\N
19444877	budova s číslem popisným	{3067}	Židenice	582786	\N	\N	\N	\N
19444885	budova s číslem popisným	{3068}	Židenice	582786	\N	\N	\N	\N
19444893	budova s číslem popisným	{3069}	Židenice	582786	\N	\N	\N	\N
19444907	budova s číslem popisným	{3070}	Židenice	582786	\N	\N	\N	\N
19444915	budova s číslem popisným	{3071}	Židenice	582786	\N	\N	\N	\N
19444923	budova s číslem popisným	{3072}	Židenice	582786	\N	\N	\N	\N
19444931	budova s číslem popisným	{3073}	Židenice	582786	\N	\N	\N	\N
19444940	budova s číslem popisným	{3074}	Židenice	582786	\N	\N	\N	\N
19444958	budova s číslem popisným	{3075}	Židenice	582786	\N	\N	\N	\N
19444966	budova s číslem popisným	{3076}	Židenice	582786	\N	\N	\N	\N
19444974	budova s číslem popisným	{3077}	Židenice	582786	\N	\N	\N	\N
19444982	budova s číslem popisným	{3078}	Židenice	582786	\N	\N	\N	\N
19444991	budova s číslem popisným	{3079}	Židenice	582786	\N	\N	\N	\N
19445008	budova s číslem popisným	{3080}	Židenice	582786	\N	\N	\N	\N
19445016	budova s číslem popisným	{3081}	Židenice	582786	\N	\N	\N	\N
19445024	budova s číslem popisným	{3082}	Židenice	582786	\N	\N	\N	\N
19445032	budova s číslem popisným	{3083}	Židenice	582786	\N	\N	\N	\N
19445041	budova s číslem popisným	{3084}	Židenice	582786	\N	\N	\N	\N
19445059	budova s číslem popisným	{3085}	Židenice	582786	\N	\N	\N	\N
19445067	budova s číslem popisným	{3086}	Židenice	582786	\N	\N	\N	\N
19445075	budova s číslem popisným	{3087}	Židenice	582786	\N	\N	\N	\N
19445083	budova s číslem popisným	{3088}	Židenice	582786	\N	\N	\N	\N
19445091	budova s číslem popisným	{3089}	Židenice	582786	\N	\N	\N	\N
19445105	budova s číslem popisným	{3090}	Židenice	582786	\N	\N	\N	\N
19445113	budova s číslem popisným	{3091}	Židenice	582786	\N	\N	\N	\N
19445121	budova s číslem popisným	{3092}	Židenice	582786	\N	\N	\N	\N
19445130	budova s číslem popisným	{3093}	Židenice	582786	\N	\N	\N	\N
19445148	budova s číslem popisným	{3094}	Židenice	582786	\N	\N	\N	\N
19445156	budova s číslem popisným	{3095}	Židenice	582786	\N	\N	\N	\N
19445164	budova s číslem popisným	{3096}	Židenice	582786	\N	\N	\N	\N
19445172	budova s číslem popisným	{3097}	Židenice	582786	\N	\N	\N	\N
19445181	budova s číslem popisným	{3098}	Židenice	582786	\N	\N	\N	\N
19445199	budova s číslem popisným	{3099}	Židenice	582786	\N	\N	\N	\N
19445202	budova s číslem popisným	{3100}	Židenice	582786	\N	\N	\N	\N
19445211	budova s číslem popisným	{3101}	Židenice	582786	\N	\N	\N	\N
19445229	budova s číslem popisným	{3102}	Židenice	582786	\N	\N	\N	\N
19445237	budova s číslem popisným	{3103}	Židenice	582786	\N	\N	\N	\N
19445245	budova s číslem popisným	{3104}	Židenice	582786	\N	\N	\N	\N
19445253	budova s číslem popisným	{3105}	Židenice	582786	\N	\N	\N	\N
19445261	budova s číslem popisným	{3106}	Židenice	582786	\N	\N	\N	\N
19445270	budova s číslem popisným	{3107}	Židenice	582786	\N	\N	\N	\N
19445288	budova s číslem popisným	{3108}	Židenice	582786	\N	\N	\N	\N
19445300	budova s číslem popisným	{3111}	Židenice	582786	\N	\N	\N	\N
19445318	budova s číslem popisným	{3112}	Židenice	582786	\N	\N	\N	\N
19445326	budova s číslem popisným	{3113}	Židenice	582786	\N	\N	\N	\N
19445334	budova s číslem popisným	{3114}	Židenice	582786	\N	\N	\N	\N
19445342	budova s číslem popisným	{3115}	Židenice	582786	\N	\N	\N	\N
19445351	budova s číslem popisným	{4455}	Židenice	582786	\N	\N	\N	\N
19445369	budova s číslem popisným	{3117}	Židenice	582786	\N	\N	\N	\N
19445377	budova s číslem popisným	{3118}	Židenice	582786	\N	\N	\N	\N
19445393	budova s číslem popisným	{3120}	Židenice	582786	\N	\N	\N	\N
19445407	budova s číslem popisným	{3121}	Židenice	582786	\N	\N	\N	\N
19445415	budova s číslem popisným	{3122}	Židenice	582786	\N	\N	\N	\N
19445423	budova s číslem popisným	{3123}	Židenice	582786	\N	\N	\N	\N
19445431	budova s číslem popisným	{3124}	Židenice	582786	\N	\N	\N	\N
19445440	budova s číslem popisným	{3125}	Židenice	582786	\N	\N	\N	\N
19445458	budova s číslem popisným	{3126}	Židenice	582786	\N	\N	\N	\N
19445466	budova s číslem popisným	{3127}	Židenice	582786	\N	\N	\N	\N
19445474	budova s číslem popisným	{3128}	Židenice	582786	\N	\N	\N	\N
19445482	budova s číslem popisným	{3129}	Židenice	582786	\N	\N	\N	\N
19445491	budova s číslem popisným	{3130}	Židenice	582786	\N	\N	\N	\N
19445504	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
19445512	budova s číslem popisným	{3132}	Židenice	582786	\N	\N	\N	\N
19445521	budova s číslem popisným	{4369}	Židenice	582786	\N	\N	\N	\N
19445539	budova s číslem popisným	{3134}	Židenice	582786	\N	\N	\N	\N
19445547	budova s číslem popisným	{3135}	Židenice	582786	\N	\N	\N	\N
19445555	budova s číslem popisným	{3136}	Židenice	582786	\N	\N	\N	\N
19445563	budova s číslem popisným	{3137}	Židenice	582786	\N	\N	\N	\N
19445571	budova s číslem popisným	{3138}	Židenice	582786	\N	\N	\N	\N
19445580	budova s číslem popisným	{3139}	Židenice	582786	\N	\N	\N	\N
19445628	budova s číslem popisným	{3143}	Židenice	582786	\N	\N	\N	\N
19445636	budova s číslem popisným	{3144}	Židenice	582786	\N	\N	\N	\N
19445644	budova s číslem popisným	{3145}	Židenice	582786	\N	\N	\N	\N
19445652	budova s číslem popisným	{3146}	Židenice	582786	\N	\N	\N	\N
19445661	budova s číslem popisným	{3147}	Židenice	582786	\N	\N	\N	\N
19445695	budova s číslem popisným	{3150}	Židenice	582786	\N	\N	\N	\N
19445717	budova s číslem popisným	{3152}	Židenice	582786	\N	\N	\N	\N
19445725	budova s číslem popisným	{3153}	Židenice	582786	\N	\N	\N	\N
19445733	budova s číslem popisným	{3154}	Židenice	582786	\N	\N	\N	\N
19445741	budova s číslem popisným	{3155}	Židenice	582786	\N	\N	\N	\N
19445750	budova s číslem popisným	{3156}	Židenice	582786	\N	\N	\N	\N
19445768	budova s číslem popisným	{3157}	Židenice	582786	\N	\N	\N	\N
19445776	budova s číslem popisným	{3158}	Židenice	582786	\N	\N	\N	\N
19445784	budova s číslem popisným	{3159}	Židenice	582786	\N	\N	\N	\N
19445792	budova s číslem popisným	{3160}	Židenice	582786	\N	\N	\N	\N
19445814	budova s číslem popisným	{3162}	Židenice	582786	\N	\N	\N	\N
19445822	budova s číslem popisným	{3163}	Židenice	582786	\N	\N	\N	\N
19445831	budova s číslem popisným	{3164}	Židenice	582786	\N	\N	\N	\N
19445849	budova s číslem popisným	{3165}	Židenice	582786	\N	\N	\N	\N
19445857	budova s číslem popisným	{4377}	Židenice	582786	\N	\N	\N	\N
19445865	budova s číslem popisným	{3167}	Židenice	582786	\N	\N	\N	\N
19445873	budova s číslem popisným	{3168}	Židenice	582786	\N	\N	\N	\N
19445881	budova s číslem popisným	{3169}	Židenice	582786	\N	\N	\N	\N
19445890	budova s číslem popisným	{3170}	Židenice	582786	\N	\N	\N	\N
19445903	budova s číslem popisným	{3171}	Židenice	582786	\N	\N	\N	\N
19445911	budova s číslem popisným	{3172}	Židenice	582786	\N	\N	\N	\N
19445920	budova s číslem popisným	{3173}	Židenice	582786	\N	\N	\N	\N
19445938	budova s číslem popisným	{3174}	Židenice	582786	\N	\N	\N	\N
19445946	budova s číslem popisným	{3175}	Židenice	582786	\N	\N	\N	\N
19445954	budova s číslem popisným	{3176}	Židenice	582786	\N	\N	\N	\N
19445962	budova s číslem popisným	{3177}	Židenice	582786	\N	\N	\N	\N
19445971	budova s číslem popisným	{3178}	Židenice	582786	\N	\N	\N	\N
19445989	budova s číslem popisným	{3179}	Židenice	582786	\N	\N	\N	\N
19445997	budova s číslem popisným	{3180}	Židenice	582786	\N	\N	\N	\N
19446004	budova s číslem popisným	{3181}	Židenice	582786	\N	\N	\N	\N
19446021	budova s číslem popisným	{3183}	Židenice	582786	\N	\N	\N	\N
19446039	budova s číslem popisným	{4359}	Židenice	582786	\N	\N	\N	\N
19446047	budova s číslem popisným	{3185}	Židenice	582786	\N	\N	\N	\N
19446055	budova s číslem popisným	{3186}	Židenice	582786	\N	\N	\N	\N
19446071	budova s číslem popisným	{3188}	Židenice	582786	\N	\N	\N	\N
19446080	budova s číslem popisným	{3189}	Židenice	582786	\N	\N	\N	\N
19446098	budova s číslem popisným	{3191}	Židenice	582786	\N	\N	\N	\N
19446101	budova s číslem popisným	{3192}	Židenice	582786	\N	\N	\N	\N
19446136	budova s číslem popisným	{3195}	Židenice	582786	\N	\N	\N	\N
19446144	budova s číslem popisným	{3196}	Židenice	582786	\N	\N	\N	\N
19446152	budova s číslem popisným	{3198}	Židenice	582786	\N	\N	\N	\N
19446161	budova s číslem popisným	{3199}	Židenice	582786	\N	\N	\N	\N
19446179	budova s číslem popisným	{3200}	Židenice	582786	\N	\N	\N	\N
19446187	budova s číslem popisným	{3201}	Židenice	582786	\N	\N	\N	\N
19446195	budova s číslem popisným	{3202}	Židenice	582786	\N	\N	\N	\N
19446209	budova s číslem popisným	{3203}	Židenice	582786	\N	\N	\N	\N
19446217	budova s číslem popisným	{3204}	Židenice	582786	\N	\N	\N	\N
19446225	budova s číslem popisným	{3205}	Židenice	582786	\N	\N	\N	\N
19446250	budova s číslem popisným	{3208}	Židenice	582786	\N	\N	\N	\N
19446276	budova s číslem popisným	{3210}	Židenice	582786	\N	\N	\N	\N
19446284	budova s číslem popisným	{3211}	Židenice	582786	\N	\N	\N	\N
19446292	budova s číslem popisným	{3212}	Židenice	582786	\N	\N	\N	\N
19446306	budova s číslem popisným	{3213}	Židenice	582786	\N	\N	\N	\N
19446314	budova s číslem popisným	{3214}	Židenice	582786	\N	\N	\N	\N
19446331	budova s číslem popisným	{3216}	Židenice	582786	\N	\N	\N	\N
19446349	budova s číslem popisným	{3217}	Židenice	582786	\N	\N	\N	\N
19446357	budova s číslem popisným	{3218}	Židenice	582786	\N	\N	\N	\N
19446365	budova s číslem popisným	{3219}	Židenice	582786	\N	\N	\N	\N
19446373	budova s číslem popisným	{3220}	Židenice	582786	\N	\N	\N	\N
19446390	budova s číslem popisným	{3222}	Židenice	582786	\N	\N	\N	\N
19446403	budova s číslem popisným	{3223}	Židenice	582786	\N	\N	\N	\N
19446411	budova s číslem popisným	{3224}	Židenice	582786	\N	\N	\N	\N
19446420	budova s číslem popisným	{3225}	Židenice	582786	\N	\N	\N	\N
19446438	budova s číslem popisným	{3226}	Židenice	582786	\N	\N	\N	\N
19446446	budova s číslem popisným	{3227}	Židenice	582786	\N	\N	\N	\N
19446454	budova s číslem popisným	{3228}	Židenice	582786	\N	\N	\N	\N
19446462	budova s číslem popisným	{3229}	Židenice	582786	\N	\N	\N	\N
19446471	budova s číslem popisným	{3230}	Židenice	582786	\N	\N	\N	\N
19446489	budova s číslem popisným	{3231}	Židenice	582786	\N	\N	\N	\N
19446497	budova s číslem popisným	{3232}	Židenice	582786	\N	\N	\N	\N
19446501	budova s číslem popisným	{3233}	Židenice	582786	\N	\N	\N	\N
19446527	budova s číslem popisným	{3235}	Židenice	582786	\N	\N	\N	\N
19446543	budova s číslem popisným	{3237}	Židenice	582786	\N	\N	\N	\N
19446551	budova s číslem popisným	{3238}	Židenice	582786	\N	\N	\N	\N
19446560	budova s číslem popisným	{3239}	Židenice	582786	\N	\N	\N	\N
19446578	budova s číslem popisným	{3240}	Židenice	582786	\N	\N	\N	\N
19446586	budova s číslem popisným	{3241}	Židenice	582786	\N	\N	\N	\N
19446594	budova s číslem popisným	{3242}	Židenice	582786	\N	\N	\N	\N
19446608	budova s číslem popisným	{3243}	Židenice	582786	\N	\N	\N	\N
19446616	budova s číslem popisným	{4457}	Židenice	582786	\N	\N	\N	\N
19446624	budova s číslem popisným	{3245}	Židenice	582786	\N	\N	\N	\N
19446632	budova s číslem popisným	{3246}	Židenice	582786	\N	\N	\N	\N
19446659	budova s číslem popisným	{3248}	Židenice	582786	\N	\N	\N	\N
19446667	budova s číslem popisným	{3249}	Židenice	582786	\N	\N	\N	\N
19446675	budova s číslem popisným	{3250}	Židenice	582786	\N	\N	\N	\N
19446683	budova s číslem popisným	{3251}	Židenice	582786	\N	\N	\N	\N
19446691	budova s číslem popisným	{3252}	Židenice	582786	\N	\N	\N	\N
19446705	budova s číslem popisným	{3253}	Židenice	582786	\N	\N	\N	\N
19446713	budova s číslem popisným	{3254}	Židenice	582786	\N	\N	\N	\N
19446721	budova s číslem popisným	{3255}	Židenice	582786	\N	\N	\N	\N
19446730	budova s číslem popisným	{3256}	Židenice	582786	\N	\N	\N	\N
19446748	budova s číslem popisným	{3257}	Židenice	582786	\N	\N	\N	\N
19446756	budova s číslem popisným	{3258}	Židenice	582786	\N	\N	\N	\N
19446764	budova s číslem popisným	{3259}	Židenice	582786	\N	\N	\N	\N
19446781	budova s číslem popisným	{3261}	Židenice	582786	\N	\N	\N	\N
19446799	budova s číslem popisným	{3262}	Židenice	582786	\N	\N	\N	\N
19446802	budova s číslem popisným	{3263}	Židenice	582786	\N	\N	\N	\N
19446811	budova s číslem popisným	{3264}	Židenice	582786	\N	\N	\N	\N
19446829	budova s číslem popisným	{3265}	Židenice	582786	\N	\N	\N	\N
19446837	budova s číslem popisným	{4452}	Židenice	582786	\N	\N	\N	\N
19446845	budova s číslem popisným	{3268}	Židenice	582786	\N	\N	\N	\N
19446853	budova s číslem popisným	{3269}	Židenice	582786	\N	\N	\N	\N
19446861	budova s číslem popisným	{3270}	Židenice	582786	\N	\N	\N	\N
19446870	budova s číslem popisným	{3271}	Židenice	582786	\N	\N	\N	\N
19446888	budova s číslem popisným	{3272}	Židenice	582786	\N	\N	\N	\N
19446900	budova s číslem popisným	{3274}	Židenice	582786	\N	\N	\N	\N
19446918	budova s číslem popisným	{3275}	Židenice	582786	\N	\N	\N	\N
19446951	budova s číslem popisným	{3279}	Židenice	582786	\N	\N	\N	\N
19446969	budova s číslem popisným	{3280}	Židenice	582786	\N	\N	\N	\N
19446977	budova s číslem popisným	{3281}	Židenice	582786	\N	\N	\N	\N
19446985	budova s číslem popisným	{3282}	Židenice	582786	\N	\N	\N	\N
19446993	budova s číslem popisným	{3283}	Židenice	582786	\N	\N	\N	\N
19447001	budova s číslem popisným	{3284}	Židenice	582786	\N	\N	\N	\N
19447019	budova s číslem popisným	{3285}	Židenice	582786	\N	\N	\N	\N
19447027	budova s číslem popisným	{3286}	Židenice	582786	\N	\N	\N	\N
19447035	budova s číslem popisným	{3287}	Židenice	582786	\N	\N	\N	\N
19447043	budova s číslem popisným	{3288}	Židenice	582786	\N	\N	\N	\N
19447051	budova s číslem popisným	{3289}	Židenice	582786	\N	\N	\N	\N
19447060	budova s číslem popisným	{3290}	Židenice	582786	\N	\N	\N	\N
19447078	budova s číslem popisným	{3291}	Židenice	582786	\N	\N	\N	\N
19447086	budova s číslem popisným	{3292}	Židenice	582786	\N	\N	\N	\N
19447094	budova s číslem popisným	{3293}	Židenice	582786	\N	\N	\N	\N
19447108	budova s číslem popisným	{3294}	Židenice	582786	\N	\N	\N	\N
19447116	budova s číslem popisným	{3295}	Židenice	582786	\N	\N	\N	\N
19447124	budova s číslem popisným	{3296}	Židenice	582786	\N	\N	\N	\N
19447132	budova s číslem popisným	{3297}	Židenice	582786	\N	\N	\N	\N
19447141	budova s číslem popisným	{3298}	Židenice	582786	\N	\N	\N	\N
19447159	budova s číslem popisným	{3299}	Židenice	582786	\N	\N	\N	\N
19447167	budova s číslem popisným	{3300}	Židenice	582786	\N	\N	\N	\N
19447175	budova s číslem popisným	{3301}	Židenice	582786	\N	\N	\N	\N
19447183	budova s číslem popisným	{3302}	Židenice	582786	\N	\N	\N	\N
19447191	budova s číslem popisným	{3303}	Židenice	582786	\N	\N	\N	\N
19447205	budova s číslem popisným	{3304}	Židenice	582786	\N	\N	\N	\N
19447213	budova s číslem popisným	{3305}	Židenice	582786	\N	\N	\N	\N
19447221	budova s číslem popisným	{3306}	Židenice	582786	\N	\N	\N	\N
19447230	budova s číslem popisným	{3307}	Židenice	582786	\N	\N	\N	\N
19447248	budova s číslem popisným	{3309}	Židenice	582786	\N	\N	\N	\N
19447256	budova s číslem popisným	{3310}	Židenice	582786	\N	\N	\N	\N
19447272	budova s číslem popisným	{3312}	Židenice	582786	\N	\N	\N	\N
19447281	budova s číslem popisným	{3313}	Židenice	582786	\N	\N	\N	\N
19447299	budova s číslem popisným	{3314}	Židenice	582786	\N	\N	\N	\N
19447302	budova s číslem popisným	{3315}	Židenice	582786	\N	\N	\N	\N
19447311	budova s číslem popisným	{3316}	Židenice	582786	\N	\N	\N	\N
19447329	budova s číslem popisným	{3317}	Židenice	582786	\N	\N	\N	\N
19447337	budova s číslem popisným	{3318}	Židenice	582786	\N	\N	\N	\N
19447353	budova s číslem popisným	{3321}	Židenice	582786	\N	\N	\N	\N
19447361	budova s číslem popisným	{3322}	Židenice	582786	\N	\N	\N	\N
19447370	budova s číslem popisným	{3323}	Židenice	582786	\N	\N	\N	\N
19447388	budova s číslem popisným	{3324}	Židenice	582786	\N	\N	\N	\N
19447396	budova s číslem popisným	{3325}	Židenice	582786	\N	\N	\N	\N
19447400	budova s číslem popisným	{3326}	Židenice	582786	\N	\N	\N	\N
19447418	budova s číslem popisným	{3327}	Židenice	582786	\N	\N	\N	\N
19447426	budova s číslem popisným	{3328}	Židenice	582786	\N	\N	\N	\N
19447442	budova s číslem popisným	{3330}	Židenice	582786	\N	\N	\N	\N
19447451	budova s číslem popisným	{3331}	Židenice	582786	\N	\N	\N	\N
19447469	budova s číslem popisným	{3332}	Židenice	582786	\N	\N	\N	\N
19447477	budova s číslem popisným	{3334}	Židenice	582786	\N	\N	\N	\N
19447485	budova s číslem popisným	{3335}	Židenice	582786	\N	\N	\N	\N
19447493	budova s číslem popisným	{3336}	Židenice	582786	\N	\N	\N	\N
19447507	budova s číslem popisným	{3337}	Židenice	582786	\N	\N	\N	\N
19447515	budova s číslem popisným	{3338}	Židenice	582786	\N	\N	\N	\N
19447523	budova s číslem popisným	{3339}	Židenice	582786	\N	\N	\N	\N
19447531	budova s číslem popisným	{3343}	Židenice	582786	\N	\N	\N	\N
19447540	budova s číslem popisným	{3344}	Židenice	582786	\N	\N	\N	\N
19447558	budova s číslem popisným	{3345}	Židenice	582786	\N	\N	\N	\N
19447566	budova s číslem popisným	{3346}	Židenice	582786	\N	\N	\N	\N
19447574	budova s číslem popisným	{3347}	Židenice	582786	\N	\N	\N	\N
19447582	budova s číslem popisným	{3348}	Židenice	582786	\N	\N	\N	\N
19447591	budova s číslem popisným	{3349}	Židenice	582786	\N	\N	\N	\N
19447604	budova s číslem popisným	{3350}	Židenice	582786	\N	\N	\N	\N
19447612	budova s číslem popisným	{3351}	Židenice	582786	\N	\N	\N	\N
19447621	budova s číslem popisným	{3352}	Židenice	582786	\N	\N	\N	\N
19447639	budova s číslem popisným	{3353}	Židenice	582786	\N	\N	\N	\N
19447647	budova s číslem popisným	{3354}	Židenice	582786	\N	\N	\N	\N
19447655	budova s číslem popisným	{3355}	Židenice	582786	\N	\N	\N	\N
19447663	budova s číslem popisným	{3356}	Židenice	582786	\N	\N	\N	\N
19447671	budova s číslem popisným	{3357}	Židenice	582786	\N	\N	\N	\N
19447680	budova s číslem popisným	{3358}	Židenice	582786	\N	\N	\N	\N
19447698	budova s číslem popisným	{3359}	Židenice	582786	\N	\N	\N	\N
19447701	budova s číslem popisným	{3360}	Židenice	582786	\N	\N	\N	\N
19447710	budova s číslem popisným	{3361}	Židenice	582786	\N	\N	\N	\N
19447728	budova s číslem popisným	{3363}	Židenice	582786	\N	\N	\N	\N
19447736	budova s číslem popisným	{3364}	Židenice	582786	\N	\N	\N	\N
19447744	budova s číslem popisným	{3365}	Židenice	582786	\N	\N	\N	\N
19447752	budova s číslem popisným	{3366}	Židenice	582786	\N	\N	\N	\N
19447761	budova s číslem popisným	{3367}	Židenice	582786	\N	\N	\N	\N
19447779	budova s číslem popisným	{3368}	Židenice	582786	\N	\N	\N	\N
19447795	budova s číslem popisným	{3370}	Židenice	582786	\N	\N	\N	\N
19447817	budova s číslem popisným	{3373}	Židenice	582786	\N	\N	\N	\N
19447825	budova s číslem popisným	{3374}	Židenice	582786	\N	\N	\N	\N
19447833	budova s číslem popisným	{3382}	Židenice	582786	\N	\N	\N	\N
19447841	budova s číslem popisným	{3384}	Židenice	582786	\N	\N	\N	\N
19447850	budova s číslem popisným	{3385}	Židenice	582786	\N	\N	\N	\N
19447868	budova s číslem popisným	{3387}	Židenice	582786	\N	\N	\N	\N
19447876	budova s číslem popisným	{3388}	Židenice	582786	\N	\N	\N	\N
19447884	budova s číslem popisným	{3389}	Židenice	582786	\N	\N	\N	\N
19447892	budova s číslem popisným	{3390}	Židenice	582786	\N	\N	\N	\N
19447906	budova s číslem popisným	{3393}	Židenice	582786	\N	\N	\N	\N
19447914	budova s číslem popisným	{3398}	Židenice	582786	\N	\N	\N	\N
19447922	budova s číslem popisným	{3399}	Židenice	582786	\N	\N	\N	\N
19447931	budova s číslem popisným	{3400}	Židenice	582786	\N	\N	\N	\N
19447949	budova s číslem popisným	{3403}	Židenice	582786	\N	\N	\N	\N
19447957	budova s číslem popisným	{3404}	Židenice	582786	\N	\N	\N	\N
19447965	budova s číslem popisným	{3405}	Židenice	582786	\N	\N	\N	\N
19447973	budova s číslem popisným	{3406}	Židenice	582786	\N	\N	\N	\N
19447981	budova s číslem popisným	{3407}	Židenice	582786	\N	\N	\N	\N
19447990	budova s číslem popisným	{3408}	Židenice	582786	\N	\N	\N	\N
19448007	budova s číslem popisným	{3409}	Židenice	582786	\N	\N	\N	\N
19448015	budova s číslem popisným	{3410}	Židenice	582786	\N	\N	\N	\N
19448023	budova s číslem popisným	{3411}	Židenice	582786	\N	\N	\N	\N
19448031	budova s číslem popisným	{3412}	Židenice	582786	\N	\N	\N	\N
19448040	budova s číslem popisným	{3413}	Židenice	582786	\N	\N	\N	\N
19448074	budova s číslem popisným	{3416}	Židenice	582786	\N	\N	\N	\N
19448082	budova s číslem popisným	{3417}	Židenice	582786	\N	\N	\N	\N
19448091	budova s číslem popisným	{3418}	Židenice	582786	\N	\N	\N	\N
19448104	budova s číslem popisným	{3419}	Židenice	582786	\N	\N	\N	\N
19448121	budova s číslem popisným	{3428}	Židenice	582786	\N	\N	\N	\N
19448139	budova s číslem popisným	{3429}	Židenice	582786	\N	\N	\N	\N
19448147	budova s číslem popisným	{3430}	Židenice	582786	\N	\N	\N	\N
19448155	budova s číslem popisným	{3431}	Židenice	582786	\N	\N	\N	\N
19448163	budova s číslem popisným	{3432}	Židenice	582786	\N	\N	\N	\N
19448171	budova s číslem popisným	{3433}	Židenice	582786	\N	\N	\N	\N
19448180	budova s číslem popisným	{3434}	Židenice	582786	\N	\N	\N	\N
19448198	budova s číslem popisným	{3435}	Židenice	582786	\N	\N	\N	\N
19448201	budova s číslem popisným	{3436}	Židenice	582786	\N	\N	\N	\N
19448210	budova s číslem popisným	{3437}	Židenice	582786	\N	\N	\N	\N
19448228	budova s číslem popisným	{3440}	Židenice	582786	\N	\N	\N	\N
19448236	budova s číslem popisným	{3445}	Židenice	582786	\N	\N	\N	\N
19448244	budova s číslem popisným	{3446}	Židenice	582786	\N	\N	\N	\N
19448252	budova s číslem popisným	{3447}	Židenice	582786	\N	\N	\N	\N
19448279	budova s číslem popisným	{3449}	Židenice	582786	\N	\N	\N	\N
19448287	budova s číslem popisným	{3450}	Židenice	582786	\N	\N	\N	\N
19448295	budova s číslem popisným	{3451}	Židenice	582786	\N	\N	\N	\N
19448309	budova s číslem popisným	{3453}	Židenice	582786	\N	\N	\N	\N
19448317	budova s číslem popisným	{3454}	Židenice	582786	\N	\N	\N	\N
19448325	budova s číslem popisným	{3455}	Židenice	582786	\N	\N	\N	\N
19448333	budova s číslem popisným	{3456}	Židenice	582786	\N	\N	\N	\N
19448341	budova s číslem popisným	{3457}	Židenice	582786	\N	\N	\N	\N
19448350	budova s číslem popisným	{3458}	Židenice	582786	\N	\N	\N	\N
19448368	budova s číslem popisným	{3459}	Židenice	582786	\N	\N	\N	\N
19448376	budova s číslem popisným	{3460}	Židenice	582786	\N	\N	\N	\N
19448384	budova s číslem popisným	{3461}	Židenice	582786	\N	\N	\N	\N
19448392	budova s číslem popisným	{3462}	Židenice	582786	\N	\N	\N	\N
19448406	budova s číslem popisným	{3463}	Židenice	582786	\N	\N	\N	\N
19448414	budova s číslem popisným	{3464}	Židenice	582786	\N	\N	\N	\N
19448422	budova s číslem popisným	{3465}	Židenice	582786	\N	\N	\N	\N
19448431	budova s číslem popisným	{3466}	Židenice	582786	\N	\N	\N	\N
19448449	budova s číslem popisným	{3467}	Židenice	582786	\N	\N	\N	\N
19448457	budova s číslem popisným	{3468}	Židenice	582786	\N	\N	\N	\N
19448465	budova s číslem popisným	{3469}	Židenice	582786	\N	\N	\N	\N
19448473	budova s číslem popisným	{3470}	Židenice	582786	\N	\N	\N	\N
19448481	budova s číslem popisným	{3471}	Židenice	582786	\N	\N	\N	\N
19448490	budova s číslem popisným	{3472}	Židenice	582786	\N	\N	\N	\N
19448503	budova s číslem popisným	{3473}	Židenice	582786	\N	\N	\N	\N
19448511	budova s číslem popisným	{3474}	Židenice	582786	\N	\N	\N	\N
19448520	budova s číslem popisným	{3475}	Židenice	582786	\N	\N	\N	\N
19448538	budova s číslem popisným	{3476}	Židenice	582786	\N	\N	\N	\N
19448546	budova s číslem popisným	{3477}	Židenice	582786	\N	\N	\N	\N
19448554	budova s číslem popisným	{3478}	Židenice	582786	\N	\N	\N	\N
19448562	budova s číslem popisným	{3480}	Židenice	582786	\N	\N	\N	\N
19448571	budova s číslem popisným	{3481}	Židenice	582786	\N	\N	\N	\N
19448589	budova s číslem popisným	{3482}	Židenice	582786	\N	\N	\N	\N
19448597	budova s číslem popisným	{3483}	Židenice	582786	\N	\N	\N	\N
19448601	budova s číslem popisným	{3485}	Židenice	582786	\N	\N	\N	\N
19448619	budova s číslem popisným	{3486}	Židenice	582786	\N	\N	\N	\N
19448627	budova s číslem popisným	{3487}	Židenice	582786	\N	\N	\N	\N
19448635	budova s číslem popisným	{3488}	Židenice	582786	\N	\N	\N	\N
19448651	budova s číslem popisným	{3489,3490,3492}	Židenice	582786	\N	\N	\N	\N
19448660	budova s číslem popisným	{3491}	Židenice	582786	\N	\N	\N	\N
19448686	budova s číslem popisným	{3493}	Židenice	582786	\N	\N	\N	\N
19448694	budova s číslem popisným	{3494}	Židenice	582786	\N	\N	\N	\N
19448708	budova s číslem popisným	{3495}	Židenice	582786	\N	\N	\N	\N
19448716	budova s číslem popisným	{3496}	Židenice	582786	\N	\N	\N	\N
19448724	budova s číslem popisným	{3497}	Židenice	582786	\N	\N	\N	\N
19448732	budova s číslem popisným	{3498}	Židenice	582786	\N	\N	\N	\N
19448741	budova s číslem popisným	{3499}	Židenice	582786	\N	\N	\N	\N
19448759	budova s číslem popisným	{3500}	Židenice	582786	\N	\N	\N	\N
19448767	budova s číslem popisným	{3501}	Židenice	582786	\N	\N	\N	\N
19448775	budova s číslem popisným	{3502}	Židenice	582786	\N	\N	\N	\N
19448783	budova s číslem popisným	{3503}	Židenice	582786	\N	\N	\N	\N
19448791	budova s číslem popisným	{3504}	Židenice	582786	\N	\N	\N	\N
19448813	budova s číslem popisným	{3507}	Židenice	582786	\N	\N	\N	\N
19448821	budova s číslem popisným	{3510}	Židenice	582786	\N	\N	\N	\N
19448830	budova s číslem popisným	{3511}	Židenice	582786	\N	\N	\N	\N
19448848	budova s číslem popisným	{3512}	Židenice	582786	\N	\N	\N	\N
19448856	budova s číslem popisným	{3513}	Židenice	582786	\N	\N	\N	\N
19448864	budova s číslem popisným	{3514}	Židenice	582786	\N	\N	\N	\N
19448872	budova s číslem popisným	{3515}	Židenice	582786	\N	\N	\N	\N
19448881	budova s číslem popisným	{3516}	Židenice	582786	\N	\N	\N	\N
19448899	budova s číslem popisným	{3517}	Židenice	582786	\N	\N	\N	\N
19448902	budova s číslem popisným	{3518}	Židenice	582786	\N	\N	\N	\N
19448911	budova s číslem popisným	{3519}	Židenice	582786	\N	\N	\N	\N
19448929	budova s číslem popisným	{3520}	Židenice	582786	\N	\N	\N	\N
19448937	budova s číslem popisným	{3521}	Židenice	582786	\N	\N	\N	\N
19448961	budova s číslem popisným	{3524}	Židenice	582786	\N	\N	\N	\N
19448970	budova s číslem popisným	{3525}	Židenice	582786	\N	\N	\N	\N
19448988	budova s číslem popisným	{3526}	Židenice	582786	\N	\N	\N	\N
19448996	budova s číslem popisným	{3527}	Židenice	582786	\N	\N	\N	\N
19449003	budova s číslem popisným	{3528}	Židenice	582786	\N	\N	\N	\N
19449011	budova s číslem popisným	{3529}	Židenice	582786	\N	\N	\N	\N
19449020	budova s číslem popisným	{3530}	Židenice	582786	\N	\N	\N	\N
19449038	budova s číslem popisným	{3531}	Židenice	582786	\N	\N	\N	\N
19449046	budova s číslem popisným	{3532}	Židenice	582786	\N	\N	\N	\N
19449054	budova s číslem popisným	{3533}	Židenice	582786	\N	\N	\N	\N
19449119	budova s číslem popisným	{3539}	Židenice	582786	\N	\N	\N	\N
19449127	budova s číslem popisným	{3540}	Židenice	582786	\N	\N	\N	\N
19449135	budova s číslem popisným	{3541}	Židenice	582786	\N	\N	\N	\N
19449143	budova s číslem popisným	{3542}	Židenice	582786	\N	\N	\N	\N
19449151	budova s číslem popisným	{3543}	Židenice	582786	\N	\N	\N	\N
19449160	budova s číslem popisným	{3544}	Židenice	582786	\N	\N	\N	\N
19449178	budova s číslem popisným	{3545}	Židenice	582786	\N	\N	\N	\N
19449186	budova s číslem popisným	{3546}	Židenice	582786	\N	\N	\N	\N
19449194	budova s číslem popisným	{3547}	Židenice	582786	\N	\N	\N	\N
19449208	budova s číslem popisným	{3548}	Židenice	582786	\N	\N	\N	\N
19449224	budova s číslem popisným	{3550}	Židenice	582786	\N	\N	\N	\N
19449232	budova s číslem popisným	{3551}	Židenice	582786	\N	\N	\N	\N
19449241	budova s číslem popisným	{3552}	Židenice	582786	\N	\N	\N	\N
19449259	budova s číslem popisným	{3553}	Židenice	582786	\N	\N	\N	\N
19449267	budova s číslem popisným	{3554}	Židenice	582786	\N	\N	\N	\N
19449275	budova s číslem popisným	{3555}	Židenice	582786	\N	\N	\N	\N
19449283	budova s číslem popisným	{3556}	Židenice	582786	\N	\N	\N	\N
19449291	budova s číslem popisným	{3557}	Židenice	582786	\N	\N	\N	\N
19449305	budova s číslem popisným	{3558}	Židenice	582786	\N	\N	\N	\N
19449313	budova s číslem popisným	{3559}	Židenice	582786	\N	\N	\N	\N
19449321	budova s číslem popisným	{3560}	Židenice	582786	\N	\N	\N	\N
19449330	budova s číslem popisným	{3561}	Židenice	582786	\N	\N	\N	\N
19449348	budova s číslem popisným	{3562}	Židenice	582786	\N	\N	\N	\N
19449356	budova s číslem popisným	{3563}	Židenice	582786	\N	\N	\N	\N
19449364	budova s číslem popisným	{3564}	Židenice	582786	\N	\N	\N	\N
19449372	budova s číslem popisným	{3565}	Židenice	582786	\N	\N	\N	\N
19449381	budova s číslem popisným	{3566}	Židenice	582786	\N	\N	\N	\N
19449399	budova s číslem popisným	{3567}	Židenice	582786	\N	\N	\N	\N
19449402	budova s číslem popisným	{3568}	Židenice	582786	\N	\N	\N	\N
19449411	budova s číslem popisným	{3569}	Židenice	582786	\N	\N	\N	\N
19449429	budova s číslem popisným	{3570}	Židenice	582786	\N	\N	\N	\N
19449437	budova s číslem popisným	{3571}	Židenice	582786	\N	\N	\N	\N
19449445	budova s číslem popisným	{3572}	Židenice	582786	\N	\N	\N	\N
19449470	budova s číslem popisným	{3575}	Židenice	582786	\N	\N	\N	\N
19449488	budova s číslem popisným	{3576}	Židenice	582786	\N	\N	\N	\N
19449496	budova s číslem popisným	{3577}	Židenice	582786	\N	\N	\N	\N
19449500	budova s číslem popisným	{3578}	Židenice	582786	\N	\N	\N	\N
19449518	budova s číslem popisným	{3579}	Židenice	582786	\N	\N	\N	\N
19449526	budova s číslem popisným	{3580}	Židenice	582786	\N	\N	\N	\N
19449534	budova s číslem popisným	{3581}	Židenice	582786	\N	\N	\N	\N
19449542	budova s číslem popisným	{3582}	Židenice	582786	\N	\N	\N	\N
19449551	budova s číslem popisným	{3583}	Židenice	582786	\N	\N	\N	\N
19449569	budova s číslem popisným	{3584}	Židenice	582786	\N	\N	\N	\N
19449577	budova s číslem popisným	{3585}	Židenice	582786	\N	\N	\N	\N
19449585	budova s číslem popisným	{3587}	Židenice	582786	\N	\N	\N	\N
19449593	budova s číslem popisným	{3588}	Židenice	582786	\N	\N	\N	\N
19449607	budova s číslem popisným	{3589}	Židenice	582786	\N	\N	\N	\N
19449615	budova s číslem popisným	{3590}	Židenice	582786	\N	\N	\N	\N
19449623	budova s číslem popisným	{3591}	Židenice	582786	\N	\N	\N	\N
19449640	budova s číslem popisným	{3593}	Židenice	582786	\N	\N	\N	\N
19449658	budova s číslem popisným	{3594}	Židenice	582786	\N	\N	\N	\N
19449666	budova s číslem popisným	{3595}	Židenice	582786	\N	\N	\N	\N
19449674	budova s číslem popisným	{3596}	Židenice	582786	\N	\N	\N	\N
19449682	budova s číslem popisným	{3597}	Židenice	582786	\N	\N	\N	\N
19449712	budova s číslem popisným	{3600}	Židenice	582786	\N	\N	\N	\N
19449721	budova s číslem popisným	{3601}	Židenice	582786	\N	\N	\N	\N
19449739	budova s číslem popisným	{3602}	Židenice	582786	\N	\N	\N	\N
19449747	budova s číslem popisným	{3603}	Židenice	582786	\N	\N	\N	\N
19449755	budova s číslem popisným	{3604}	Židenice	582786	\N	\N	\N	\N
19449763	budova s číslem popisným	{3605}	Židenice	582786	\N	\N	\N	\N
19449771	budova s číslem popisným	{3606}	Židenice	582786	\N	\N	\N	\N
19449780	budova s číslem popisným	{3607}	Židenice	582786	\N	\N	\N	\N
19449798	budova s číslem popisným	{3608}	Židenice	582786	\N	\N	\N	\N
19449801	budova s číslem popisným	{3609}	Židenice	582786	\N	\N	\N	\N
19449810	budova s číslem popisným	{3610}	Židenice	582786	\N	\N	\N	\N
19449828	budova s číslem popisným	{3611}	Židenice	582786	\N	\N	\N	\N
19449844	budova s číslem popisným	{3613}	Židenice	582786	\N	\N	\N	\N
19449852	budova s číslem popisným	{3614}	Židenice	582786	\N	\N	\N	\N
19449861	budova s číslem popisným	{3615}	Židenice	582786	\N	\N	\N	\N
19449879	budova s číslem popisným	{3616}	Židenice	582786	\N	\N	\N	\N
19449887	budova s číslem popisným	{3617}	Židenice	582786	\N	\N	\N	\N
19449895	budova s číslem popisným	{3618}	Židenice	582786	\N	\N	\N	\N
19449909	budova s číslem popisným	{3619}	Židenice	582786	\N	\N	\N	\N
19449917	budova s číslem popisným	{3620}	Židenice	582786	\N	\N	\N	\N
19449925	budova s číslem popisným	{3621}	Židenice	582786	\N	\N	\N	\N
19449933	budova s číslem popisným	{3622}	Židenice	582786	\N	\N	\N	\N
19449941	budova s číslem popisným	{3623}	Židenice	582786	\N	\N	\N	\N
19449950	budova s číslem popisným	{3624}	Židenice	582786	\N	\N	\N	\N
19449968	budova s číslem popisným	{3625}	Židenice	582786	\N	\N	\N	\N
19449976	budova s číslem popisným	{3626}	Židenice	582786	\N	\N	\N	\N
19449984	budova s číslem popisným	{3627}	Židenice	582786	\N	\N	\N	\N
19449992	budova s číslem popisným	{3628}	Židenice	582786	\N	\N	\N	\N
19450001	budova s číslem popisným	{3629}	Židenice	582786	\N	\N	\N	\N
19450010	budova s číslem popisným	{3631}	Židenice	582786	\N	\N	\N	\N
19450028	budova s číslem popisným	{3632}	Židenice	582786	\N	\N	\N	\N
19450036	budova s číslem popisným	{3633}	Židenice	582786	\N	\N	\N	\N
19450044	budova s číslem popisným	{3634}	Židenice	582786	\N	\N	\N	\N
19450052	budova s číslem popisným	{3635}	Židenice	582786	\N	\N	\N	\N
19450061	budova s číslem popisným	{3636}	Židenice	582786	\N	\N	\N	\N
19450079	budova s číslem popisným	{3637}	Židenice	582786	\N	\N	\N	\N
19450087	budova s číslem popisným	{3638}	Židenice	582786	\N	\N	\N	\N
19450095	budova s číslem popisným	{3639}	Židenice	582786	\N	\N	\N	\N
19450109	budova s číslem popisným	{3640}	Židenice	582786	\N	\N	\N	\N
19450117	budova s číslem popisným	{3641}	Židenice	582786	\N	\N	\N	\N
19450125	budova s číslem popisným	{3642}	Židenice	582786	\N	\N	\N	\N
19450133	budova s číslem popisným	{3643}	Židenice	582786	\N	\N	\N	\N
19450141	budova s číslem popisným	{3644}	Židenice	582786	\N	\N	\N	\N
19450150	budova s číslem popisným	{3645}	Židenice	582786	\N	\N	\N	\N
19450168	budova s číslem popisným	{3646}	Židenice	582786	\N	\N	\N	\N
19450176	budova s číslem popisným	{3647}	Židenice	582786	\N	\N	\N	\N
19450184	budova s číslem popisným	{3648}	Židenice	582786	\N	\N	\N	\N
19450192	budova s číslem popisným	{3649}	Židenice	582786	\N	\N	\N	\N
19450206	budova s číslem popisným	{3650}	Židenice	582786	\N	\N	\N	\N
19450214	budova s číslem popisným	{3651}	Židenice	582786	\N	\N	\N	\N
19450222	budova s číslem popisným	{3652}	Židenice	582786	\N	\N	\N	\N
19450249	budova s číslem popisným	{3661}	Židenice	582786	\N	\N	\N	\N
19450257	budova s číslem popisným	{3662}	Židenice	582786	\N	\N	\N	\N
19450265	budova s číslem popisným	{3663}	Židenice	582786	\N	\N	\N	\N
19450273	budova s číslem popisným	{3664}	Židenice	582786	\N	\N	\N	\N
19450281	budova s číslem popisným	{3673}	Židenice	582786	\N	\N	\N	\N
19450290	budova s číslem popisným	{3674}	Židenice	582786	\N	\N	\N	\N
19450303	budova s číslem popisným	{3675}	Židenice	582786	\N	\N	\N	\N
19450320	budova s číslem popisným	{3677}	Židenice	582786	\N	\N	\N	\N
19450338	budova s číslem popisným	{3678}	Židenice	582786	\N	\N	\N	\N
19450346	budova s číslem popisným	{3679}	Židenice	582786	\N	\N	\N	\N
19450362	budova s číslem popisným	{3681}	Židenice	582786	\N	\N	\N	\N
19450371	budova s číslem popisným	{3682}	Židenice	582786	\N	\N	\N	\N
19450389	budova s číslem popisným	{3683}	Židenice	582786	\N	\N	\N	\N
19450397	budova s číslem popisným	{3684}	Židenice	582786	\N	\N	\N	\N
19450401	budova s číslem popisným	{3685}	Židenice	582786	\N	\N	\N	\N
19450419	budova s číslem popisným	{3686,389}	Židenice	582786	\N	\N	\N	\N
19450427	budova s číslem popisným	{3687}	Židenice	582786	\N	\N	\N	\N
19450435	budova s číslem popisným	{3688}	Židenice	582786	\N	\N	\N	\N
19450443	budova s číslem popisným	{3689}	Židenice	582786	\N	\N	\N	\N
19450451	budova s číslem popisným	{3690}	Židenice	582786	\N	\N	\N	\N
19450460	budova s číslem popisným	{3691}	Židenice	582786	\N	\N	\N	\N
19450478	budova s číslem popisným	{3692}	Židenice	582786	\N	\N	\N	\N
19450486	budova s číslem popisným	{3693}	Židenice	582786	\N	\N	\N	\N
19450494	budova s číslem popisným	{3694}	Židenice	582786	\N	\N	\N	\N
19450508	budova s číslem popisným	{3695}	Židenice	582786	\N	\N	\N	\N
19450516	budova s číslem popisným	{3696}	Židenice	582786	\N	\N	\N	\N
19450524	budova s číslem popisným	{3697}	Židenice	582786	\N	\N	\N	\N
19450532	budova s číslem popisným	{3698}	Židenice	582786	\N	\N	\N	\N
19450567	budova s číslem popisným	{3699,3700,3701}	Židenice	582786	\N	\N	\N	\N
19450966	budova s číslem popisným	{3744}	Židenice	582786	\N	\N	\N	\N
19450974	budova s číslem popisným	{3745}	Židenice	582786	\N	\N	\N	\N
19450982	budova s číslem popisným	{3746}	Židenice	582786	\N	\N	\N	\N
19450991	budova s číslem popisným	{3747}	Židenice	582786	\N	\N	\N	\N
19451008	budova s číslem popisným	{3748}	Židenice	582786	\N	\N	\N	\N
19451016	budova s číslem popisným	{3749}	Židenice	582786	\N	\N	\N	\N
19451024	budova s číslem popisným	{3750,3751}	Židenice	582786	\N	\N	\N	\N
19451041	budova s číslem popisným	{3752,3753,3754}	Židenice	582786	\N	\N	\N	\N
19451075	budova s číslem popisným	{3755,3756,3757}	Židenice	582786	\N	\N	\N	\N
19451105	budova s číslem popisným	{3758}	Židenice	582786	\N	\N	\N	\N
19451113	budova s číslem popisným	{3759}	Židenice	582786	\N	\N	\N	\N
19451121	budova s číslem popisným	{3760}	Židenice	582786	\N	\N	\N	\N
19451130	budova s číslem popisným	{3761}	Židenice	582786	\N	\N	\N	\N
19451148	budova s číslem popisným	{3762}	Židenice	582786	\N	\N	\N	\N
19451156	budova s číslem popisným	{3763}	Židenice	582786	\N	\N	\N	\N
19451164	budova s číslem popisným	{3764}	Židenice	582786	\N	\N	\N	\N
19451172	budova s číslem popisným	{3765}	Židenice	582786	\N	\N	\N	\N
19451181	budova s číslem popisným	{3766,3767,3768}	Židenice	582786	\N	\N	\N	\N
19451211	budova s číslem popisným	{3769}	Židenice	582786	\N	\N	\N	\N
19451229	budova s číslem popisným	{3770}	Židenice	582786	\N	\N	\N	\N
19451237	budova s číslem popisným	{3771}	Židenice	582786	\N	\N	\N	\N
19451261	budova s číslem popisným	{3772,3773,3774}	Židenice	582786	\N	\N	\N	\N
19451270	budova s číslem popisným	{3775}	Židenice	582786	\N	\N	\N	\N
19451288	budova s číslem popisným	{3776}	Židenice	582786	\N	\N	\N	\N
19451296	budova s číslem popisným	{3777}	Židenice	582786	\N	\N	\N	\N
19451300	budova s číslem popisným	{3778}	Židenice	582786	\N	\N	\N	\N
19451318	budova s číslem popisným	{3779}	Židenice	582786	\N	\N	\N	\N
19451326	budova s číslem popisným	{3780,3781,3782}	Židenice	582786	\N	\N	\N	\N
19451351	budova s číslem popisným	{3783,3784,3785}	Židenice	582786	\N	\N	\N	\N
19451385	budova s číslem popisným	{3786,3787,3788}	Židenice	582786	\N	\N	\N	\N
19451431	budova s číslem popisným	{3789,3790,3791}	Židenice	582786	\N	\N	\N	\N
19451440	budova s číslem popisným	{3792,3793}	Židenice	582786	\N	\N	\N	\N
19451466	budova s číslem popisným	{3794}	Židenice	582786	\N	\N	\N	\N
19451474	budova s číslem popisným	{3795}	Židenice	582786	\N	\N	\N	\N
19451482	budova s číslem popisným	{3796}	Židenice	582786	\N	\N	\N	\N
19451491	budova s číslem popisným	{3797}	Židenice	582786	\N	\N	\N	\N
19451504	budova s číslem popisným	{3798}	Židenice	582786	\N	\N	\N	\N
19451512	budova s číslem popisným	{3799}	Židenice	582786	\N	\N	\N	\N
19451521	budova s číslem popisným	{3800}	Židenice	582786	\N	\N	\N	\N
19451539	budova s číslem popisným	{3801}	Židenice	582786	\N	\N	\N	\N
19451547	budova s číslem popisným	{3802}	Židenice	582786	\N	\N	\N	\N
19451555	budova s číslem popisným	{3803}	Židenice	582786	\N	\N	\N	\N
19451563	budova s číslem popisným	{3804}	Židenice	582786	\N	\N	\N	\N
19451571	budova s číslem popisným	{3805}	Židenice	582786	\N	\N	\N	\N
19451598	budova s číslem popisným	{3810}	Židenice	582786	\N	\N	\N	\N
19451601	budova s číslem popisným	{3811,3812,3813}	Židenice	582786	\N	\N	\N	\N
19451636	budova s číslem popisným	{3814,3815,3816}	Židenice	582786	\N	\N	\N	\N
19451661	budova s číslem popisným	{3817}	Židenice	582786	\N	\N	\N	\N
19451679	budova s číslem popisným	{3818}	Židenice	582786	\N	\N	\N	\N
19451687	budova s číslem popisným	{3819}	Židenice	582786	\N	\N	\N	\N
19451695	budova s číslem popisným	{3820}	Židenice	582786	\N	\N	\N	\N
19451709	budova s číslem popisným	{3821}	Židenice	582786	\N	\N	\N	\N
19451717	budova s číslem popisným	{3822}	Židenice	582786	\N	\N	\N	\N
19451725	budova s číslem popisným	{3823}	Židenice	582786	\N	\N	\N	\N
19451733	budova s číslem popisným	{3824}	Židenice	582786	\N	\N	\N	\N
19451741	budova s číslem popisným	{3825}	Židenice	582786	\N	\N	\N	\N
19451750	budova s číslem popisným	{3826}	Židenice	582786	\N	\N	\N	\N
19451768	budova s číslem popisným	{3827}	Židenice	582786	\N	\N	\N	\N
19451776	budova s číslem popisným	{3828}	Židenice	582786	\N	\N	\N	\N
19451784	budova s číslem popisným	{3829}	Židenice	582786	\N	\N	\N	\N
19451792	budova s číslem popisným	{3830}	Židenice	582786	\N	\N	\N	\N
19451806	budova s číslem popisným	{3831}	Židenice	582786	\N	\N	\N	\N
19451814	budova s číslem popisným	{3832}	Židenice	582786	\N	\N	\N	\N
19451822	budova s číslem popisným	{3833,3834}	Židenice	582786	\N	\N	\N	\N
19451849	budova s číslem popisným	{3835,3836}	Židenice	582786	\N	\N	\N	\N
19451865	budova s číslem popisným	{3837}	Židenice	582786	\N	\N	\N	\N
19451873	budova s číslem popisným	{3838}	Židenice	582786	\N	\N	\N	\N
19451881	budova s číslem popisným	{3839,384}	Židenice	582786	\N	\N	\N	\N
19451903	budova s číslem popisným	{3841,3842}	Židenice	582786	\N	\N	\N	\N
19451920	budova s číslem popisným	{3843}	Židenice	582786	\N	\N	\N	\N
19451938	budova s číslem popisným	{3844}	Židenice	582786	\N	\N	\N	\N
19451946	budova s číslem popisným	{3845}	Židenice	582786	\N	\N	\N	\N
19451962	budova s číslem popisným	{3846,3847}	Židenice	582786	\N	\N	\N	\N
19451971	budova s číslem popisným	{3848}	Židenice	582786	\N	\N	\N	\N
19451989	budova s číslem popisným	{3849}	Židenice	582786	\N	\N	\N	\N
19451997	budova s číslem popisným	{3850}	Židenice	582786	\N	\N	\N	\N
19452004	budova s číslem popisným	{3851}	Židenice	582786	\N	\N	\N	\N
19452071	budova s číslem popisným	{3855,3856,3857,3858,3859}	Židenice	582786	\N	\N	\N	\N
19452101	budova s číslem popisným	{3861,3862}	Židenice	582786	\N	\N	\N	\N
19452110	budova s číslem popisným	{3863}	Židenice	582786	\N	\N	\N	\N
19452136	budova s číslem popisným	{3865}	Židenice	582786	\N	\N	\N	\N
19452144	budova s číslem popisným	{3866}	Židenice	582786	\N	\N	\N	\N
19452152	budova s číslem popisným	{3867,3868,3869,3870}	Židenice	582786	\N	\N	\N	\N
19452209	budova s číslem popisným	{3873}	Židenice	582786	\N	\N	\N	\N
19452225	budova s číslem popisným	{3875,3876}	Židenice	582786	\N	\N	\N	\N
19452241	budova s číslem popisným	{3878}	Židenice	582786	\N	\N	\N	\N
19452268	budova s číslem popisným	{3880,3881}	Židenice	582786	\N	\N	\N	\N
19452276	budova s číslem popisným	{3882,3883}	Židenice	582786	\N	\N	\N	\N
19452306	budova s číslem popisným	{3884,3885}	Židenice	582786	\N	\N	\N	\N
19452314	budova s číslem popisným	{3886}	Židenice	582786	\N	\N	\N	\N
19452322	budova s číslem popisným	{3887}	Židenice	582786	\N	\N	\N	\N
19452349	budova s číslem popisným	{3888,3889}	Židenice	582786	\N	\N	\N	\N
19452365	budova s číslem popisným	{3891,391}	Židenice	582786	\N	\N	\N	\N
19452373	budova s číslem popisným	{3893}	Židenice	582786	\N	\N	\N	\N
19452381	budova s číslem popisným	{3894}	Židenice	582786	\N	\N	\N	\N
19452390	budova s číslem popisným	{3895}	Židenice	582786	\N	\N	\N	\N
19452403	budova s číslem popisným	{3896}	Židenice	582786	\N	\N	\N	\N
19452411	budova s číslem popisným	{3897}	Židenice	582786	\N	\N	\N	\N
19452420	budova s číslem popisným	{3898,3899,3900}	Židenice	582786	\N	\N	\N	\N
19452454	budova s číslem popisným	{3901}	Židenice	582786	\N	\N	\N	\N
19452462	budova s číslem popisným	{3902}	Židenice	582786	\N	\N	\N	\N
19452471	budova s číslem popisným	{3903,3904}	Židenice	582786	\N	\N	\N	\N
19452501	budova s číslem popisným	{3905,3906,3907}	Židenice	582786	\N	\N	\N	\N
19452535	budova s číslem popisným	{3908,3909}	Židenice	582786	\N	\N	\N	\N
19452586	budova s číslem popisným	{3915}	Židenice	582786	\N	\N	\N	\N
19452594	budova s číslem popisným	{3916}	Židenice	582786	\N	\N	\N	\N
19452608	budova s číslem popisným	{3917}	Židenice	582786	\N	\N	\N	\N
19452616	budova s číslem popisným	{3918}	Židenice	582786	\N	\N	\N	\N
19452624	budova s číslem popisným	{3920,3921,3922}	Židenice	582786	\N	\N	\N	\N
19452659	budova s číslem popisným	{3923}	Židenice	582786	\N	\N	\N	\N
19452667	budova s číslem popisným	{3924}	Židenice	582786	\N	\N	\N	\N
19452675	budova s číslem popisným	{3925}	Židenice	582786	\N	\N	\N	\N
19452683	budova s číslem popisným	{3926}	Židenice	582786	\N	\N	\N	\N
19452691	budova s číslem popisným	{3927}	Židenice	582786	\N	\N	\N	\N
19452705	budova s číslem popisným	{3928}	Židenice	582786	\N	\N	\N	\N
19452713	budova s číslem popisným	{3929}	Židenice	582786	\N	\N	\N	\N
19452721	budova s číslem popisným	{3930}	Židenice	582786	\N	\N	\N	\N
19452730	budova s číslem popisným	{3932}	Židenice	582786	\N	\N	\N	\N
19452748	budova s číslem popisným	{3933}	Židenice	582786	\N	\N	\N	\N
19452756	budova s číslem popisným	{3934}	Židenice	582786	\N	\N	\N	\N
19452764	budova s číslem popisným	{3935}	Židenice	582786	\N	\N	\N	\N
19452772	budova s číslem popisným	{3936}	Židenice	582786	\N	\N	\N	\N
19452781	budova s číslem popisným	{3937}	Židenice	582786	\N	\N	\N	\N
19452799	budova s číslem popisným	{3938}	Židenice	582786	\N	\N	\N	\N
19452802	budova s číslem popisným	{3939}	Židenice	582786	\N	\N	\N	\N
19452811	budova s číslem popisným	{3940}	Židenice	582786	\N	\N	\N	\N
19452829	budova s číslem popisným	{3941}	Židenice	582786	\N	\N	\N	\N
19452837	budova s číslem popisným	{3942,3943,3944}	Židenice	582786	\N	\N	\N	\N
19452861	budova s číslem popisným	{3945}	Židenice	582786	\N	\N	\N	\N
19452870	budova s číslem popisným	{3946}	Židenice	582786	\N	\N	\N	\N
19452888	budova s číslem popisným	{3947}	Židenice	582786	\N	\N	\N	\N
19452896	budova s číslem popisným	{3948}	Židenice	582786	\N	\N	\N	\N
19452900	budova s číslem popisným	{3949}	Židenice	582786	\N	\N	\N	\N
19452918	budova s číslem popisným	{3950,3951}	Židenice	582786	\N	\N	\N	\N
19452934	budova s číslem popisným	{3952}	Židenice	582786	\N	\N	\N	\N
19452942	budova s číslem popisným	{3953}	Židenice	582786	\N	\N	\N	\N
19452951	budova s číslem popisným	{3954}	Židenice	582786	\N	\N	\N	\N
19452969	budova s číslem popisným	{3955}	Židenice	582786	\N	\N	\N	\N
19452993	budova s číslem popisným	{3956,3957,3958,3959}	Židenice	582786	\N	\N	\N	\N
19453043	budova s číslem popisným	{3960,3961,3962,3963}	Židenice	582786	\N	\N	\N	\N
19453051	budova s číslem popisným	{3964,3965}	Židenice	582786	\N	\N	\N	\N
19453078	budova s číslem popisným	{3966,3967}	Židenice	582786	\N	\N	\N	\N
19453094	budova s číslem popisným	{3968,3969,3970}	Židenice	582786	\N	\N	\N	\N
19453175	budova s číslem popisným	{3971,3972,3973,3974,3975,3976}	Židenice	582786	\N	\N	\N	\N
19453183	budova s číslem popisným	{3977}	Židenice	582786	\N	\N	\N	\N
19453191	budova s číslem popisným	{3978}	Židenice	582786	\N	\N	\N	\N
19453205	budova s číslem popisným	{3979,398}	Židenice	582786	\N	\N	\N	\N
19453221	budova s číslem popisným	{3981}	Židenice	582786	\N	\N	\N	\N
19453230	budova s číslem popisným	{3982}	Židenice	582786	\N	\N	\N	\N
19453248	budova s číslem popisným	{3983}	Židenice	582786	\N	\N	\N	\N
19453256	budova s číslem popisným	{3984}	Židenice	582786	\N	\N	\N	\N
19453264	budova s číslem popisným	{3985}	Židenice	582786	\N	\N	\N	\N
19453281	budova s číslem popisným	{3987}	Židenice	582786	\N	\N	\N	\N
19453299	budova s číslem popisným	{3988}	Židenice	582786	\N	\N	\N	\N
19453302	budova s číslem popisným	{3989}	Židenice	582786	\N	\N	\N	\N
19453311	budova s číslem popisným	{3990}	Židenice	582786	\N	\N	\N	\N
19453329	budova s číslem popisným	{3991}	Židenice	582786	\N	\N	\N	\N
19453345	budova s číslem popisným	{3993}	Židenice	582786	\N	\N	\N	\N
19453353	budova s číslem popisným	{3994}	Židenice	582786	\N	\N	\N	\N
19453361	budova s číslem popisným	{3995}	Židenice	582786	\N	\N	\N	\N
19453388	budova s číslem popisným	{3997}	Židenice	582786	\N	\N	\N	\N
19453396	budova s číslem popisným	{3998}	Židenice	582786	\N	\N	\N	\N
19453400	budova s číslem popisným	{3999}	Židenice	582786	\N	\N	\N	\N
19453418	budova s číslem popisným	{4000}	Židenice	582786	\N	\N	\N	\N
19453426	budova s číslem popisným	{4001}	Židenice	582786	\N	\N	\N	\N
19453434	budova s číslem popisným	{4002}	Židenice	582786	\N	\N	\N	\N
19453442	budova s číslem popisným	{4003}	Židenice	582786	\N	\N	\N	\N
19453451	budova s číslem popisným	{4004}	Židenice	582786	\N	\N	\N	\N
19453574	budova s číslem popisným	{4017}	Židenice	582786	\N	\N	\N	\N
19453582	budova s číslem popisným	{4018}	Židenice	582786	\N	\N	\N	\N
19453591	budova s číslem popisným	{4020}	Židenice	582786	\N	\N	\N	\N
19453604	budova s číslem popisným	{4022}	Židenice	582786	\N	\N	\N	\N
19453612	budova s číslem popisným	{4023}	Židenice	582786	\N	\N	\N	\N
19453639	budova s číslem popisným	{4025}	Židenice	582786	\N	\N	\N	\N
19453647	budova s číslem popisným	{4026}	Židenice	582786	\N	\N	\N	\N
19453655	budova s číslem popisným	{4029}	Židenice	582786	\N	\N	\N	\N
19453663	budova s číslem popisným	{4031}	Židenice	582786	\N	\N	\N	\N
19453671	budova s číslem popisným	{4032}	Židenice	582786	\N	\N	\N	\N
19453680	budova s číslem popisným	{4033}	Židenice	582786	\N	\N	\N	\N
19453698	budova s číslem popisným	{4035}	Židenice	582786	\N	\N	\N	\N
19453710	budova s číslem popisným	{4037}	Židenice	582786	\N	\N	\N	\N
19453728	budova s číslem popisným	{4038}	Židenice	582786	\N	\N	\N	\N
19453736	budova s číslem popisným	{4042}	Židenice	582786	\N	\N	\N	\N
19453752	budova s číslem popisným	{4045}	Židenice	582786	\N	\N	\N	\N
19453761	budova s číslem popisným	{4046}	Židenice	582786	\N	\N	\N	\N
19453779	budova s číslem popisným	{4047}	Židenice	582786	\N	\N	\N	\N
19453787	budova s číslem popisným	{4048}	Židenice	582786	\N	\N	\N	\N
19453795	budova s číslem popisným	{4049}	Židenice	582786	\N	\N	\N	\N
19453809	budova s číslem popisným	{4050}	Židenice	582786	\N	\N	\N	\N
19453817	budova s číslem popisným	{4055}	Židenice	582786	\N	\N	\N	\N
19453825	budova s číslem popisným	{4086}	Židenice	582786	\N	\N	\N	\N
19453833	budova s číslem popisným	{4127}	Židenice	582786	\N	\N	\N	\N
19453841	budova s číslem popisným	{4161}	Židenice	582786	\N	\N	\N	\N
19453850	budova s číslem popisným	{4162}	Židenice	582786	\N	\N	\N	\N
19453876	budova s číslem popisným	{4185}	Židenice	582786	\N	\N	\N	\N
19453884	budova s číslem popisným	{4220}	Židenice	582786	\N	\N	\N	\N
19453892	budova s číslem popisným	{4221}	Židenice	582786	\N	\N	\N	\N
19453906	budova s číslem popisným	{4223}	Židenice	582786	\N	\N	\N	\N
19453914	budova s číslem popisným	{4227}	Židenice	582786	\N	\N	\N	\N
19453922	budova s číslem popisným	{4228}	Židenice	582786	\N	\N	\N	\N
19453931	budova s číslem popisným	{4229}	Židenice	582786	\N	\N	\N	\N
19453949	budova s číslem popisným	{4230}	Židenice	582786	\N	\N	\N	\N
19453957	budova s číslem popisným	{4231}	Židenice	582786	\N	\N	\N	\N
19453965	budova s číslem popisným	{4232}	Židenice	582786	\N	\N	\N	\N
19453973	budova s číslem popisným	{4233}	Židenice	582786	\N	\N	\N	\N
19453981	budova s číslem popisným	{4247}	Židenice	582786	\N	\N	\N	\N
19453990	budova s číslem popisným	{4248}	Židenice	582786	\N	\N	\N	\N
19454015	budova s číslem popisným	{4251}	Židenice	582786	\N	\N	\N	\N
19454023	budova s číslem popisným	{4252}	Židenice	582786	\N	\N	\N	\N
19454031	budova s číslem popisným	{4254}	Židenice	582786	\N	\N	\N	\N
19454040	budova s číslem popisným	{4255}	Židenice	582786	\N	\N	\N	\N
19454058	budova s číslem popisným	{4256}	Židenice	582786	\N	\N	\N	\N
19454066	budova s číslem popisným	{4257}	Židenice	582786	\N	\N	\N	\N
19454074	budova s číslem popisným	{4258}	Židenice	582786	\N	\N	\N	\N
19454082	budova s číslem popisným	{4263}	Židenice	582786	\N	\N	\N	\N
19454091	budova s číslem popisným	{4264}	Židenice	582786	\N	\N	\N	\N
19454112	budova s číslem popisným	{4283}	Židenice	582786	\N	\N	\N	\N
19454121	budova s číslem popisným	{4299}	Židenice	582786	\N	\N	\N	\N
19454139	budova s číslem popisným	{4300}	Židenice	582786	\N	\N	\N	\N
19454155	budova s číslem popisným	{4303}	Židenice	582786	\N	\N	\N	\N
19454163	budova s číslem popisným	{4306}	Židenice	582786	\N	\N	\N	\N
19454171	budova s číslem popisným	{4311}	Židenice	582786	\N	\N	\N	\N
19454201	budova s číslem evidenčním	{2}	Židenice	582786	\N	\N	\N	\N
19454490	budova s číslem evidenčním	{31}	Židenice	582786	\N	\N	\N	\N
19454538	budova s číslem evidenčním	{35}	Židenice	582786	\N	\N	\N	\N
19454571	budova s číslem evidenčním	{39}	Židenice	582786	\N	\N	\N	\N
19454597	budova s číslem evidenčním	{41}	Židenice	582786	\N	\N	\N	\N
19454732	budova s číslem evidenčním	{56}	Židenice	582786	\N	\N	\N	\N
19454741	budova s číslem evidenčním	{57}	Židenice	582786	\N	\N	\N	\N
19454805	budova s číslem evidenčním	{63}	Židenice	582786	\N	\N	\N	\N
19454821	budova s číslem evidenčním	{65}	Židenice	582786	\N	\N	\N	\N
19454848	budova s číslem evidenčním	{67}	Židenice	582786	\N	\N	\N	\N
19454856	budova s číslem evidenčním	{68}	Židenice	582786	\N	\N	\N	\N
19454864	budova s číslem evidenčním	{69}	Židenice	582786	\N	\N	\N	\N
19455038	budova s číslem evidenčním	{86}	Židenice	582786	\N	\N	\N	\N
19455046	budova s číslem evidenčním	{87}	Židenice	582786	\N	\N	\N	\N
19455089	budova s číslem evidenčním	{91}	Židenice	582786	\N	\N	\N	\N
19455097	budova s číslem evidenčním	{92}	Židenice	582786	\N	\N	\N	\N
19455224	budova s číslem evidenčním	{105}	Židenice	582786	\N	\N	\N	\N
19455259	budova s číslem evidenčním	{108}	Židenice	582786	\N	\N	\N	\N
19455267	budova s číslem evidenčním	{109}	Židenice	582786	\N	\N	\N	\N
19455275	budova s číslem evidenčním	{110}	Židenice	582786	\N	\N	\N	\N
19455283	budova s číslem evidenčním	{111}	Židenice	582786	\N	\N	\N	\N
19455291	budova s číslem evidenčním	{112}	Židenice	582786	\N	\N	\N	\N
19455330	budova s číslem evidenčním	{116}	Židenice	582786	\N	\N	\N	\N
19455437	budova s číslem evidenčním	{126}	Židenice	582786	\N	\N	\N	\N
19455445	budova s číslem evidenčním	{127}	Židenice	582786	\N	\N	\N	\N
19455453	budova s číslem evidenčním	{128}	Židenice	582786	\N	\N	\N	\N
19455879	budova s číslem evidenčním	{170}	Židenice	582786	\N	\N	\N	\N
19455950	budova s číslem evidenčním	{178}	Židenice	582786	\N	\N	\N	\N
19455976	budova s číslem evidenčním	{180}	Židenice	582786	\N	\N	\N	\N
19455992	budova s číslem evidenčním	{182}	Židenice	582786	\N	\N	\N	\N
19456026	budova s číslem evidenčním	{187}	Židenice	582786	\N	\N	\N	\N
19456034	budova s číslem evidenčním	{188}	Židenice	582786	\N	\N	\N	\N
19456042	budova s číslem evidenčním	{189}	Židenice	582786	\N	\N	\N	\N
19456182	budova s číslem evidenčním	{203}	Židenice	582786	\N	\N	\N	\N
19456191	budova s číslem evidenčním	{204}	Židenice	582786	\N	\N	\N	\N
19456212	budova s číslem evidenčním	{206}	Židenice	582786	\N	\N	\N	\N
19456247	budova s číslem evidenčním	{209}	Židenice	582786	\N	\N	\N	\N
19456255	budova s číslem evidenčním	{210}	Židenice	582786	\N	\N	\N	\N
19456271	budova s číslem evidenčním	{212}	Židenice	582786	\N	\N	\N	\N
19456298	budova s číslem evidenčním	{214}	Židenice	582786	\N	\N	\N	\N
19456310	budova s číslem evidenčním	{216}	Židenice	582786	\N	\N	\N	\N
19456328	budova s číslem evidenčním	{217}	Židenice	582786	\N	\N	\N	\N
19456352	budova s číslem evidenčním	{220}	Židenice	582786	\N	\N	\N	\N
19456361	budova s číslem evidenčním	{221}	Židenice	582786	\N	\N	\N	\N
19456387	budova s číslem evidenčním	{223}	Židenice	582786	\N	\N	\N	\N
19456409	budova s číslem evidenčním	{225}	Židenice	582786	\N	\N	\N	\N
19456417	budova s číslem evidenčním	{226}	Židenice	582786	\N	\N	\N	\N
19456433	budova s číslem evidenčním	{228}	Židenice	582786	\N	\N	\N	\N
19456441	budova s číslem evidenčním	{229}	Židenice	582786	\N	\N	\N	\N
19456450	budova s číslem evidenčním	{230}	Židenice	582786	\N	\N	\N	\N
19456468	budova s číslem evidenčním	{231}	Židenice	582786	\N	\N	\N	\N
19456484	budova s číslem evidenčním	{233}	Židenice	582786	\N	\N	\N	\N
19456492	budova s číslem evidenčním	{234}	Židenice	582786	\N	\N	\N	\N
19456514	budova s číslem evidenčním	{236}	Židenice	582786	\N	\N	\N	\N
19456531	budova s číslem evidenčním	{238}	Židenice	582786	\N	\N	\N	\N
19456549	budova s číslem evidenčním	{239}	Židenice	582786	\N	\N	\N	\N
19456565	budova s číslem evidenčním	{241}	Židenice	582786	\N	\N	\N	\N
19456573	budova s číslem evidenčním	{242}	Židenice	582786	\N	\N	\N	\N
19456620	budova s číslem evidenčním	{247}	Židenice	582786	\N	\N	\N	\N
19456638	budova s číslem evidenčním	{248}	Židenice	582786	\N	\N	\N	\N
19456654	budova s číslem evidenčním	{250}	Židenice	582786	\N	\N	\N	\N
19456662	budova s číslem evidenčním	{251}	Židenice	582786	\N	\N	\N	\N
19456671	budova s číslem evidenčním	{252}	Židenice	582786	\N	\N	\N	\N
19456697	budova s číslem evidenčním	{254}	Židenice	582786	\N	\N	\N	\N
19456701	budova s číslem evidenčním	{255}	Židenice	582786	\N	\N	\N	\N
19456735	budova s číslem evidenčním	{258}	Židenice	582786	\N	\N	\N	\N
19456743	budova s číslem evidenčním	{259}	Židenice	582786	\N	\N	\N	\N
19456751	budova s číslem evidenčním	{260}	Židenice	582786	\N	\N	\N	\N
19456760	budova s číslem evidenčním	{261}	Židenice	582786	\N	\N	\N	\N
19456778	budova s číslem evidenčním	{262}	Židenice	582786	\N	\N	\N	\N
19456786	budova s číslem evidenčním	{263}	Židenice	582786	\N	\N	\N	\N
19456794	budova s číslem evidenčním	{264}	Židenice	582786	\N	\N	\N	\N
19456883	budova s číslem evidenčním	{273}	Židenice	582786	\N	\N	\N	\N
19456913	budova s číslem evidenčním	{276}	Židenice	582786	\N	\N	\N	\N
19457031	budova s číslem evidenčním	{290}	Židenice	582786	\N	\N	\N	\N
19457090	budova s číslem evidenčním	{296}	Židenice	582786	\N	\N	\N	\N
19457103	budova s číslem evidenčním	{297}	Židenice	582786	\N	\N	\N	\N
19457111	budova s číslem evidenčním	{298}	Židenice	582786	\N	\N	\N	\N
19457120	budova s číslem evidenčním	{299}	Židenice	582786	\N	\N	\N	\N
19457201	budova s číslem evidenčním	{307}	Židenice	582786	\N	\N	\N	\N
19457243	budova s číslem evidenčním	{311}	Židenice	582786	\N	\N	\N	\N
19457286	budova s číslem evidenčním	{315}	Židenice	582786	\N	\N	\N	\N
19457324	budova s číslem evidenčním	{319}	Židenice	582786	\N	\N	\N	\N
19457359	budova s číslem evidenčním	{322}	Židenice	582786	\N	\N	\N	\N
19457391	budova s číslem evidenčním	{326}	Židenice	582786	\N	\N	\N	\N
19457421	budova s číslem evidenčním	{329}	Židenice	582786	\N	\N	\N	\N
19457448	budova s číslem evidenčním	{331}	Židenice	582786	\N	\N	\N	\N
19457472	budova s číslem evidenčním	{334}	Židenice	582786	\N	\N	\N	\N
19457481	budova s číslem evidenčním	{335}	Židenice	582786	\N	\N	\N	\N
19457502	budova s číslem evidenčním	{337}	Židenice	582786	\N	\N	\N	\N
19457511	budova s číslem evidenčním	{338}	Židenice	582786	\N	\N	\N	\N
19457537	budova s číslem evidenčním	{340}	Židenice	582786	\N	\N	\N	\N
19457545	budova s číslem evidenčním	{341}	Židenice	582786	\N	\N	\N	\N
19457553	budova s číslem evidenčním	{342}	Židenice	582786	\N	\N	\N	\N
19457596	budova s číslem evidenčním	{346}	Židenice	582786	\N	\N	\N	\N
19457618	budova s číslem evidenčním	{348}	Židenice	582786	\N	\N	\N	\N
19457651	budova s číslem evidenčním	{352}	Židenice	582786	\N	\N	\N	\N
19457669	budova s číslem evidenčním	{353}	Židenice	582786	\N	\N	\N	\N
19457693	budova s číslem evidenčním	{356}	Židenice	582786	\N	\N	\N	\N
19457707	budova s číslem evidenčním	{357}	Židenice	582786	\N	\N	\N	\N
19457740	budova s číslem evidenčním	{361}	Židenice	582786	\N	\N	\N	\N
19457758	budova s číslem evidenčním	{362}	Židenice	582786	\N	\N	\N	\N
19457812	budova s číslem evidenčním	{368}	Židenice	582786	\N	\N	\N	\N
19457855	budova s číslem evidenčním	{372}	Židenice	582786	\N	\N	\N	\N
19457880	budova s číslem evidenčním	{375}	Židenice	582786	\N	\N	\N	\N
19457936	budova s číslem evidenčním	{380}	Židenice	582786	\N	\N	\N	\N
19457944	budova s číslem evidenčním	{381}	Židenice	582786	\N	\N	\N	\N
19457952	budova s číslem evidenčním	{382}	Židenice	582786	\N	\N	\N	\N
19457979	budova s číslem evidenčním	{384}	Židenice	582786	\N	\N	\N	\N
19458002	budova s číslem evidenčním	{387}	Židenice	582786	\N	\N	\N	\N
19458037	budova s číslem evidenčním	{390}	Židenice	582786	\N	\N	\N	\N
19458045	budova s číslem evidenčním	{391}	Židenice	582786	\N	\N	\N	\N
19458053	budova s číslem evidenčním	{392}	Židenice	582786	\N	\N	\N	\N
19458061	budova s číslem evidenčním	{393}	Židenice	582786	\N	\N	\N	\N
19458096	budova s číslem evidenčním	{396}	Židenice	582786	\N	\N	\N	\N
19458100	budova s číslem evidenčním	{397}	Židenice	582786	\N	\N	\N	\N
19458118	budova s číslem evidenčním	{398}	Židenice	582786	\N	\N	\N	\N
19458177	budova s číslem evidenčním	{404}	Židenice	582786	\N	\N	\N	\N
19458185	budova s číslem evidenčním	{405}	Židenice	582786	\N	\N	\N	\N
19458240	budova s číslem evidenčním	{411}	Židenice	582786	\N	\N	\N	\N
19458282	budova s číslem evidenčním	{415}	Židenice	582786	\N	\N	\N	\N
19458304	budova s číslem evidenčním	{417}	Židenice	582786	\N	\N	\N	\N
19458401	budova s číslem evidenčním	{427}	Židenice	582786	\N	\N	\N	\N
19458428	budova s číslem evidenčním	{429}	Židenice	582786	\N	\N	\N	\N
19458461	budova s číslem evidenčním	{433}	Židenice	582786	\N	\N	\N	\N
19458479	budova s číslem evidenčním	{434}	Židenice	582786	\N	\N	\N	\N
19458622	budova s číslem evidenčním	{449}	Židenice	582786	\N	\N	\N	\N
19458649	budova s číslem evidenčním	{451}	Židenice	582786	\N	\N	\N	\N
19458665	budova s číslem evidenčním	{453}	Židenice	582786	\N	\N	\N	\N
19458681	budova s číslem evidenčním	{455}	Židenice	582786	\N	\N	\N	\N
19458720	budova s číslem evidenčním	{459}	Židenice	582786	\N	\N	\N	\N
19458762	budova s číslem evidenčním	{463}	Židenice	582786	\N	\N	\N	\N
19458771	budova s číslem evidenčním	{464}	Židenice	582786	\N	\N	\N	\N
19458797	budova s číslem evidenčním	{466}	Židenice	582786	\N	\N	\N	\N
19458851	budova s číslem evidenčním	{472}	Židenice	582786	\N	\N	\N	\N
19458860	budova s číslem evidenčním	{473}	Židenice	582786	\N	\N	\N	\N
19458991	budova s číslem evidenčním	{486}	Židenice	582786	\N	\N	\N	\N
19459017	budova s číslem evidenčním	{488}	Židenice	582786	\N	\N	\N	\N
19459025	budova s číslem evidenčním	{489}	Židenice	582786	\N	\N	\N	\N
19459041	budova s číslem evidenčním	{491}	Židenice	582786	\N	\N	\N	\N
19459050	budova s číslem evidenčním	{492}	Židenice	582786	\N	\N	\N	\N
19459149	budova s číslem evidenčním	{501}	Židenice	582786	\N	\N	\N	\N
19459181	budova s číslem evidenčním	{506}	Židenice	582786	\N	\N	\N	\N
19459297	budova s číslem evidenčním	{517}	Židenice	582786	\N	\N	\N	\N
19459343	budova s číslem evidenčním	{522}	Židenice	582786	\N	\N	\N	\N
19459360	budova s číslem evidenčním	{524}	Židenice	582786	\N	\N	\N	\N
19459408	budova s číslem evidenčním	{528}	Židenice	582786	\N	\N	\N	\N
19459416	budova s číslem evidenčním	{529}	Židenice	582786	\N	\N	\N	\N
19459424	budova s číslem evidenčním	{530}	Židenice	582786	\N	\N	\N	\N
19459432	budova s číslem evidenčním	{531}	Židenice	582786	\N	\N	\N	\N
19459467	budova s číslem evidenčním	{534}	Židenice	582786	\N	\N	\N	\N
19459751	budova s číslem evidenčním	{564}	Židenice	582786	\N	\N	\N	\N
19459858	budova s číslem evidenčním	{574}	Židenice	582786	\N	\N	\N	\N
19459874	budova s číslem evidenčním	{576}	Židenice	582786	\N	\N	\N	\N
19459891	budova s číslem evidenčním	{578}	Židenice	582786	\N	\N	\N	\N
19459904	budova s číslem evidenčním	{579}	Židenice	582786	\N	\N	\N	\N
19459912	budova s číslem evidenčním	{580}	Židenice	582786	\N	\N	\N	\N
19459921	budova s číslem evidenčním	{581}	Židenice	582786	\N	\N	\N	\N
19459939	budova s číslem evidenčním	{582}	Židenice	582786	\N	\N	\N	\N
19459963	budova s číslem evidenčním	{585}	Židenice	582786	\N	\N	\N	\N
19459980	budova s číslem evidenčním	{587}	Židenice	582786	\N	\N	\N	\N
19460007	budova s číslem evidenčním	{589}	Židenice	582786	\N	\N	\N	\N
19460015	budova s číslem evidenčním	{590}	Židenice	582786	\N	\N	\N	\N
19460031	budova s číslem evidenčním	{592}	Židenice	582786	\N	\N	\N	\N
19460066	budova s číslem evidenčním	{595}	Židenice	582786	\N	\N	\N	\N
19460074	budova s číslem evidenčním	{596}	Židenice	582786	\N	\N	\N	\N
19460091	budova s číslem evidenčním	{598}	Židenice	582786	\N	\N	\N	\N
19460104	budova s číslem evidenčním	{599}	Židenice	582786	\N	\N	\N	\N
19460112	budova s číslem evidenčním	{600}	Židenice	582786	\N	\N	\N	\N
19460198	budova s číslem evidenčním	{608}	Židenice	582786	\N	\N	\N	\N
19460201	budova s číslem evidenčním	{609}	Židenice	582786	\N	\N	\N	\N
19460210	budova s číslem evidenčním	{610}	Židenice	582786	\N	\N	\N	\N
19460252	budova s číslem evidenčním	{614}	Židenice	582786	\N	\N	\N	\N
19460279	budova s číslem evidenčním	{619}	Židenice	582786	\N	\N	\N	\N
19460287	budova s číslem evidenčním	{627}	Židenice	582786	\N	\N	\N	\N
19460295	budova s číslem evidenčním	{628}	Židenice	582786	\N	\N	\N	\N
19460317	budova s číslem evidenčním	{630}	Židenice	582786	\N	\N	\N	\N
19460325	budova s číslem evidenčním	{631}	Židenice	582786	\N	\N	\N	\N
19460333	budova s číslem evidenčním	{632}	Židenice	582786	\N	\N	\N	\N
19460341	budova s číslem evidenčním	{633}	Židenice	582786	\N	\N	\N	\N
19460350	budova s číslem evidenčním	{634}	Židenice	582786	\N	\N	\N	\N
19460376	budova s číslem evidenčním	{636}	Židenice	582786	\N	\N	\N	\N
19460384	budova s číslem evidenčním	{637}	Židenice	582786	\N	\N	\N	\N
19460392	budova s číslem evidenčním	{638}	Židenice	582786	\N	\N	\N	\N
19460414	budova s číslem evidenčním	{640}	Židenice	582786	\N	\N	\N	\N
19460422	budova s číslem evidenčním	{641}	Židenice	582786	\N	\N	\N	\N
19460431	budova s číslem evidenčním	{642}	Židenice	582786	\N	\N	\N	\N
19460449	budova s číslem evidenčním	{643}	Židenice	582786	\N	\N	\N	\N
19460465	budova s číslem evidenčním	{645}	Židenice	582786	\N	\N	\N	\N
19460473	budova s číslem evidenčním	{646}	Židenice	582786	\N	\N	\N	\N
19460481	budova s číslem evidenčním	{647}	Židenice	582786	\N	\N	\N	\N
19460490	budova s číslem evidenčním	{648}	Židenice	582786	\N	\N	\N	\N
19460503	budova s číslem evidenčním	{649}	Židenice	582786	\N	\N	\N	\N
19460511	budova s číslem evidenčním	{650}	Židenice	582786	\N	\N	\N	\N
19460520	budova s číslem evidenčním	{651}	Židenice	582786	\N	\N	\N	\N
19460538	budova s číslem evidenčním	{652}	Židenice	582786	\N	\N	\N	\N
19460546	budova s číslem evidenčním	{653}	Židenice	582786	\N	\N	\N	\N
19460554	budova s číslem evidenčním	{654}	Židenice	582786	\N	\N	\N	\N
19460562	budova s číslem evidenčním	{655}	Židenice	582786	\N	\N	\N	\N
19460571	budova s číslem evidenčním	{656}	Židenice	582786	\N	\N	\N	\N
19460589	budova s číslem evidenčním	{657}	Židenice	582786	\N	\N	\N	\N
19460597	budova s číslem evidenčním	{658}	Židenice	582786	\N	\N	\N	\N
19460601	budova s číslem evidenčním	{659}	Židenice	582786	\N	\N	\N	\N
19460619	budova s číslem evidenčním	{660}	Židenice	582786	\N	\N	\N	\N
19460627	budova s číslem evidenčním	{661}	Židenice	582786	\N	\N	\N	\N
19460651	budova s číslem evidenčním	{664}	Židenice	582786	\N	\N	\N	\N
19460660	budova s číslem evidenčním	{665}	Židenice	582786	\N	\N	\N	\N
19460678	budova s číslem evidenčním	{666}	Židenice	582786	\N	\N	\N	\N
19460686	budova s číslem evidenčním	{667}	Židenice	582786	\N	\N	\N	\N
19460694	budova s číslem evidenčním	{668}	Židenice	582786	\N	\N	\N	\N
19460708	budova s číslem evidenčním	{669}	Židenice	582786	\N	\N	\N	\N
19460716	budova s číslem evidenčním	{670}	Židenice	582786	\N	\N	\N	\N
19460724	budova s číslem evidenčním	{671}	Židenice	582786	\N	\N	\N	\N
19460732	budova s číslem evidenčním	{672}	Židenice	582786	\N	\N	\N	\N
19460759	budova s číslem evidenčním	{674}	Židenice	582786	\N	\N	\N	\N
19460767	budova s číslem evidenčním	{675}	Židenice	582786	\N	\N	\N	\N
19460783	budova s číslem evidenčním	{677}	Židenice	582786	\N	\N	\N	\N
19460791	budova s číslem evidenčním	{678}	Židenice	582786	\N	\N	\N	\N
19460805	budova s číslem evidenčním	{679}	Židenice	582786	\N	\N	\N	\N
19460813	budova s číslem evidenčním	{680}	Židenice	582786	\N	\N	\N	\N
19460848	budova s číslem evidenčním	{683}	Židenice	582786	\N	\N	\N	\N
19460872	budova s číslem evidenčním	{686}	Židenice	582786	\N	\N	\N	\N
19460881	budova s číslem evidenčním	{687}	Židenice	582786	\N	\N	\N	\N
19460911	budova s číslem evidenčním	{690}	Židenice	582786	\N	\N	\N	\N
19460929	budova s číslem evidenčním	{691}	Židenice	582786	\N	\N	\N	\N
19460937	budova s číslem evidenčním	{692}	Židenice	582786	\N	\N	\N	\N
19460945	budova s číslem evidenčním	{693}	Židenice	582786	\N	\N	\N	\N
19460953	budova s číslem evidenčním	{694}	Židenice	582786	\N	\N	\N	\N
19460961	budova s číslem evidenčním	{695}	Židenice	582786	\N	\N	\N	\N
19460970	budova s číslem evidenčním	{696}	Židenice	582786	\N	\N	\N	\N
19460988	budova s číslem evidenčním	{697}	Židenice	582786	\N	\N	\N	\N
19460996	budova s číslem evidenčním	{698}	Židenice	582786	\N	\N	\N	\N
19461003	budova s číslem evidenčním	{699}	Židenice	582786	\N	\N	\N	\N
19461011	budova s číslem evidenčním	{700}	Židenice	582786	\N	\N	\N	\N
19461020	budova s číslem evidenčním	{701}	Židenice	582786	\N	\N	\N	\N
19461038	budova s číslem evidenčním	{702}	Židenice	582786	\N	\N	\N	\N
19461046	budova s číslem evidenčním	{703}	Židenice	582786	\N	\N	\N	\N
19461062	budova s číslem evidenčním	{705}	Židenice	582786	\N	\N	\N	\N
19461071	budova s číslem evidenčním	{706}	Židenice	582786	\N	\N	\N	\N
19461089	budova s číslem evidenčním	{707}	Židenice	582786	\N	\N	\N	\N
19461097	budova s číslem evidenčním	{708}	Židenice	582786	\N	\N	\N	\N
19461101	budova s číslem evidenčním	{709}	Židenice	582786	\N	\N	\N	\N
19461119	budova s číslem evidenčním	{710}	Židenice	582786	\N	\N	\N	\N
19461127	budova s číslem evidenčním	{711}	Židenice	582786	\N	\N	\N	\N
19461135	budova s číslem evidenčním	{712}	Židenice	582786	\N	\N	\N	\N
19461143	budova s číslem evidenčním	{713}	Židenice	582786	\N	\N	\N	\N
19461151	budova s číslem evidenčním	{714}	Židenice	582786	\N	\N	\N	\N
19461160	budova s číslem evidenčním	{715}	Židenice	582786	\N	\N	\N	\N
19461178	budova s číslem evidenčním	{716}	Židenice	582786	\N	\N	\N	\N
19461186	budova s číslem evidenčním	{717}	Židenice	582786	\N	\N	\N	\N
19461194	budova s číslem evidenčním	{718}	Židenice	582786	\N	\N	\N	\N
19461208	budova s číslem evidenčním	{719}	Židenice	582786	\N	\N	\N	\N
19461216	budova s číslem evidenčním	{720}	Židenice	582786	\N	\N	\N	\N
19461224	budova s číslem evidenčním	{721}	Židenice	582786	\N	\N	\N	\N
19461232	budova s číslem evidenčním	{722}	Židenice	582786	\N	\N	\N	\N
19461241	budova s číslem evidenčním	{723}	Židenice	582786	\N	\N	\N	\N
19461259	budova s číslem evidenčním	{724}	Židenice	582786	\N	\N	\N	\N
19461267	budova s číslem evidenčním	{725}	Židenice	582786	\N	\N	\N	\N
19461275	budova s číslem evidenčním	{726}	Židenice	582786	\N	\N	\N	\N
19461283	budova s číslem evidenčním	{727}	Židenice	582786	\N	\N	\N	\N
19461291	budova s číslem evidenčním	{728}	Židenice	582786	\N	\N	\N	\N
19461305	budova s číslem evidenčním	{729}	Židenice	582786	\N	\N	\N	\N
19461313	budova s číslem evidenčním	{730}	Židenice	582786	\N	\N	\N	\N
19461330	budova s číslem evidenčním	{732}	Židenice	582786	\N	\N	\N	\N
19461348	budova s číslem evidenčním	{735}	Židenice	582786	\N	\N	\N	\N
19461364	budova s číslem evidenčním	{739}	Židenice	582786	\N	\N	\N	\N
19461381	budova s číslem evidenčním	{744}	Židenice	582786	\N	\N	\N	\N
19461399	budova s číslem evidenčním	{745}	Židenice	582786	\N	\N	\N	\N
19461402	budova s číslem evidenčním	{746}	Židenice	582786	\N	\N	\N	\N
19461411	budova s číslem evidenčním	{747}	Židenice	582786	\N	\N	\N	\N
19461429	budova s číslem evidenčním	{748}	Židenice	582786	\N	\N	\N	\N
19461445	budova s číslem evidenčním	{750}	Židenice	582786	\N	\N	\N	\N
19461453	budova s číslem evidenčním	{751}	Židenice	582786	\N	\N	\N	\N
19461470	budova s číslem evidenčním	{753}	Židenice	582786	\N	\N	\N	\N
19461488	budova s číslem evidenčním	{754}	Židenice	582786	\N	\N	\N	\N
19461496	budova s číslem evidenčním	{755}	Židenice	582786	\N	\N	\N	\N
19461518	budova s číslem evidenčním	{757}	Židenice	582786	\N	\N	\N	\N
19461526	budova s číslem evidenčním	{758}	Židenice	582786	\N	\N	\N	\N
19461534	budova s číslem evidenčním	{759}	Židenice	582786	\N	\N	\N	\N
19461542	budova s číslem evidenčním	{760}	Židenice	582786	\N	\N	\N	\N
19461551	budova s číslem evidenčním	{761}	Židenice	582786	\N	\N	\N	\N
19461569	budova s číslem evidenčním	{762}	Židenice	582786	\N	\N	\N	\N
19461577	budova s číslem evidenčním	{763}	Židenice	582786	\N	\N	\N	\N
19461585	budova s číslem evidenčním	{764}	Židenice	582786	\N	\N	\N	\N
19461593	budova s číslem evidenčním	{765}	Židenice	582786	\N	\N	\N	\N
19461607	budova s číslem evidenčním	{766}	Židenice	582786	\N	\N	\N	\N
19461615	budova s číslem evidenčním	{767}	Židenice	582786	\N	\N	\N	\N
19461623	budova s číslem evidenčním	{768}	Židenice	582786	\N	\N	\N	\N
19461631	budova s číslem evidenčním	{769}	Židenice	582786	\N	\N	\N	\N
19461640	budova s číslem evidenčním	{770}	Židenice	582786	\N	\N	\N	\N
19461658	budova s číslem evidenčním	{771}	Židenice	582786	\N	\N	\N	\N
19461666	budova s číslem evidenčním	{772}	Židenice	582786	\N	\N	\N	\N
19461674	budova s číslem evidenčním	{773}	Židenice	582786	\N	\N	\N	\N
19461682	budova s číslem evidenčním	{774}	Židenice	582786	\N	\N	\N	\N
19461691	budova s číslem evidenčním	{775}	Židenice	582786	\N	\N	\N	\N
19461704	budova s číslem evidenčním	{776}	Židenice	582786	\N	\N	\N	\N
19461712	budova s číslem evidenčním	{777}	Židenice	582786	\N	\N	\N	\N
19461721	budova s číslem evidenčním	{778}	Židenice	582786	\N	\N	\N	\N
19461739	budova s číslem evidenčním	{779}	Židenice	582786	\N	\N	\N	\N
19461755	budova s číslem evidenčním	{781}	Židenice	582786	\N	\N	\N	\N
24640018	budova s číslem popisným	{4328}	Židenice	582786	\N	\N	\N	\N
24640051	budova s číslem popisným	{3912}	Židenice	582786	\N	\N	\N	\N
24640069	budova s číslem popisným	{3911}	Židenice	582786	\N	\N	\N	\N
24640077	budova s číslem popisným	{4296}	Židenice	582786	\N	\N	\N	\N
24640085	budova s číslem popisným	{4293}	Židenice	582786	\N	\N	\N	\N
24640093	budova s číslem popisným	{4260}	Židenice	582786	\N	\N	\N	\N
24640107	budova s číslem popisným	{4301}	Židenice	582786	\N	\N	\N	\N
24640115	budova s číslem popisným	{4308}	Židenice	582786	\N	\N	\N	\N
24640123	budova s číslem popisným	{4327}	Židenice	582786	\N	\N	\N	\N
24640131	budova s číslem popisným	{4261}	Židenice	582786	\N	\N	\N	\N
24640140	budova s číslem popisným	{4317}	Židenice	582786	\N	\N	\N	\N
24640158	budova s číslem popisným	{4323}	Židenice	582786	\N	\N	\N	\N
24640166	budova s číslem popisným	{4316}	Židenice	582786	\N	\N	\N	\N
24640174	budova s číslem popisným	{4330}	Židenice	582786	\N	\N	\N	\N
24640182	budova s číslem popisným	{4314}	Židenice	582786	\N	\N	\N	\N
24640191	budova s číslem popisným	{4043}	Židenice	582786	\N	\N	\N	\N
24640204	budova s číslem popisným	{1407}	Židenice	582786	\N	\N	\N	\N
24640212	budova s číslem popisným	{4309}	Židenice	582786	\N	\N	\N	\N
24640221	budova s číslem popisným	{4322}	Židenice	582786	\N	\N	\N	\N
24640239	budova s číslem popisným	{4295}	Židenice	582786	\N	\N	\N	\N
24640247	budova s číslem popisným	{4332}	Židenice	582786	\N	\N	\N	\N
24640255	budova s číslem popisným	{4298}	Židenice	582786	\N	\N	\N	\N
24640263	budova s číslem popisným	{4294}	Židenice	582786	\N	\N	\N	\N
24640271	budova s číslem popisným	{4250}	Židenice	582786	\N	\N	\N	\N
24640280	budova s číslem popisným	{4324}	Židenice	582786	\N	\N	\N	\N
24640298	budova s číslem popisným	{4259}	Židenice	582786	\N	\N	\N	\N
24640301	budova s číslem popisným	{4312}	Židenice	582786	\N	\N	\N	\N
24640310	budova s číslem popisným	{4326}	Židenice	582786	\N	\N	\N	\N
24640328	budova s číslem popisným	{4313}	Židenice	582786	\N	\N	\N	\N
24640336	budova s číslem popisným	{4325}	Židenice	582786	\N	\N	\N	\N
24661678	budova s číslem popisným	{4320}	Židenice	582786	\N	\N	\N	\N
24661686	budova s číslem popisným	{4307}	Židenice	582786	\N	\N	\N	\N
24661694	budova s číslem popisným	{4329}	Židenice	582786	\N	\N	\N	\N
24661708	budova s číslem popisným	{4321}	Židenice	582786	\N	\N	\N	\N
24661716	budova s číslem popisným	{4292}	Židenice	582786	\N	\N	\N	\N
24662313	budova s číslem popisným	{4319}	Židenice	582786	\N	\N	\N	\N
24662321	budova s číslem popisným	{4334}	Židenice	582786	\N	\N	\N	\N
24662330	budova s číslem popisným	{4333}	Židenice	582786	\N	\N	\N	\N
24675423	budova s číslem popisným	{4335}	Židenice	582786	\N	\N	\N	\N
24731293	budova s číslem popisným	{4339}	Židenice	582786	\N	\N	\N	\N
24763411	budova s číslem popisným	{4343}	Židenice	582786	\N	\N	\N	\N
24763420	budova s číslem popisným	{4341}	Židenice	582786	\N	\N	\N	\N
24763438	budova s číslem popisným	{4342}	Židenice	582786	\N	\N	\N	\N
24821802	budova s číslem popisným	{4344}	Židenice	582786	\N	\N	\N	\N
24837911	budova s číslem popisným	{4348}	Židenice	582786	\N	\N	\N	\N
24863416	budova s číslem popisným	{4349}	Židenice	582786	\N	\N	\N	\N
24901521	budova s číslem popisným	{4350}	Židenice	582786	\N	\N	\N	\N
24901539	budova s číslem popisným	{4346}	Židenice	582786	\N	\N	\N	\N
24901547	budova s číslem popisným	{4347}	Židenice	582786	\N	\N	\N	\N
24901555	budova s číslem popisným	{4337}	Židenice	582786	\N	\N	\N	\N
24901563	budova s číslem popisným	{4338}	Židenice	582786	\N	\N	\N	\N
24901571	budova s číslem popisným	{4340}	Židenice	582786	\N	\N	\N	\N
24901687	budova s číslem popisným	{4336}	Židenice	582786	\N	\N	\N	\N
25158317	budova s číslem popisným	{4356}	Židenice	582786	\N	\N	\N	\N
25201344	budova s číslem popisným	{3161}	Židenice	582786	\N	\N	\N	\N
25201352	budova s číslem popisným	{4354}	Židenice	582786	\N	\N	\N	\N
25201361	budova s číslem popisným	{4357}	Židenice	582786	\N	\N	\N	\N
25201395	budova s číslem popisným	{4358}	Židenice	582786	\N	\N	\N	\N
25201409	budova s číslem popisným	{1933}	Židenice	582786	\N	\N	\N	\N
25201417	budova s číslem popisným	{4352}	Židenice	582786	\N	\N	\N	\N
25201425	budova s číslem popisným	{4351}	Židenice	582786	\N	\N	\N	\N
25201476	budova s číslem popisným	{3914}	Židenice	582786	\N	\N	\N	\N
25201484	budova s číslem popisným	{3992}	Židenice	582786	\N	\N	\N	\N
25201506	budova s číslem popisným	{2379}	Židenice	582786	\N	\N	\N	\N
25201514	budova s číslem popisným	{4353}	Židenice	582786	\N	\N	\N	\N
25201522	budova s číslem popisným	{2375}	Židenice	582786	\N	\N	\N	\N
25201531	budova s číslem popisným	{2405}	Židenice	582786	\N	\N	\N	\N
25217437	budova s číslem popisným	{4355}	Židenice	582786	\N	\N	\N	\N
25313100	budova s číslem popisným	{4370}	Židenice	582786	\N	\N	\N	\N
25313118	budova s číslem popisným	{4368}	Židenice	582786	\N	\N	\N	\N
25313126	budova s číslem popisným	{4363}	Židenice	582786	\N	\N	\N	\N
25313134	budova s číslem popisným	{4366}	Židenice	582786	\N	\N	\N	\N
25313142	budova s číslem popisným	{4362}	Židenice	582786	\N	\N	\N	\N
25313151	budova s číslem popisným	{4365}	Židenice	582786	\N	\N	\N	\N
25313177	budova s číslem popisným	{4302}	Židenice	582786	\N	\N	\N	\N
25313185	budova s číslem popisným	{4361}	Židenice	582786	\N	\N	\N	\N
25442678	budova s číslem popisným	{4373}	Židenice	582786	\N	\N	\N	\N
25442686	budova s číslem popisným	{4374}	Židenice	582786	\N	\N	\N	\N
25442694	budova s číslem popisným	{4375}	Židenice	582786	\N	\N	\N	\N
25463888	budova s číslem popisným	{4376}	Židenice	582786	\N	\N	\N	\N
25464442	budova s číslem popisným	{4378}	Židenice	582786	\N	\N	\N	\N
25464451	budova s číslem popisným	{4379}	Židenice	582786	\N	\N	\N	\N
25464469	budova s číslem popisným	{4380}	Židenice	582786	\N	\N	\N	\N
25667238	budova s číslem popisným	{4392}	Židenice	582786	\N	\N	\N	\N
25679619	budova s číslem popisným	{4387}	Židenice	582786	\N	\N	\N	\N
25796691	budova s číslem popisným	{4399}	Židenice	582786	\N	\N	\N	\N
25934708	budova s číslem popisným	{4391}	Židenice	582786	\N	\N	\N	\N
26003872	budova s číslem popisným	{4400}	Židenice	582786	\N	\N	\N	\N
26160561	budova s číslem popisným	{4406}	Židenice	582786	\N	\N	\N	\N
26160579	budova s číslem popisným	{4407}	Židenice	582786	\N	\N	\N	\N
26180081	budova s číslem popisným	{4419}	Židenice	582786	\N	\N	\N	\N
26180090	budova s číslem popisným	{4421}	Židenice	582786	\N	\N	\N	\N
26184826	budova s číslem popisným	{4411}	Židenice	582786	\N	\N	\N	\N
26191563	budova s číslem popisným	{4408}	Židenice	582786	\N	\N	\N	\N
26191571	budova s číslem popisným	{4409}	Židenice	582786	\N	\N	\N	\N
26191580	budova s číslem popisným	{4410}	Židenice	582786	\N	\N	\N	\N
26191598	budova s číslem popisným	{4412}	Židenice	582786	\N	\N	\N	\N
26191601	budova s číslem popisným	{4413}	Židenice	582786	\N	\N	\N	\N
26191610	budova s číslem popisným	{4414}	Židenice	582786	\N	\N	\N	\N
26191628	budova s číslem popisným	{4415}	Židenice	582786	\N	\N	\N	\N
26191636	budova s číslem popisným	{4416}	Židenice	582786	\N	\N	\N	\N
26191644	budova s číslem popisným	{4417}	Židenice	582786	\N	\N	\N	\N
26191652	budova s číslem popisným	{4418}	Židenice	582786	\N	\N	\N	\N
26191661	budova s číslem popisným	{4420}	Židenice	582786	\N	\N	\N	\N
26191679	budova s číslem popisným	{4422}	Židenice	582786	\N	\N	\N	\N
26191687	budova s číslem popisným	{4423}	Židenice	582786	\N	\N	\N	\N
26191695	budova s číslem popisným	{4424}	Židenice	582786	\N	\N	\N	\N
26191709	budova s číslem popisným	{4425}	Židenice	582786	\N	\N	\N	\N
26191717	budova s číslem popisným	{4427}	Židenice	582786	\N	\N	\N	\N
26191725	budova s číslem popisným	{4428}	Židenice	582786	\N	\N	\N	\N
26191733	budova s číslem popisným	{4429}	Židenice	582786	\N	\N	\N	\N
26191741	budova s číslem popisným	{4430}	Židenice	582786	\N	\N	\N	\N
26191750	budova s číslem popisným	{4432}	Židenice	582786	\N	\N	\N	\N
26191768	budova s číslem popisným	{4433}	Židenice	582786	\N	\N	\N	\N
26191776	budova s číslem popisným	{4434}	Židenice	582786	\N	\N	\N	\N
26197669	budova s číslem popisným	{4426}	Židenice	582786	\N	\N	\N	\N
26209101	budova s číslem popisným	{4385}	Židenice	582786	\N	\N	\N	\N
26232502	budova s číslem popisným	{4438}	Židenice	582786	\N	\N	\N	\N
26232553	budova s číslem popisným	{4383}	Židenice	582786	\N	\N	\N	\N
26232791	budova s číslem popisným	{4405}	Židenice	582786	\N	\N	\N	\N
26233444	budova s číslem popisným	{4431}	Židenice	582786	\N	\N	\N	\N
26241684	budova s číslem popisným	{4345}	Židenice	582786	\N	\N	\N	\N
26241692	budova s číslem popisným	{4394}	Židenice	582786	\N	\N	\N	\N
26241706	budova s číslem popisným	{4404}	Židenice	582786	\N	\N	\N	\N
26243148	budova s číslem popisným	{4389}	Židenice	582786	\N	\N	\N	\N
26243377	budova s číslem popisným	{4396}	Židenice	582786	\N	\N	\N	\N
26257408	budova s číslem popisným	{4393}	Židenice	582786	\N	\N	\N	\N
26260034	budova s číslem popisným	{4360}	Židenice	582786	\N	\N	\N	\N
26260042	budova s číslem popisným	{4437}	Židenice	582786	\N	\N	\N	\N
26260051	budova s číslem popisným	{4390}	Židenice	582786	\N	\N	\N	\N
26261014	budova s číslem popisným	{4398}	Židenice	582786	\N	\N	\N	\N
26261031	budova s číslem popisným	{4402}	Židenice	582786	\N	\N	\N	\N
26261367	budova s číslem popisným	{4435}	Židenice	582786	\N	\N	\N	\N
26261375	budova s číslem popisným	{4386}	Židenice	582786	\N	\N	\N	\N
26261383	budova s číslem popisným	{4397}	Židenice	582786	\N	\N	\N	\N
26261472	budova s číslem popisným	{4401}	Židenice	582786	\N	\N	\N	\N
26261481	budova s číslem popisným	{4436}	Židenice	582786	\N	\N	\N	\N
26261723	budova s číslem popisným	{4395}	Židenice	582786	\N	\N	\N	\N
26741270	budova s číslem popisným	{4440}	Židenice	582786	\N	\N	\N	\N
26741288	budova s číslem popisným	{4441}	Židenice	582786	\N	\N	\N	\N
26779668	budova s číslem popisným	{4444}	Židenice	582786	\N	\N	\N	\N
26886189	budova s číslem popisným	{4445}	Židenice	582786	\N	\N	\N	\N
27010511	budova s číslem popisným	{4447}	Židenice	582786	\N	\N	\N	\N
27158497	budova s číslem popisným	{4450}	Židenice	582786	\N	\N	\N	\N
27350860	budova s číslem popisným	{4451}	Židenice	582786	\N	\N	\N	\N
27460258	budova s číslem popisným	{4456}	Židenice	582786	\N	\N	\N	\N
27481166	budova s číslem popisným	{4442}	Židenice	582786	\N	\N	\N	\N
27543307	budova s číslem popisným	{4458}	Židenice	582786	\N	\N	\N	\N
27560171	budova s číslem popisným	{4463}	Židenice	582786	\N	\N	\N	\N
27566803	budova s číslem popisným	{4459}	Židenice	582786	\N	\N	\N	\N
27583058	budova s číslem popisným	{4460}	Židenice	582786	\N	\N	\N	\N
27588858	budova s číslem popisným	{4461}	Židenice	582786	\N	\N	\N	\N
27695255	budova s číslem popisným	{4466}	Židenice	582786	\N	\N	\N	\N
27758796	budova s číslem popisným	{4467}	Židenice	582786	\N	\N	\N	\N
27758826	budova s číslem popisným	{4468}	Židenice	582786	\N	\N	\N	\N
27835979	budova s číslem popisným	{4470}	Židenice	582786	\N	\N	\N	\N
30718872	budova s číslem popisným	{4169}	Židenice	582786	\N	\N	\N	\N
30718881	budova s číslem popisným	{4180}	Židenice	582786	\N	\N	\N	\N
30718899	budova s číslem popisným	{4181}	Židenice	582786	\N	\N	\N	\N
30718902	budova s číslem popisným	{4184}	Židenice	582786	\N	\N	\N	\N
30720222	budova s číslem popisným	{59}	Židenice	582786	\N	\N	\N	\N
30720231	budova s číslem popisným	{178}	Židenice	582786	\N	\N	\N	\N
30720249	budova s číslem popisným	{210}	Židenice	582786	\N	\N	\N	\N
30720257	budova s číslem popisným	{215}	Židenice	582786	\N	\N	\N	\N
30720273	budova s číslem popisným	{293}	Židenice	582786	\N	\N	\N	\N
30720311	budova s číslem popisným	{717}	Židenice	582786	\N	\N	\N	\N
30720397	budova s číslem popisným	{3415}	Židenice	582786	\N	\N	\N	\N
30720419	budova s číslem popisným	{4382}	Židenice	582786	\N	\N	\N	\N
30720427	budova s číslem popisným	{4384}	Židenice	582786	\N	\N	\N	\N
30720435	budova s číslem popisným	{4439}	Židenice	582786	\N	\N	\N	\N
30720443	budova s číslem popisným	{4446}	Židenice	582786	\N	\N	\N	\N
30720451	budova s číslem popisným	{4449}	Židenice	582786	\N	\N	\N	\N
30720460	budova s číslem popisným	{4454}	Židenice	582786	\N	\N	\N	\N
30720478	budova s číslem popisným	{4462}	Židenice	582786	\N	\N	\N	\N
30720486	budova s číslem popisným	{4465}	Židenice	582786	\N	\N	\N	\N
30720494	budova s číslem evidenčním	{615}	Židenice	582786	\N	\N	\N	\N
30720508	budova s číslem evidenčním	{616}	Židenice	582786	\N	\N	\N	\N
30720516	budova s číslem evidenčním	{622}	Židenice	582786	\N	\N	\N	\N
30720524	budova s číslem evidenčním	{785}	Židenice	582786	\N	\N	\N	\N
30720532	budova s číslem evidenčním	{786}	Židenice	582786	\N	\N	\N	\N
30720541	budova s číslem evidenčním	{787}	Židenice	582786	\N	\N	\N	\N
30720559	budova s číslem evidenčním	{792}	Židenice	582786	\N	\N	\N	\N
30720567	budova s číslem evidenčním	{814}	Židenice	582786	\N	\N	\N	\N
30720575	budova s číslem evidenčním	{835}	Židenice	582786	\N	\N	\N	\N
30720583	budova s číslem evidenčním	{838}	Židenice	582786	\N	\N	\N	\N
30720591	budova s číslem evidenčním	{844}	Židenice	582786	\N	\N	\N	\N
30720605	budova s číslem evidenčním	{852}	Židenice	582786	\N	\N	\N	\N
30720613	budova s číslem evidenčním	{853}	Židenice	582786	\N	\N	\N	\N
30720621	budova s číslem evidenčním	{854}	Židenice	582786	\N	\N	\N	\N
30720630	budova s číslem evidenčním	{860}	Židenice	582786	\N	\N	\N	\N
30720648	budova s číslem evidenčním	{861}	Židenice	582786	\N	\N	\N	\N
30720656	budova s číslem evidenčním	{930}	Židenice	582786	\N	\N	\N	\N
30720664	budova s číslem evidenčním	{942}	Židenice	582786	\N	\N	\N	\N
30720672	budova s číslem evidenčním	{944}	Židenice	582786	\N	\N	\N	\N
30720681	budova s číslem evidenčním	{947}	Židenice	582786	\N	\N	\N	\N
30720699	budova s číslem evidenčním	{950}	Židenice	582786	\N	\N	\N	\N
30720702	budova s číslem evidenčním	{974}	Židenice	582786	\N	\N	\N	\N
30720711	budova s číslem evidenčním	{990}	Židenice	582786	\N	\N	\N	\N
30720729	budova s číslem evidenčním	{992}	Židenice	582786	\N	\N	\N	\N
30720737	budova s číslem evidenčním	{1008}	Židenice	582786	\N	\N	\N	\N
30720745	budova s číslem evidenčním	{1009}	Židenice	582786	\N	\N	\N	\N
30720753	budova s číslem evidenčním	{1011}	Židenice	582786	\N	\N	\N	\N
34281959	budova s číslem evidenčním	{782}	Židenice	582786	\N	\N	\N	\N
38030128	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
38036070	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
38096358	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
38604345	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39446034	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39446042	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467333	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467350	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467376	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467392	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467406	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467422	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467431	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467449	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467457	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467465	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467473	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39467481	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469298	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469301	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469310	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469328	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469336	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469352	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469361	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469387	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469395	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469409	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469425	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469441	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469468	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469476	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469484	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469492	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469506	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469514	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469522	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469531	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469557	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469565	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469573	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469581	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469603	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39469611	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471128	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471136	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471144	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471152	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471179	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471187	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471209	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471217	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471225	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471233	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471284	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471292	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471306	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471331	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471365	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39471381	budova s číslem popisným	{4480}	Židenice	582786	\N	\N	\N	\N
39471403	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472809	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472825	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472833	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472841	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472850	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472868	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472892	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472906	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472914	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472922	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472931	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472957	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472973	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472981	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39472990	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473007	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473015	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473023	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473031	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473040	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473058	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473066	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473074	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473082	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473091	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473104	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473112	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39473121	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474364	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474372	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474399	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474402	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474411	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474437	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474445	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474453	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474461	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474470	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474488	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474496	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474526	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474534	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474542	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474551	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39474577	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475859	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475867	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475905	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475913	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475930	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475956	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475964	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475972	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475981	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39475999	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39476006	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39476014	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39476022	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477100	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477118	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477126	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477134	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477142	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477169	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477177	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477193	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477207	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477215	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477223	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477231	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477240	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477258	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477274	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477282	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477291	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477339	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477347	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39477355	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478718	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478734	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478742	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478769	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478777	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478793	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478807	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478815	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478823	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478831	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478840	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478858	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478866	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478874	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478882	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478891	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478904	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478912	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478921	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478939	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478980	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39478998	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39479005	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480321	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480330	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480348	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480364	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480372	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480381	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480399	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480402	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480411	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480429	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480470	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39480488	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39482111	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39482138	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39482146	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39482162	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39482171	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483886	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483894	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483908	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483916	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483924	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483932	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483967	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483975	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483983	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39483991	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484009	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484025	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484041	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484068	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484076	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484092	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484106	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484114	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484122	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484131	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484149	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39484157	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485064	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485081	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485099	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485102	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485111	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485153	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485170	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485188	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485196	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485218	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485226	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485234	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485242	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485251	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485269	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485277	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485285	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485293	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485307	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485315	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485331	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485340	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485358	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485366	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485374	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39485391	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486311	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486338	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486346	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486362	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486389	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486397	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486401	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486435	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486443	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486460	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486478	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486486	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486494	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486508	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486516	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486524	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486567	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486575	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39486583	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487628	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487636	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487644	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487679	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487709	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487717	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487741	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487750	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487776	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487784	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487814	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487849	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487857	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487865	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487873	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487881	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487890	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487903	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487938	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487946	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487954	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487962	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487989	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39487997	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488004	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488012	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488021	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488845	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488861	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488870	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488896	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488900	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488918	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488926	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488934	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488942	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488951	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488985	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39488993	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489001	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489027	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489060	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489108	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489141	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489159	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489167	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489175	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489183	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489191	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489213	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489221	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489230	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489248	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39489256	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490203	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490211	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490220	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490238	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490378	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490394	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490408	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490416	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490424	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490432	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490441	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490459	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490467	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39490475	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39511545	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39591981	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39591999	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
39914411	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41190475	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41226305	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41244095	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41313607	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41332814	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41336461	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41352742	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41361423	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41379471	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41383214	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41385519	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41410793	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41422198	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41439651	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41455932	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41456114	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41456564	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41472667	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41485602	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41488938	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41489063	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41490568	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41490576	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41491998	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41503244	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41509803	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41513339	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41522877	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41522885	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41527305	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41541472	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41544358	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41567439	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41567447	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41567455	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41606621	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41615701	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41615719	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41623410	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41631943	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41644981	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41680294	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41688180	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41699670	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41703561	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41703570	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41718429	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41731204	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41731913	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41742273	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41744586	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41748549	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41836847	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41838530	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41851617	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41898974	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41900201	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41901533	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41906357	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41914961	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41917693	budova s číslem popisným	{4513}	Židenice	582786	\N	\N	\N	\N
41919726	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41950151	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
41974425	budova s číslem popisným	{4517}	Židenice	582786	\N	\N	\N	\N
42009341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42011566	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42026768	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42026776	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42039053	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42039444	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42052009	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42053731	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42053951	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42059518	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42090415	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42143161	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42145481	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42155266	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42158265	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42177022	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42182336	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42191696	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42202264	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42241758	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42250587	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42250595	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42269881	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42285216	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42294622	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42302170	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42308135	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42308437	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42341680	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42342384	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42342392	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42348285	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42348293	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42356008	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42389518	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42389526	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42389534	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42389542	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42400392	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42411416	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42418127	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42424119	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42438438	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42443555	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42446562	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42487820	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42500249	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42540551	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42552826	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42554551	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42596050	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42603773	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42612055	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42617952	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42697271	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42704847	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42705312	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42717388	budova s číslem popisným	{4482}	Židenice	582786	\N	\N	\N	\N
42754038	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42790263	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42800790	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42824796	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42876184	budova s číslem evidenčním	{1014}	Židenice	582786	\N	\N	\N	\N
42900344	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42907772	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
42952379	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43039863	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43039871	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43052959	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43123945	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43144055	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43149511	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43160565	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43280706	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43397859	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43447201	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43466915	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43607080	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43607128	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43608442	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43608451	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43608469	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43608485	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43608493	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43609813	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43622216	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43622259	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43623492	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43624758	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43624766	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43624791	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
43776353	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44042809	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44056800	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44567022	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44590288	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44612656	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44658729	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
44673116	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45523223	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45523231	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45523240	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542333	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542350	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542368	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542376	budova s číslem evidenčním	{1019}	Židenice	582786	\N	\N	\N	\N
45542384	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542392	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542414	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542422	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542457	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542465	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45542473	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543011	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543020	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543038	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543046	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543313	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543321	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543585	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543593	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543607	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543615	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543623	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543631	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543640	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543666	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543674	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543691	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543704	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543712	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543721	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543739	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543747	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543755	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543801	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543810	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543828	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45543836	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45544212	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45544239	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45544450	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45544476	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45544484	budova s číslem evidenčním	{1017}	Židenice	582786	\N	\N	\N	\N
45544492	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545588	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545596	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545600	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545618	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545626	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545634	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545642	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545731	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45545740	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45546070	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45546444	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547394	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547408	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547416	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547467	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547475	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547483	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547513	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547521	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547670	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547858	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547866	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45547874	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548684	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548692	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548765	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548773	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548781	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548790	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548803	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548862	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548871	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548889	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548897	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548901	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548935	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548960	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45548994	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45549001	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45549010	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45549028	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45549168	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550123	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550131	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550140	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550158	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550166	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550174	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550182	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550191	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550221	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45550468	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551090	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551855	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551863	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551871	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551880	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551898	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551901	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551910	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551928	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551936	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551944	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551952	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551961	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551979	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551987	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45551995	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552002	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552011	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552029	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552037	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552045	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45552711	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553378	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553386	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553394	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553955	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553963	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553971	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553980	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45553998	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45554005	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45554277	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45555087	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45555095	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45555273	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45555281	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45555401	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556326	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556334	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556342	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556351	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556369	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556377	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556385	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556393	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556415	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556857	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45556865	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558035	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558043	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558051	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558060	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558078	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558124	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558132	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558141	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558159	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558167	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558175	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558183	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558191	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558205	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558221	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558230	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558248	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558272	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558281	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558426	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558434	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558469	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558477	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558485	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558698	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45558701	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559864	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559872	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559881	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559899	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559902	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559911	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559929	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559937	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559945	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559953	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559961	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559970	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559988	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45559996	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560005	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560013	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560021	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560030	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560048	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560064	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560072	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560081	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560099	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560102	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560111	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560129	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560137	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560145	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560200	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45560994	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561001	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561010	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561028	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561036	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561044	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561052	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561061	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561079	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561087	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561095	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561109	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561117	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561125	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561133	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561265	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561273	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561281	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561290	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561303	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561338	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561346	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561362	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561371	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561389	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561427	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561877	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45561885	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45562946	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45562954	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563551	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563560	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563578	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563969	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563977	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45563985	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45564027	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45564698	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565112	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565678	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565686	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565805	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565911	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565929	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565953	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45565961	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566721	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566739	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566747	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566755	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566763	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566771	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566780	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566798	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566801	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566844	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566852	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566861	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566909	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566917	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566925	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566933	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566941	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45566968	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45567255	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568138	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568146	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568154	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568171	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568189	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568197	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568201	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568219	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568227	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568235	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568243	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568260	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568278	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568286	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568294	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568324	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568332	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568359	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568383	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568391	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568405	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568413	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568553	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45568570	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569649	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569657	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569673	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569681	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569703	budova s číslem evidenčním	{1018}	Židenice	582786	\N	\N	\N	\N
45569720	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45569746	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45570531	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45570868	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45570876	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571091	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571104	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571112	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571121	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571139	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571147	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571465	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571520	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571546	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571562	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571589	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571597	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45571619	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572542	budova s číslem popisným	{2687}	Židenice	582786	\N	\N	\N	\N
45572551	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572569	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572577	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572607	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572615	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572623	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572844	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572887	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572895	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572909	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572917	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572925	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572933	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572941	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572968	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572976	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45572984	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45573760	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45573778	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45573786	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45573808	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574057	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574405	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574413	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574421	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574430	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574456	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574464	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574472	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574481	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574499	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574502	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574511	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574529	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45574537	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45575100	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45575240	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45575258	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45575835	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576122	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576131	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576149	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576157	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576165	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576173	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576181	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576190	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45576203	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577510	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577528	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577536	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577544	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577552	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577561	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577579	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577587	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577595	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577617	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577625	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577633	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577641	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577684	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577692	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577706	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577714	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577731	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45577846	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45578974	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45578982	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45578991	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579008	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579016	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579091	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579121	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579130	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579148	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579156	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579164	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579172	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579181	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579202	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579211	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579229	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579237	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579245	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579253	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579261	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579342	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45579351	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580383	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580405	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580413	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580511	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580588	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580596	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580600	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580618	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580626	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580634	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580642	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580651	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580669	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580677	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580685	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580693	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580707	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45580715	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582157	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582173	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582181	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582203	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582262	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45582271	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583820	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583871	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583901	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583919	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583935	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583943	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583951	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45583960	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45584001	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45584711	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585211	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585229	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585245	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585253	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585261	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585270	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45585288	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45702667	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
45703591	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
46145206	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
46145753	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
46629386	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
46804889	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47684771	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47709987	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47720484	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47749440	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47768835	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47772921	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47773731	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47782056	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47786469	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47813555	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47814322	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47825669	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47838744	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47856831	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47856858	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47902582	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47921510	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
47998270	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48008117	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48026484	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48026492	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48031984	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48036714	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48051063	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48059960	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48067407	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48071269	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48071277	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48083411	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48083429	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48087971	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48096636	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105589	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105716	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105724	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105732	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105741	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48105759	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48127540	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48160458	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48223662	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48240257	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48246514	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48248282	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48248614	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48249858	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48249866	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48251658	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48267791	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48267805	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48275212	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48279757	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48326208	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48327093	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48333182	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48354236	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48368903	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48395021	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48446408	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48450341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48460079	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48463213	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48499439	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48508781	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48516007	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48552399	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48552402	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48560341	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48570583	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48575232	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48652547	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48669598	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48676845	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48680702	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48684597	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48722791	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48722804	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48731731	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48752711	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48787175	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48789089	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48804312	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48814270	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48818321	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48821403	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48822582	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48857769	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48857777	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48872016	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48875686	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48884766	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48897558	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48904741	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48911585	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48930474	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48931209	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48932752	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48947768	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48947784	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48947806	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48948071	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48969958	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
48977713	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49071238	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49082060	budova s číslem popisným	{4498}	Židenice	582786	\N	\N	\N	\N
49137182	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49153820	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49274490	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49343262	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49419846	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49437615	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49437976	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49438662	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49558421	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49571702	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49575601	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49592955	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49655311	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49700456	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49706713	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49747151	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49770527	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49835351	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49866591	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49868462	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49882392	budova s číslem evidenčním	{1015}	Židenice	582786	\N	\N	\N	\N
49895648	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49924231	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49960458	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49963619	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49979281	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
49994557	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50052454	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50060040	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50065491	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50071742	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50153501	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50153552	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50153561	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50153692	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50162934	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50163086	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50163094	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50165810	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50172191	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50172212	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50172221	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50172239	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50172280	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50309277	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50319931	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50357484	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50357492	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50371762	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
50524038	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
51506441	budova s číslem popisným	{4471}	Židenice	582786	\N	\N	\N	\N
51507081	budova s číslem popisným	{4472}	Židenice	582786	\N	\N	\N	\N
51647427	budova s číslem evidenčním	{1016}	Židenice	582786	\N	\N	\N	\N
51707926	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
51708043	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
51708060	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
51778378	budova s číslem popisným	{4473}	Židenice	582786	\N	\N	\N	\N
51960958	budova s číslem popisným	{4475}	Židenice	582786	\N	\N	\N	\N
51993911	budova s číslem popisným	{4474}	Židenice	582786	\N	\N	\N	\N
52088634	budova s číslem popisným	{4476}	Židenice	582786	\N	\N	\N	\N
52138747	budova s číslem popisným	{4477}	Židenice	582786	\N	\N	\N	\N
52152251	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
53759206	budova s číslem popisným	{4478}	Židenice	582786	\N	\N	\N	\N
53818776	budova s číslem popisným	{4479}	Židenice	582786	\N	\N	\N	\N
54124018	budova s číslem popisným	{4481}	Židenice	582786	\N	\N	\N	\N
54598885	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
54633249	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
54633320	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
54633397	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
61692484	budova s číslem popisným	{4483}	Židenice	582786	\N	\N	\N	\N
62769723	budova s číslem popisným	{4484}	Židenice	582786	\N	\N	\N	\N
70980837	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
71720804	budova s číslem popisným	{4485}	Židenice	582786	\N	\N	\N	\N
76960111	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
77783891	budova s číslem popisným	{4486}	Židenice	582786	\N	\N	\N	\N
77801784	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
77816552	budova s číslem popisným	{4487}	Židenice	582786	\N	\N	\N	\N
77886569	budova s číslem popisným	{4488}	Židenice	582786	\N	\N	\N	\N
77906624	budova s číslem popisným	{4489}	Židenice	582786	\N	\N	\N	\N
77960696	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
77969146	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
78021561	budova s číslem evidenčním	{1020}	Židenice	582786	\N	\N	\N	\N
78122651	budova s číslem evidenčním	{866}	Židenice	582786	\N	\N	\N	\N
78292115	budova s číslem evidenčním	{867}	Židenice	582786	\N	\N	\N	\N
78988608	budova s číslem popisným	{4491}	Židenice	582786	\N	\N	\N	\N
79486053	budova s číslem popisným	{4492}	Židenice	582786	\N	\N	\N	\N
79818145	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
79942491	budova s číslem popisným	{4493}	Židenice	582786	\N	\N	\N	\N
80192882	budova s číslem evidenčním	{865}	Židenice	582786	\N	\N	\N	\N
80506569	budova s číslem popisným	{4494}	Židenice	582786	\N	\N	\N	\N
80578454	budova s číslem popisným	{4495}	Židenice	582786	\N	\N	\N	\N
81441894	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
81473672	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
82169853	budova s číslem popisným	{4496}	Židenice	582786	\N	\N	\N	\N
82292337	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
82645795	budova s číslem popisným	{4497}	Židenice	582786	\N	\N	\N	\N
83177132	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
83364510	budova s číslem popisným	{4499}	Židenice	582786	\N	\N	\N	\N
83754903	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
83834605	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
83851020	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
84005831	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
87145413	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
88605973	budova s číslem evidenčním	{673}	Židenice	582786	\N	\N	\N	\N
88614913	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
89069218	budova s číslem popisným	{4502}	Židenice	582786	\N	\N	\N	\N
89405625	budova s číslem popisným	{4503}	Židenice	582786	\N	\N	\N	\N
89507444	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
89599799	budova s číslem popisným	{4500}	Židenice	582786	\N	\N	\N	\N
90052455	budova s číslem popisným	{4504}	Židenice	582786	\N	\N	\N	\N
90062345	budova s číslem popisným	{4505}	Židenice	582786	\N	\N	\N	\N
90062914	budova s číslem popisným	{4506}	Židenice	582786	\N	\N	\N	\N
90897200	budova s číslem popisným	{4507}	Židenice	582786	\N	\N	\N	\N
91031851	budova s číslem popisným	{4508}	Židenice	582786	\N	\N	\N	\N
91756723	budova s číslem popisným	{4509}	Židenice	582786	\N	\N	\N	\N
92148301	budova s číslem popisným	{4501}	Židenice	582786	\N	\N	\N	\N
92148484	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
92342795	budova s číslem popisným	{4510}	Židenice	582786	\N	\N	\N	\N
92366287	budova s číslem popisným	{4511}	Židenice	582786	\N	\N	\N	\N
92370284	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
92440541	budova s číslem popisným	{4512}	Židenice	582786	\N	\N	\N	\N
92749623	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
92750168	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
92785425	budova s číslem evidenčním	{1021}	Židenice	582786	\N	\N	\N	\N
93624298	budova s číslem popisným	{4514}	Židenice	582786	\N	\N	\N	\N
93719256	budova s číslem popisným	{4515}	Židenice	582786	\N	\N	\N	\N
93779356	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
93815883	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
93985029	budova s číslem popisným	{4516}	Židenice	582786	\N	\N	\N	\N
94073996	budova s číslem popisným	{4518}	Židenice	582786	\N	\N	\N	\N
94732302	budova bez č.p. i č.ev.	{}	\N	582786	\N	\N	\N	\N
96339764	budova s číslem popisným	{4519}	Židenice	582786	\N	\N	\N	\N
97839191	budova s číslem evidenčním	{868}	Židenice	582786	\N	\N	\N	\N
98474057	budova s číslem popisným	{4522}	Židenice	582786	\N	\N	\N	\N
98730789	budova s číslem popisným	{4521}	Židenice	582786	\N	\N	\N	\N
\.


--
-- TOC entry 2700 (class 2606 OID 16538)
-- Name: budovy_seznam StavebniObjekt_pkey; Type: CONSTRAINT; Schema: sproject; Owner: postgres
--

ALTER TABLE ONLY sproject.budovy_seznam
    ADD CONSTRAINT "StavebniObjekt_pkey" PRIMARY KEY (kod_budovy);


-- Completed on 2019-12-27 20:47:32

--
-- PostgreSQL database dump complete
--

