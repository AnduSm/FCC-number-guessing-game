--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guesses integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 46, 522);
INSERT INTO public.games VALUES (3, 46, 777);
INSERT INTO public.games VALUES (4, 47, 375);
INSERT INTO public.games VALUES (5, 47, 280);
INSERT INTO public.games VALUES (6, 46, 59);
INSERT INTO public.games VALUES (7, 46, 903);
INSERT INTO public.games VALUES (8, 1, 1);
INSERT INTO public.games VALUES (9, 1, 1);
INSERT INTO public.games VALUES (10, 1, 1);
INSERT INTO public.games VALUES (11, 8, 1);
INSERT INTO public.games VALUES (12, 48, 697);
INSERT INTO public.games VALUES (13, 48, 603);
INSERT INTO public.games VALUES (14, 49, 222);
INSERT INTO public.games VALUES (15, 49, 857);
INSERT INTO public.games VALUES (16, 48, 914);
INSERT INTO public.games VALUES (17, 48, 193);
INSERT INTO public.games VALUES (18, 48, 190);
INSERT INTO public.games VALUES (19, 1, 1);
INSERT INTO public.games VALUES (20, 50, 84);
INSERT INTO public.games VALUES (21, 50, 583);
INSERT INTO public.games VALUES (22, 51, 996);
INSERT INTO public.games VALUES (23, 51, 141);
INSERT INTO public.games VALUES (24, 50, 621);
INSERT INTO public.games VALUES (25, 50, 290);
INSERT INTO public.games VALUES (26, 50, 325);
INSERT INTO public.games VALUES (27, 52, 57);
INSERT INTO public.games VALUES (28, 52, 775);
INSERT INTO public.games VALUES (29, 53, 559);
INSERT INTO public.games VALUES (30, 53, 408);
INSERT INTO public.games VALUES (31, 52, 324);
INSERT INTO public.games VALUES (32, 52, 453);
INSERT INTO public.games VALUES (33, 52, 411);
INSERT INTO public.games VALUES (34, 54, 938);
INSERT INTO public.games VALUES (35, 54, 713);
INSERT INTO public.games VALUES (36, 55, 876);
INSERT INTO public.games VALUES (37, 55, 294);
INSERT INTO public.games VALUES (38, 54, 805);
INSERT INTO public.games VALUES (39, 54, 951);
INSERT INTO public.games VALUES (40, 54, 662);
INSERT INTO public.games VALUES (41, 56, 185);
INSERT INTO public.games VALUES (42, 56, 536);
INSERT INTO public.games VALUES (43, 57, 728);
INSERT INTO public.games VALUES (44, 57, 209);
INSERT INTO public.games VALUES (45, 56, 975);
INSERT INTO public.games VALUES (46, 56, 884);
INSERT INTO public.games VALUES (47, 56, 9);
INSERT INTO public.games VALUES (48, 58, 214);
INSERT INTO public.games VALUES (49, 58, 886);
INSERT INTO public.games VALUES (50, 59, 799);
INSERT INTO public.games VALUES (51, 59, 566);
INSERT INTO public.games VALUES (52, 58, 488);
INSERT INTO public.games VALUES (53, 58, 756);
INSERT INTO public.games VALUES (54, 58, 179);
INSERT INTO public.games VALUES (55, 60, 994);
INSERT INTO public.games VALUES (56, 60, 715);
INSERT INTO public.games VALUES (57, 61, 183);
INSERT INTO public.games VALUES (58, 61, 773);
INSERT INTO public.games VALUES (59, 60, 982);
INSERT INTO public.games VALUES (60, 60, 746);
INSERT INTO public.games VALUES (61, 60, 968);
INSERT INTO public.games VALUES (62, 62, 360);
INSERT INTO public.games VALUES (63, 62, 645);
INSERT INTO public.games VALUES (64, 63, 126);
INSERT INTO public.games VALUES (65, 63, 623);
INSERT INTO public.games VALUES (66, 62, 363);
INSERT INTO public.games VALUES (67, 62, 585);
INSERT INTO public.games VALUES (68, 62, 692);
INSERT INTO public.games VALUES (69, 1, 1);
INSERT INTO public.games VALUES (70, 64, 384);
INSERT INTO public.games VALUES (71, 64, 2);
INSERT INTO public.games VALUES (72, 65, 491);
INSERT INTO public.games VALUES (73, 65, 181);
INSERT INTO public.games VALUES (74, 64, 586);
INSERT INTO public.games VALUES (75, 64, 499);
INSERT INTO public.games VALUES (76, 64, 549);
INSERT INTO public.games VALUES (77, 66, 324);
INSERT INTO public.games VALUES (78, 66, 473);
INSERT INTO public.games VALUES (79, 67, 757);
INSERT INTO public.games VALUES (80, 67, 223);
INSERT INTO public.games VALUES (81, 66, 31);
INSERT INTO public.games VALUES (82, 66, 59);
INSERT INTO public.games VALUES (83, 66, 391);
INSERT INTO public.games VALUES (84, 68, 752);
INSERT INTO public.games VALUES (85, 68, 609);
INSERT INTO public.games VALUES (86, 69, 239);
INSERT INTO public.games VALUES (87, 69, 972);
INSERT INTO public.games VALUES (88, 68, 219);
INSERT INTO public.games VALUES (89, 68, 353);
INSERT INTO public.games VALUES (90, 68, 467);
INSERT INTO public.games VALUES (91, 70, 523);
INSERT INTO public.games VALUES (92, 70, 915);
INSERT INTO public.games VALUES (93, 71, 993);
INSERT INTO public.games VALUES (94, 71, 286);
INSERT INTO public.games VALUES (95, 70, 184);
INSERT INTO public.games VALUES (96, 70, 806);
INSERT INTO public.games VALUES (97, 70, 243);
INSERT INTO public.games VALUES (98, 72, 553);
INSERT INTO public.games VALUES (99, 72, 28);
INSERT INTO public.games VALUES (100, 73, 757);
INSERT INTO public.games VALUES (101, 73, 313);
INSERT INTO public.games VALUES (102, 72, 872);
INSERT INTO public.games VALUES (103, 72, 586);
INSERT INTO public.games VALUES (104, 72, 64);
INSERT INTO public.games VALUES (105, 74, 911);
INSERT INTO public.games VALUES (106, 74, 307);
INSERT INTO public.games VALUES (107, 75, 871);
INSERT INTO public.games VALUES (108, 75, 884);
INSERT INTO public.games VALUES (109, 74, 585);
INSERT INTO public.games VALUES (110, 74, 193);
INSERT INTO public.games VALUES (111, 74, 596);
INSERT INTO public.games VALUES (112, 76, 668);
INSERT INTO public.games VALUES (113, 76, 702);
INSERT INTO public.games VALUES (114, 77, 196);
INSERT INTO public.games VALUES (115, 77, 443);
INSERT INTO public.games VALUES (116, 76, 584);
INSERT INTO public.games VALUES (117, 76, 426);
INSERT INTO public.games VALUES (118, 76, 760);
INSERT INTO public.games VALUES (119, 78, 565);
INSERT INTO public.games VALUES (120, 78, 84);
INSERT INTO public.games VALUES (121, 79, 747);
INSERT INTO public.games VALUES (122, 79, 130);
INSERT INTO public.games VALUES (123, 78, 169);
INSERT INTO public.games VALUES (124, 78, 920);
INSERT INTO public.games VALUES (125, 78, 484);
INSERT INTO public.games VALUES (126, 80, 867);
INSERT INTO public.games VALUES (127, 80, 634);
INSERT INTO public.games VALUES (128, 81, 649);
INSERT INTO public.games VALUES (129, 81, 894);
INSERT INTO public.games VALUES (130, 80, 733);
INSERT INTO public.games VALUES (131, 80, 540);
INSERT INTO public.games VALUES (132, 80, 380);
INSERT INTO public.games VALUES (133, 82, 449);
INSERT INTO public.games VALUES (134, 82, 344);
INSERT INTO public.games VALUES (135, 83, 613);
INSERT INTO public.games VALUES (136, 83, 652);
INSERT INTO public.games VALUES (137, 82, 867);
INSERT INTO public.games VALUES (138, 82, 759);
INSERT INTO public.games VALUES (139, 82, 588);
INSERT INTO public.games VALUES (140, 84, 229);
INSERT INTO public.games VALUES (141, 85, 999);
INSERT INTO public.games VALUES (142, 86, 545);
INSERT INTO public.games VALUES (143, 86, 20);
INSERT INTO public.games VALUES (144, 87, 765);
INSERT INTO public.games VALUES (145, 87, 811);
INSERT INTO public.games VALUES (146, 86, 839);
INSERT INTO public.games VALUES (147, 86, 920);
INSERT INTO public.games VALUES (148, 86, 939);
INSERT INTO public.games VALUES (149, 88, 175);
INSERT INTO public.games VALUES (150, 88, 343);
INSERT INTO public.games VALUES (151, 89, 56);
INSERT INTO public.games VALUES (152, 89, 296);
INSERT INTO public.games VALUES (153, 88, 719);
INSERT INTO public.games VALUES (154, 88, 24);
INSERT INTO public.games VALUES (155, 88, 939);
INSERT INTO public.games VALUES (156, 90, 843);
INSERT INTO public.games VALUES (157, 90, 680);
INSERT INTO public.games VALUES (158, 91, 592);
INSERT INTO public.games VALUES (159, 91, 134);
INSERT INTO public.games VALUES (160, 90, 531);
INSERT INTO public.games VALUES (161, 90, 153);
INSERT INTO public.games VALUES (162, 90, 237);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'L');
INSERT INTO public.users VALUES (8, 'l');
INSERT INTO public.users VALUES (9, 'user_1701993522636');
INSERT INTO public.users VALUES (10, 'user_1701993522635');
INSERT INTO public.users VALUES (42, 'user_1701993665266');
INSERT INTO public.users VALUES (43, 'user_1701993665265');
INSERT INTO public.users VALUES (44, 'user_1701993835562');
INSERT INTO public.users VALUES (45, 'user_1701993835561');
INSERT INTO public.users VALUES (46, 'user_1701994052647');
INSERT INTO public.users VALUES (47, 'user_1701994052646');
INSERT INTO public.users VALUES (48, 'user_1701995020044');
INSERT INTO public.users VALUES (49, 'user_1701995020043');
INSERT INTO public.users VALUES (50, 'user_1701995233328');
INSERT INTO public.users VALUES (51, 'user_1701995233327');
INSERT INTO public.users VALUES (52, 'user_1701998859116');
INSERT INTO public.users VALUES (53, 'user_1701998859115');
INSERT INTO public.users VALUES (54, 'user_1701998935088');
INSERT INTO public.users VALUES (55, 'user_1701998935087');
INSERT INTO public.users VALUES (56, 'user_1701999134294');
INSERT INTO public.users VALUES (57, 'user_1701999134293');
INSERT INTO public.users VALUES (58, 'user_1701999329532');
INSERT INTO public.users VALUES (59, 'user_1701999329531');
INSERT INTO public.users VALUES (60, 'user_1701999334814');
INSERT INTO public.users VALUES (61, 'user_1701999334813');
INSERT INTO public.users VALUES (62, 'user_1701999339407');
INSERT INTO public.users VALUES (63, 'user_1701999339406');
INSERT INTO public.users VALUES (64, 'user_1701999748872');
INSERT INTO public.users VALUES (65, 'user_1701999748871');
INSERT INTO public.users VALUES (66, 'user_1701999764499');
INSERT INTO public.users VALUES (67, 'user_1701999764498');
INSERT INTO public.users VALUES (68, 'user_1701999777330');
INSERT INTO public.users VALUES (69, 'user_1701999777329');
INSERT INTO public.users VALUES (70, 'user_1701999788433');
INSERT INTO public.users VALUES (71, 'user_1701999788432');
INSERT INTO public.users VALUES (72, 'user_1701999798322');
INSERT INTO public.users VALUES (73, 'user_1701999798321');
INSERT INTO public.users VALUES (74, 'user_1701999802800');
INSERT INTO public.users VALUES (75, 'user_1701999802799');
INSERT INTO public.users VALUES (76, 'user_1701999964045');
INSERT INTO public.users VALUES (77, 'user_1701999964044');
INSERT INTO public.users VALUES (78, 'user_1702000028893');
INSERT INTO public.users VALUES (79, 'user_1702000028892');
INSERT INTO public.users VALUES (80, 'user_1702000145312');
INSERT INTO public.users VALUES (81, 'user_1702000145311');
INSERT INTO public.users VALUES (82, 'user_1702000231850');
INSERT INTO public.users VALUES (83, 'user_1702000231849');
INSERT INTO public.users VALUES (84, 'user_1702000312149');
INSERT INTO public.users VALUES (85, 'user_1702000312148');
INSERT INTO public.users VALUES (86, 'user_1702000318967');
INSERT INTO public.users VALUES (87, 'user_1702000318966');
INSERT INTO public.users VALUES (88, 'user_1702000605782');
INSERT INTO public.users VALUES (89, 'user_1702000605781');
INSERT INTO public.users VALUES (90, 'user_1702000684733');
INSERT INTO public.users VALUES (91, 'user_1702000684732');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 162, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 91, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

