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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(3) NOT NULL,
    has_satellites boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(3) NOT NULL,
    galaxy_types text,
    distance_from_earth_in_light_years integer,
    diameter_in_light_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(3) NOT NULL,
    planet_id integer,
    radius_in_km integer,
    orbital_speed_in_kms integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(3) NOT NULL,
    star_id integer,
    planet_type character(1),
    sidereal_orbital_period_in_days integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(3) NOT NULL,
    galaxy_id integer,
    star_type character(1),
    age_in_millions_of_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '4 V', false);
INSERT INTO public.asteroid VALUES (2, '97', true);
INSERT INTO public.asteroid VALUES (3, '433', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mil', 'Sb', 0, 105700);
INSERT INTO public.galaxy VALUES (2, 'And', 'SA(s)b', 3, 220000);
INSERT INTO public.galaxy VALUES (3, 'Bla', '(R)SA(rs)ab', 17, 52962);
INSERT INTO public.galaxy VALUES (4, 'Car', 'S pec (Ring)', 489, 130000);
INSERT INTO public.galaxy VALUES (5, 'Pin', 'SAB(rs)cd', 21, 170000);
INSERT INTO public.galaxy VALUES (6, 'Som', 'SA(s)a', 29, 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The', 3, 1737, 1);
INSERT INTO public.moon VALUES (2, 'Pho', 4, 11, 2);
INSERT INTO public.moon VALUES (3, 'Cal', 5, 2410, 8);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1821, 17);
INSERT INTO public.moon VALUES (5, 'Ama', 5, 83, 26);
INSERT INTO public.moon VALUES (6, 'Ana', 5, 15, 0);
INSERT INTO public.moon VALUES (7, 'Tit', 6, 2574, 5);
INSERT INTO public.moon VALUES (8, 'Tet', 6, 531, 11);
INSERT INTO public.moon VALUES (9, 'Pro', 6, 43, 0);
INSERT INTO public.moon VALUES (10, 'Atl', 6, 15, 0);
INSERT INTO public.moon VALUES (11, 'Kiv', 6, 8, 0);
INSERT INTO public.moon VALUES (12, 'Obe', 6, 761, 3);
INSERT INTO public.moon VALUES (13, 'Syc', 7, 76, 3);
INSERT INTO public.moon VALUES (14, 'Cll', 7, 21, 0);
INSERT INTO public.moon VALUES (15, 'Prr', 7, 25, 0);
INSERT INTO public.moon VALUES (16, 'Oph', 7, 0, 10);
INSERT INTO public.moon VALUES (17, 'Cup', 7, 8, 0);
INSERT INTO public.moon VALUES (18, 'Tri', 8, 4, 1353);
INSERT INTO public.moon VALUES (19, 'Nei', 8, 176, 0);
INSERT INTO public.moon VALUES (20, 'Nes', 8, 30, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mer', 1, 't', 87, false);
INSERT INTO public.planet VALUES (2, 'Ven', 1, 't', 224, false);
INSERT INTO public.planet VALUES (3, 'Ear', 1, 'o', 365, true);
INSERT INTO public.planet VALUES (4, 'Mar', 1, 't', 686, false);
INSERT INTO public.planet VALUES (5, 'Jup', 1, 'g', 4332, false);
INSERT INTO public.planet VALUES (6, 'Sat', 1, 'g', 10755, false);
INSERT INTO public.planet VALUES (7, 'Ura', 1, 'g', 30688, false);
INSERT INTO public.planet VALUES (8, 'Nep', 1, 'g', 60195, false);
INSERT INTO public.planet VALUES (9, 'HD2', 2, 'g', 0, false);
INSERT INTO public.planet VALUES (10, 'b C', 3, 'c', 7170, false);
INSERT INTO public.planet VALUES (11, '2MA', 4, 'e', 328725000, false);
INSERT INTO public.planet VALUES (12, 'COC', 5, 'g', 401999685, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 'G', 4603);
INSERT INTO public.star VALUES (2, 'HD', 1, 'K', 200);
INSERT INTO public.star VALUES (3, 'b C', 1, 'R', 30);
INSERT INTO public.star VALUES (4, 'TYC', 1, 'R', 30);
INSERT INTO public.star VALUES (5, 'L', 1, 'M', 475);
INSERT INTO public.star VALUES (6, 'HD1', 1, 'P', 7);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

