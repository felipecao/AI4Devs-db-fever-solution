--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2025-03-04 14:57:43 GMT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 215 (class 1259 OID 16389)
-- Name: colors; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.colors (
    id bigint,
    name text,
    rgb text,
    is_trans text
);


ALTER TABLE public.colors OWNER TO lego;

--
-- TOC entry 216 (class 1259 OID 16394)
-- Name: inventories; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.inventories (
    id bigint,
    version bigint,
    set_num text
);


ALTER TABLE public.inventories OWNER TO lego;

--
-- TOC entry 222 (class 1259 OID 16424)
-- Name: inventory_parts; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.inventory_parts (
    inventory_id bigint,
    part_num text,
    color_id bigint,
    quantity bigint,
    is_spare text
);


ALTER TABLE public.inventory_parts OWNER TO lego;

--
-- TOC entry 217 (class 1259 OID 16399)
-- Name: inventory_sets; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.inventory_sets (
    inventory_id bigint,
    set_num text,
    quantity bigint
);


ALTER TABLE public.inventory_sets OWNER TO lego;

--
-- TOC entry 218 (class 1259 OID 16404)
-- Name: part_categories; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.part_categories (
    id bigint,
    name text
);


ALTER TABLE public.part_categories OWNER TO lego;

--
-- TOC entry 220 (class 1259 OID 16414)
-- Name: parts; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.parts (
    part_num text,
    name text,
    part_cat_id bigint
);


ALTER TABLE public.parts OWNER TO lego;

--
-- TOC entry 221 (class 1259 OID 16419)
-- Name: sets; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.sets (
    set_num text,
    name text,
    year bigint,
    theme_id bigint,
    num_parts bigint
);


ALTER TABLE public.sets OWNER TO lego;

--
-- TOC entry 219 (class 1259 OID 16409)
-- Name: themes; Type: TABLE; Schema: public; Owner: lego
--

CREATE TABLE public.themes (
    id bigint,
    name text,
    parent_id text
);


ALTER TABLE public.themes OWNER TO lego;

-- Completed on 2025-03-04 14:57:43 GMT

--
-- PostgreSQL database dump complete
--

