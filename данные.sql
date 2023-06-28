--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-28 17:19:42

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

--
-- TOC entry 3333 (class 1262 OID 19545)
-- Name: vending; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE vending WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


\connect vending

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

--
-- TOC entry 3325 (class 0 OID 19547)
-- Dependencies: 215
-- Data for Name: coins; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (408, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (409, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (410, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (445, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (411, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (446, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (413, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (447, 1, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (417, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (414, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (416, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (418, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (419, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (389, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (450, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (449, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (420, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (448, 1, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (451, 1, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (452, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (453, 1, 0);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (398, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (454, 1, 0);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (427, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (399, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (400, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (401, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (402, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (403, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (428, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (404, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (430, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (432, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (405, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (455, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (434, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (458, 1, 0);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (459, 1, 0);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (456, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (435, 5, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (457, 2, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (437, 1, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (438, 1, 1);
INSERT INTO public.coins ("Id", "CoinNum", storage) VALUES (439, 1, 1);


--
-- TOC entry 3327 (class 0 OID 19553)
-- Dependencies: 217
-- Data for Name: warhouse; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (22, 'Шоколадка Вкусняшка', 2, 9);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (20, 'Ядерная кола', 4, 12);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (27, 'Чипсы Энергия', 8, 9);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (24, 'Орехи', 5, 10);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (21, 'Пирожок Энергия', 1, 5);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (26, 'Что-то вкусное', 5, 13);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (28, 'Газировка Легкость', 5, 11);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (23, 'Чипсы Милота', 3, 9);
INSERT INTO public.warhouse ("Id", "Name", "Price", "Count") VALUES (29, 'Чипсы Любаша', 4, 6);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 214
-- Name: coins_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."coins_Id_seq"', 459, true);


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 216
-- Name: warhouse_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."warhouse_Id_seq"', 29, true);


-- Completed on 2023-06-28 17:19:42

--
-- PostgreSQL database dump complete
--

