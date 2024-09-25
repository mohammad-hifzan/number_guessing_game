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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_count integer DEFAULT 0,
    best_score integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1727228366369', 0, 0);
INSERT INTO public.users VALUES ('user_1727228366368', 0, 0);
INSERT INTO public.users VALUES ('user_1727228377597', 0, 0);
INSERT INTO public.users VALUES ('user_1727228377595', 0, 0);
INSERT INTO public.users VALUES ('user_1727228829300', 0, 0);
INSERT INTO public.users VALUES ('user_1727228829299', 0, 0);
INSERT INTO public.users VALUES ('user_1727228859554', 0, 0);
INSERT INTO public.users VALUES ('user_1727228859553', 0, 0);
INSERT INTO public.users VALUES ('user_1727229039414', 0, 0);
INSERT INTO public.users VALUES ('user_1727229039413', 0, 0);
INSERT INTO public.users VALUES ('user_1727229302831', 0, 0);
INSERT INTO public.users VALUES ('user_1727229302830', 0, 0);
INSERT INTO public.users VALUES ('user_1727232258020', 2, 476);
INSERT INTO public.users VALUES ('user_1727232258021', 5, 70);
INSERT INTO public.users VALUES ('user_1727229820472', 2, 0);
INSERT INTO public.users VALUES ('user_1727229820473', 5, 0);
INSERT INTO public.users VALUES ('user_1727232334241', 2, 911);
INSERT INTO public.users VALUES ('user_1727229942583', 2, 0);
INSERT INTO public.users VALUES ('user_1727232334242', 5, 107);
INSERT INTO public.users VALUES ('user_1727229942584', 5, 0);
INSERT INTO public.users VALUES ('user_1727230661717', 2, 0);
INSERT INTO public.users VALUES ('user_1727230661718', 5, 0);
INSERT INTO public.users VALUES ('user_1727232377043', 2, 105);
INSERT INTO public.users VALUES ('hifzan', 5, 6);
INSERT INTO public.users VALUES ('user_1727232377044', 5, 64);
INSERT INTO public.users VALUES ('rohan', 4, 10);
INSERT INTO public.users VALUES ('user_1727231265477', 2, 746);
INSERT INTO public.users VALUES ('user_1727231265478', 5, 13);
INSERT INTO public.users VALUES ('user_1727232412613', 2, 980);
INSERT INTO public.users VALUES ('user_1727232140787', 2, 802);
INSERT INTO public.users VALUES ('user_1727232412614', 5, 248);
INSERT INTO public.users VALUES ('user_1727232140788', 4, 72);
INSERT INTO public.users VALUES ('user_1727232180906', 2, 250);
INSERT INTO public.users VALUES ('user_1727232180907', 5, 138);
INSERT INTO public.users VALUES ('user_1727232452356', 2, 921);
INSERT INTO public.users VALUES ('user_1727232452357', 5, 80);
INSERT INTO public.users VALUES ('user_1727232502300', 2, 62);
INSERT INTO public.users VALUES ('user_1727232502301', 5, 144);


--
-- PostgreSQL database dump complete
--

