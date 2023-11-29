--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid_wave; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_wave (
    asteroid_wave_id integer NOT NULL,
    name character varying(20),
    description text,
    length_in_minutes numeric(4,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.asteroid_wave OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    num_of_planets integer NOT NULL,
    color character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    description text,
    num_of_astronaughts integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    description text,
    has_atmosphere boolean,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    description text,
    distance_from_earth numeric(4,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid_wave; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_wave VALUES (1, 'slow', 'slow wave', 12.55, 1);
INSERT INTO public.asteroid_wave VALUES (2, 'funny', 'funny wave', 19.80, 2);
INSERT INTO public.asteroid_wave VALUES (3, 'medium', 'medium wave', 22.55, 1);
INSERT INTO public.asteroid_wave VALUES (4, 'rocky', 'rocky wave', 15.21, 3);
INSERT INTO public.asteroid_wave VALUES (5, 'long', 'long  wave', 51.55, 3);
INSERT INTO public.asteroid_wave VALUES (6, 'interesting', 'interesting wave', 23.33, 2);
INSERT INTO public.asteroid_wave VALUES (7, 'ridiculous', 'ridiculous wave', 11.50, 1);
INSERT INTO public.asteroid_wave VALUES (8, 'super', 'super wave', 4.65, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 'Milky galaxy', 4, NULL);
INSERT INTO public.galaxy VALUES (2, 'Daddy', 'Daddy Galaxy', 6, NULL);
INSERT INTO public.galaxy VALUES (3, 'Choco', 'Choco Galaxy', 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Vanilla', 'Vanilla Galaxy', 5, NULL);
INSERT INTO public.galaxy VALUES (5, 'Custard', 'Custard Galaxy', 12, NULL);
INSERT INTO public.galaxy VALUES (6, 'Waffle', 'Waffle Galaxy', 8, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon number 1', 2, 5);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon number 2', 0, 7);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon number 3', 7, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon number 4', 0, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon number 5', 4, 7);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon number 6', 2, 2);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon number 7', 1, 3);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon number 8', 9, 4);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon number 9', 0, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon number 10', 6, 6);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon number 11', 3, 7);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon number12', 10, 1);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon number13', 12, 5);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon number 14', 6, 3);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon number 15', 7, 8);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon number 16', 0, 2);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon number 17', 4, 6);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon number 18', 23, 10);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon number 19', 0, 3);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon number 20', 5, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Zion', 'Zion planet', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Taco', 'Taco Planet', false, false, 2);
INSERT INTO public.planet VALUES (3, 'Beef', 'Beef Planet', true, false, 3);
INSERT INTO public.planet VALUES (7, 'Leaf', 'Leaf Planet', false, true, 5);
INSERT INTO public.planet VALUES (4, 'Random', 'Random Planet', true, false, 4);
INSERT INTO public.planet VALUES (5, 'New', 'New Planet', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Salad', 'Salad Planet', true, true, 3);
INSERT INTO public.planet VALUES (8, 'Orion', 'Orian Planet', true, true, 1);
INSERT INTO public.planet VALUES (9, 'Sexy', 'Sexy Planet', true, true, 2);
INSERT INTO public.planet VALUES (10, 'Garbage', 'Garbage Planet', false, true, 3);
INSERT INTO public.planet VALUES (11, 'Bad', 'Bad Planet', true, true, 4);
INSERT INTO public.planet VALUES (12, 'Last', 'Last Planet', false, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Leo', 'star of lion', 123.4, 1);
INSERT INTO public.star VALUES (2, 'Pisces', 'star of fish', 332.1, 2);
INSERT INTO public.star VALUES (3, 'Gemini', 'star of twins', 235.3, 3);
INSERT INTO public.star VALUES (4, 'Taurus', 'star of bull', 599.6, 2);
INSERT INTO public.star VALUES (5, 'Libra', 'star of balance', 432.5, 1);
INSERT INTO public.star VALUES (6, 'Aries', 'star of ram', 342.7, 3);


--
-- Name: asteroid_wave asteroid_wave_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_wave
    ADD CONSTRAINT asteroid_wave_name_key UNIQUE (name);


--
-- Name: asteroid_wave asteroid_wave_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_wave
    ADD CONSTRAINT asteroid_wave_pkey PRIMARY KEY (asteroid_wave_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid_wave asteroid_wave_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_wave
    ADD CONSTRAINT asteroid_wave_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

