--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_game;
--
-- Name: number_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_game OWNER TO freecodecamp;

\connect number_game

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer,
    username character varying(22)
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_user_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_user_id_seq OWNED BY public.usernames.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN user_id SET DEFAULT nextval('public.usernames_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 'd');
INSERT INTO public.games VALUES (2, 0, 'd');
INSERT INTO public.games VALUES (3, 0, 'd');
INSERT INTO public.games VALUES (4, 0, 'd');
INSERT INTO public.games VALUES (5, 0, 'd');
INSERT INTO public.games VALUES (6, 240, 'user_1717650135018');
INSERT INTO public.games VALUES (7, 783, 'user_1717650135018');
INSERT INTO public.games VALUES (8, 560, 'user_1717650135017');
INSERT INTO public.games VALUES (9, 298, 'user_1717650135017');
INSERT INTO public.games VALUES (10, 446, 'user_1717650135018');
INSERT INTO public.games VALUES (11, 552, 'user_1717650135018');
INSERT INTO public.games VALUES (12, 844, 'user_1717650135018');
INSERT INTO public.games VALUES (13, 871, 'user_1717650253947');
INSERT INTO public.games VALUES (14, 988, 'user_1717650253947');
INSERT INTO public.games VALUES (15, 297, 'user_1717650253946');
INSERT INTO public.games VALUES (16, 957, 'user_1717650253946');
INSERT INTO public.games VALUES (17, 54, 'user_1717650253947');
INSERT INTO public.games VALUES (18, 953, 'user_1717650253947');
INSERT INTO public.games VALUES (19, 402, 'user_1717650253947');
INSERT INTO public.games VALUES (20, 8, 'd');
INSERT INTO public.games VALUES (21, 184, 'user_1717650351112');
INSERT INTO public.games VALUES (22, 530, 'user_1717650351112');
INSERT INTO public.games VALUES (23, 552, 'user_1717650351111');
INSERT INTO public.games VALUES (24, 833, 'user_1717650351111');
INSERT INTO public.games VALUES (25, 322, 'user_1717650351112');
INSERT INTO public.games VALUES (26, 7, 'user_1717650351112');
INSERT INTO public.games VALUES (27, 260, 'user_1717650351112');
INSERT INTO public.games VALUES (28, 14, 'd');
INSERT INTO public.games VALUES (29, 54, 'user_1717650417976');
INSERT INTO public.games VALUES (30, 481, 'user_1717650417976');
INSERT INTO public.games VALUES (31, 708, 'user_1717650417975');
INSERT INTO public.games VALUES (32, 514, 'user_1717650417975');
INSERT INTO public.games VALUES (33, 162, 'user_1717650417976');
INSERT INTO public.games VALUES (34, 870, 'user_1717650417976');
INSERT INTO public.games VALUES (35, 929, 'user_1717650417976');
INSERT INTO public.games VALUES (36, 933, 'user_1717650492754');
INSERT INTO public.games VALUES (37, 367, 'user_1717650492754');
INSERT INTO public.games VALUES (38, 859, 'user_1717650492753');
INSERT INTO public.games VALUES (39, 70, 'user_1717650492753');
INSERT INTO public.games VALUES (40, 691, 'user_1717650492754');
INSERT INTO public.games VALUES (41, 801, 'user_1717650492754');
INSERT INTO public.games VALUES (42, 872, 'user_1717650492754');
INSERT INTO public.games VALUES (43, 620, 'user_1717650539247');
INSERT INTO public.games VALUES (44, 285, 'user_1717650539247');
INSERT INTO public.games VALUES (45, 116, 'user_1717650539246');
INSERT INTO public.games VALUES (46, 421, 'user_1717650539246');
INSERT INTO public.games VALUES (47, 278, 'user_1717650539247');
INSERT INTO public.games VALUES (48, 408, 'user_1717650539247');
INSERT INTO public.games VALUES (49, 129, 'user_1717650539247');
INSERT INTO public.games VALUES (50, 167, 'user_1717650546668');
INSERT INTO public.games VALUES (51, 201, 'user_1717650546668');
INSERT INTO public.games VALUES (52, 954, 'user_1717650546667');
INSERT INTO public.games VALUES (53, 119, 'user_1717650546667');
INSERT INTO public.games VALUES (54, 205, 'user_1717650546668');
INSERT INTO public.games VALUES (55, 279, 'user_1717650546668');
INSERT INTO public.games VALUES (56, 596, 'user_1717650546668');
INSERT INTO public.games VALUES (57, 8, 'abc');
INSERT INTO public.games VALUES (58, 8, 'abc');
INSERT INTO public.games VALUES (59, 7, 'abc');
INSERT INTO public.games VALUES (60, 710, 'user_1717650695036');
INSERT INTO public.games VALUES (61, 439, 'user_1717650695036');
INSERT INTO public.games VALUES (62, 182, 'user_1717650695035');
INSERT INTO public.games VALUES (63, 265, 'user_1717650695035');
INSERT INTO public.games VALUES (64, 542, 'user_1717650695036');
INSERT INTO public.games VALUES (65, 334, 'user_1717650695036');
INSERT INTO public.games VALUES (66, 425, 'user_1717650695036');
INSERT INTO public.games VALUES (67, 965, 'user_1717650728023');
INSERT INTO public.games VALUES (68, 389, 'user_1717650728023');
INSERT INTO public.games VALUES (69, 858, 'user_1717650728022');
INSERT INTO public.games VALUES (70, 404, 'user_1717650728022');
INSERT INTO public.games VALUES (71, 834, 'user_1717650728023');
INSERT INTO public.games VALUES (72, 384, 'user_1717650728023');
INSERT INTO public.games VALUES (73, 501, 'user_1717650728023');
INSERT INTO public.games VALUES (74, 621, 'user_1717650802812');
INSERT INTO public.games VALUES (75, 560, 'user_1717650802812');
INSERT INTO public.games VALUES (76, 702, 'user_1717650802811');
INSERT INTO public.games VALUES (77, 756, 'user_1717650802811');
INSERT INTO public.games VALUES (78, 894, 'user_1717650802812');
INSERT INTO public.games VALUES (79, 204, 'user_1717650802812');
INSERT INTO public.games VALUES (80, 323, 'user_1717650802812');
INSERT INTO public.games VALUES (81, 186, 'user_1717650840195');
INSERT INTO public.games VALUES (82, 672, 'user_1717650840195');
INSERT INTO public.games VALUES (83, 833, 'user_1717650840194');
INSERT INTO public.games VALUES (84, 212, 'user_1717650840194');
INSERT INTO public.games VALUES (85, 530, 'user_1717650840195');
INSERT INTO public.games VALUES (86, 363, 'user_1717650840195');
INSERT INTO public.games VALUES (87, 989, 'user_1717650840195');


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (1, 'Joan');
INSERT INTO public.usernames VALUES (2, 'Jo');
INSERT INTO public.usernames VALUES (3, 'A');
INSERT INTO public.usernames VALUES (4, 'B');
INSERT INTO public.usernames VALUES (5, 'C');
INSERT INTO public.usernames VALUES (6, 'D');
INSERT INTO public.usernames VALUES (7, 'd');
INSERT INTO public.usernames VALUES (8, 'user_1717650135018');
INSERT INTO public.usernames VALUES (9, 'user_1717650135017');
INSERT INTO public.usernames VALUES (10, 'user_1717650253947');
INSERT INTO public.usernames VALUES (11, 'user_1717650253946');
INSERT INTO public.usernames VALUES (12, 'user_1717650351112');
INSERT INTO public.usernames VALUES (13, 'user_1717650351111');
INSERT INTO public.usernames VALUES (14, 'user_1717650417976');
INSERT INTO public.usernames VALUES (15, 'user_1717650417975');
INSERT INTO public.usernames VALUES (16, 'user_1717650492754');
INSERT INTO public.usernames VALUES (17, 'user_1717650492753');
INSERT INTO public.usernames VALUES (18, 'user_1717650539247');
INSERT INTO public.usernames VALUES (19, 'user_1717650539246');
INSERT INTO public.usernames VALUES (20, 'user_1717650546668');
INSERT INTO public.usernames VALUES (21, 'user_1717650546667');
INSERT INTO public.usernames VALUES (22, 'abc');
INSERT INTO public.usernames VALUES (23, 'user_1717650695036');
INSERT INTO public.usernames VALUES (24, 'user_1717650695035');
INSERT INTO public.usernames VALUES (25, 'user_1717650728023');
INSERT INTO public.usernames VALUES (26, 'user_1717650728022');
INSERT INTO public.usernames VALUES (27, 'user_1717650802812');
INSERT INTO public.usernames VALUES (28, 'user_1717650802811');
INSERT INTO public.usernames VALUES (29, 'user_1717650840195');
INSERT INTO public.usernames VALUES (30, 'user_1717650840194');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 87, true);


--
-- Name: usernames_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

