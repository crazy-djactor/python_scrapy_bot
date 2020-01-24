/*
 Navicat Premium Data Transfer

 Source Server         : postgre
 Source Server Type    : PostgreSQL
 Source Server Version : 120001
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : sproject

 Target Server Type    : PostgreSQL
 Target Server Version : 120001
 File Encoding         : 65001

 Date: 20/01/2020 10:20:12
*/


-- ----------------------------
-- Table structure for budovy
-- ----------------------------
DROP TABLE IF EXISTS "sproject"."budovy";
CREATE TABLE "sproject"."budovy" (
  "kod_budovy" int4,
  "cislo_lv" int4,
  "vymera" int4,
  "druh_pozemku" text COLLATE "pg_catalog"."default",
  "budova_s_cislem" text COLLATE "pg_catalog"."default",
  "adresni_mista" text[] COLLATE "pg_catalog"."default",
  "omezeni_vlastnickeho_prava" text[] COLLATE "pg_catalog"."default",
  "jine_zapisy" text[] COLLATE "pg_catalog"."default",
  "rizeni_cenovy_udaj" text COLLATE "pg_catalog"."default",
  "zpusob_vyuziti" text COLLATE "pg_catalog"."default",
  "cislo_jednotky" text[] COLLATE "pg_catalog"."default",
  "date_change" date,
  "invalid_record" bool,
  "parcelni_cislo" text COLLATE "pg_catalog"."default",
  "check_sum" text COLLATE "pg_catalog"."default",
  "date_last" date,
  "date_last_ok" date
)
;

-- ----------------------------
-- Table structure for budovy_seznam
-- ----------------------------
DROP TABLE IF EXISTS "sproject"."budovy_seznam";
CREATE TABLE "sproject"."budovy_seznam" (
  "kod_budovy" int4 NOT NULL,
  "typ_stavebniho_objektu" text COLLATE "pg_catalog"."default",
  "cislo_domovni" int4[],
  "nazev_casti_obce" text COLLATE "pg_catalog"."default",
  "kod_obce" int4,
  "date_change" timestamp(6),
  "date_last_OK" timestamp(6),
  "date_last" timestamp(6),
  "error_description" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for jednotky
-- ----------------------------
DROP TABLE IF EXISTS "sproject"."jednotky";
CREATE TABLE "sproject"."jednotky" (
  "kod_budovy" int4,
  "typ_jednotky" text COLLATE "pg_catalog"."default",
  "cislo_lv_jednotka" int4,
  "date_change" date,
  "invalid_record" bool,
  "zpusob_vyuziti_jednotky" text COLLATE "pg_catalog"."default",
  "podil_spol_casti" text COLLATE "pg_catalog"."default",
  "checksum" text COLLATE "pg_catalog"."default",
  "cislo_jednotky" text[] COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for vlastnici
-- ----------------------------
DROP TABLE IF EXISTS "sproject"."vlastnici";
CREATE TABLE "sproject"."vlastnici" (
  "kod_budovy" int4,
  "vlastnicke_pravo" text COLLATE "pg_catalog"."default",
  "podil" text COLLATE "pg_catalog"."default",
  "date_change" date,
  "invalid_record" bool,
  "cislo_jednotky" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table budovy_seznam
-- ----------------------------
ALTER TABLE "sproject"."budovy_seznam" ADD CONSTRAINT "StavebniObjekt_pkey" PRIMARY KEY ("kod_budovy");
