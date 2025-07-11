--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-06-27 16:25:26

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
-- TOC entry 219 (class 1259 OID 16398)
-- Name: boxoffice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boxoffice (
    movie_id integer,
    domestic_sales bigint,
    international_sales bigint
);


ALTER TABLE public.boxoffice OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16392)
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    title character varying(100),
    director character varying(100),
    release_year integer
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16391)
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.movies_id_seq OWNER TO postgres;

--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 217
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- TOC entry 4699 (class 2604 OID 16395)
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- TOC entry 4850 (class 0 OID 16398)
-- Dependencies: 219
-- Data for Name: boxoffice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boxoffice (movie_id, domestic_sales, international_sales) FROM stdin;
1	292000000	535000000
2	171000000	292000000
3	188000000	489000000
\.


--
-- TOC entry 4849 (class 0 OID 16392)
-- Dependencies: 218
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, title, director, release_year) FROM stdin;
1	Inception	Christopher Nolan	2010
2	The Matrix	The Wachowskis	1999
3	Interstellar	Christopher Nolan	2014
\.


--
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 217
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 3, true);


--
-- TOC entry 4701 (class 2606 OID 16397)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 16401)
-- Name: boxoffice boxoffice_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boxoffice
    ADD CONSTRAINT boxoffice_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id);


-- Completed on 2025-06-27 16:25:27

--
-- PostgreSQL database dump complete
--

