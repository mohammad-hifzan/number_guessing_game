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
INSERT INTO public.users VALUES ('user_1727229820472', 2, 0);
INSERT INTO public.users VALUES ('user_1727229820473', 5, 0);
INSERT INTO public.users VALUES ('hifzan', 3, 6);
INSERT INTO public.users VALUES ('user_1727229942583', 2, 0);
INSERT INTO public.users VALUES ('user_1727229942584', 5, 0);


--
-- PostgreSQL database dump complete
--

