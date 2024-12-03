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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(55) NOT NULL,
    is_considered_wealthy boolean,
    known_as text,
    dummy_column boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(55) NOT NULL,
    diameter numeric,
    planet_id integer,
    dummy_column boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: notable_characters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.notable_characters (
    notable_characters_id integer NOT NULL,
    home_planet integer,
    alignment text,
    name character varying(55) NOT NULL
);


ALTER TABLE public.notable_characters OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(55) NOT NULL,
    has_life boolean,
    rotation_period_in_hours integer,
    number_of_moons numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(55) NOT NULL,
    galaxy_id integer,
    dummy_column boolean,
    dummy_column_ii boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Deep core', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Core', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Colonies', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Inner Rim', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Expansion Region', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Mid Rim', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Outer Rim', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (90, 'Nur', 4000, 90, NULL);
INSERT INTO public.moon VALUES (51, 'Guermessa', NULL, 1, NULL);
INSERT INTO public.moon VALUES (50, 'Ghomrassen', NULL, 1, NULL);
INSERT INTO public.moon VALUES (52, 'Chenini', NULL, 1, NULL);
INSERT INTO public.moon VALUES (40, 'Moon of Dagobah', NULL, 2, NULL);
INSERT INTO public.moon VALUES (1, 'Centax-1', NULL, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Centax-2', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Centax-3', NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Hesperidium', NULL, 4, NULL);
INSERT INTO public.moon VALUES (100, 'Yavin-4', 10200, 99, NULL);
INSERT INTO public.moon VALUES (101, 'Yavin-8', NULL, 99, NULL);
INSERT INTO public.moon VALUES (102, 'Yavin-13', NULL, 99, NULL);
INSERT INTO public.moon VALUES (103, 'Yavin-2', NULL, 99, NULL);
INSERT INTO public.moon VALUES (104, 'Yavin-3', NULL, 99, NULL);
INSERT INTO public.moon VALUES (105, 'Yavin-5', NULL, 99, NULL);
INSERT INTO public.moon VALUES (106, 'Yavin-6', NULL, 99, NULL);
INSERT INTO public.moon VALUES (107, 'Yavin-7', NULL, 99, NULL);
INSERT INTO public.moon VALUES (109, 'Yavin-9', NULL, 99, NULL);
INSERT INTO public.moon VALUES (110, 'Yavin-10', NULL, 99, NULL);
INSERT INTO public.moon VALUES (111, 'Yavin-11', NULL, 99, NULL);
INSERT INTO public.moon VALUES (112, 'Yavin-12', NULL, 99, NULL);


--
-- Data for Name: notable_characters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.notable_characters VALUES (1, 1, 'Sith', 'Anakin Skywalker');
INSERT INTO public.notable_characters VALUES (2, 1, 'Jedi', 'Luke Skywalker');
INSERT INTO public.notable_characters VALUES (3, 2, 'Jedi', 'Jedi Grandmaster Yoda');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (90, 'Mustafar', true, 36, 2, 53);
INSERT INTO public.planet VALUES (1, 'Tatooine', true, 34, 3, 51);
INSERT INTO public.planet VALUES (2, 'Dagobah', true, 23, 1, 47);
INSERT INTO public.planet VALUES (3, 'Kashyyyk', true, 26, 3, 27);
INSERT INTO public.planet VALUES (4, 'Coruscant', true, 24, 4, 1);
INSERT INTO public.planet VALUES (99, 'Yavin Prime', false, NULL, 26, 93);
INSERT INTO public.planet VALUES (28, 'Alaris', true, NULL, 1, 27);
INSERT INTO public.planet VALUES (29, 'Trandosha', true, NULL, 1, 27);
INSERT INTO public.planet VALUES (91, 'Jestefad', false, NULL, 1, 53);
INSERT INTO public.planet VALUES (92, 'Lefrani', false, NULL, 0, 53);
INSERT INTO public.planet VALUES (101, 'PlanetDummy', true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (102, 'PlanetStupid', true, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (53, 'Priate', 7, NULL, NULL);
INSERT INTO public.star VALUES (51, 'Tatoo_I', 7, NULL, NULL);
INSERT INTO public.star VALUES (52, 'Tatoo_II', 7, NULL, NULL);
INSERT INTO public.star VALUES (47, 'Darlo', 7, NULL, NULL);
INSERT INTO public.star VALUES (27, 'Kashhyyyk', 6, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Coruscant Prime', 2, NULL, NULL);
INSERT INTO public.star VALUES (93, 'Yavin', 7, NULL, NULL);


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
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: notable_characters notable_characters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notable_characters
    ADD CONSTRAINT notable_characters_pkey PRIMARY KEY (notable_characters_id);


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
-- Name: notable_characters unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.notable_characters
    ADD CONSTRAINT unique_id UNIQUE (notable_characters_id);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_moon_of_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_of_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_mother_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_mother_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_in_galaxy_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

