--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-16 02:52:14

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
-- TOC entry 218 (class 1259 OID 16453)
-- Name: documents_storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documents_storage (
    id integer NOT NULL,
    doc_path character varying NOT NULL
);


ALTER TABLE public.documents_storage OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16452)
-- Name: documents_storage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documents_storage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documents_storage_id_seq OWNER TO postgres;

--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 217
-- Name: documents_storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documents_storage_id_seq OWNED BY public.documents_storage.id;


--
-- TOC entry 216 (class 1259 OID 16446)
-- Name: gender_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gender_type (
    id integer NOT NULL,
    gender character varying(10) NOT NULL
);


ALTER TABLE public.gender_type OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16445)
-- Name: gender_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gender_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gender_type_id_seq OWNER TO postgres;

--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 215
-- Name: gender_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gender_type_id_seq OWNED BY public.gender_type.id;


--
-- TOC entry 222 (class 1259 OID 16471)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    phone character varying(50) NOT NULL,
    city character varying NOT NULL,
    gender_id integer,
    document_id integer,
    account_id integer
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16462)
-- Name: user_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_account (
    id integer NOT NULL,
    login character varying NOT NULL,
    password character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.user_account OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16461)
-- Name: user_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_account_id_seq OWNER TO postgres;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;


--
-- TOC entry 221 (class 1259 OID 16470)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 4704 (class 2604 OID 16456)
-- Name: documents_storage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents_storage ALTER COLUMN id SET DEFAULT nextval('public.documents_storage_id_seq'::regclass);


--
-- TOC entry 4703 (class 2604 OID 16449)
-- Name: gender_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gender_type ALTER COLUMN id SET DEFAULT nextval('public.gender_type_id_seq'::regclass);


--
-- TOC entry 4706 (class 2604 OID 16474)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 4705 (class 2604 OID 16465)
-- Name: user_account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);


--
-- TOC entry 4870 (class 0 OID 16453)
-- Dependencies: 218
-- Data for Name: documents_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.documents_storage (id, doc_path) FROM stdin;
1	l3BiTFnGb5rFv4cP2sWrjLO7evu9BMtXW2hVHGKc.jpg
\.


--
-- TOC entry 4868 (class 0 OID 16446)
-- Dependencies: 216
-- Data for Name: gender_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gender_type (id, gender) FROM stdin;
0	male
1	female
\.


--
-- TOC entry 4874 (class 0 OID 16471)
-- Dependencies: 222
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, phone, city, gender_id, document_id, account_id) FROM stdin;
1	+79999999999	Volgograd	0	1	3
\.


--
-- TOC entry 4872 (class 0 OID 16462)
-- Dependencies: 220
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_account (id, login, password, email) FROM stdin;
3	mresbens	eyJpdiI6Imh3VGhHclhrelFmYS96b2xzWXV3VXc9PSIsInZhbHVlIjoiUmNiZkFuaE5jYWVBZktTejk0S2VlZz09IiwibWFjIjoiMzBhM2QyODY3ZmQ5ZmY3N2MzMjgwM2I5YWIwYmQ4MzMyODM4ZWMwZmMxZmRmOTRlNTAzZDIwOWQwN2I4YjEzNiIsInRhZyI6IiJ9	mresbens@mail.ru
\.


--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 217
-- Name: documents_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documents_storage_id_seq', 1, true);


--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 215
-- Name: gender_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gender_type_id_seq', 1, false);


--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_account_id_seq', 3, true);


--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, true);


--
-- TOC entry 4710 (class 2606 OID 16460)
-- Name: documents_storage documents_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documents_storage
    ADD CONSTRAINT documents_storage_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16451)
-- Name: gender_type gender_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gender_type
    ADD CONSTRAINT gender_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4714 (class 2606 OID 16484)
-- Name: user user_account_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_account_id_key UNIQUE (account_id);


--
-- TOC entry 4712 (class 2606 OID 16469)
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);


--
-- TOC entry 4716 (class 2606 OID 16482)
-- Name: user user_document_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_document_id_key UNIQUE (document_id);


--
-- TOC entry 4718 (class 2606 OID 16480)
-- Name: user user_gender_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_gender_id_key UNIQUE (gender_id);


--
-- TOC entry 4720 (class 2606 OID 16478)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 4721 (class 2606 OID 16495)
-- Name: user user_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.user_account(id);


--
-- TOC entry 4722 (class 2606 OID 16490)
-- Name: user user_document_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_document_id_fkey FOREIGN KEY (document_id) REFERENCES public.documents_storage(id);


--
-- TOC entry 4723 (class 2606 OID 16485)
-- Name: user user_gender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES public.gender_type(id);


-- Completed on 2023-11-16 02:52:14

--
-- PostgreSQL database dump complete
--

