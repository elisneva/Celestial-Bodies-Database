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
    age_in_billion_of_years integer,
    description text,
    name character varying(60),
    distance integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    diameter_km integer,
    planet_id integer NOT NULL,
    age_my numeric(2,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    diameter_km integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    age_in_billion_years numeric(2,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    luminosity_in_l integer,
    galaxy_id integer NOT NULL,
    distance_from_earth_in_ly integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(60),
    star_system character varying(60) NOT NULL,
    number_planet integer,
    number_moon integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 10, 'the nearest large galaxy to the Milky Way', 'Andromeda', 3);
INSERT INTO public.galaxy VALUES (2, 4, 'undergoing tumultuous change', 'Circinus', 13);
INSERT INTO public.galaxy VALUES (3, 3, 'Spiral galaxy', 'Triangulum', 3);
INSERT INTO public.galaxy VALUES (4, 14, 'our galaxy barred spiral galaxy', 'Milky Way', 0);
INSERT INTO public.galaxy VALUES (5, 0, 'Swirling structure', 'Whirlpool', 31);
INSERT INTO public.galaxy VALUES (6, 13, 'the center of the galaxy contains a supermassive black hole', 'Centaurus', 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 1, 4.5);
INSERT INTO public.moon VALUES (2, 'Phobos', 22533, 4, 4.5);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 4, 4.5);
INSERT INTO public.moon VALUES (4, 'Io', 3643, 5, 4.5);
INSERT INTO public.moon VALUES (5, 'Europa', 3121, 5, 4.5);
INSERT INTO public.moon VALUES (6, 'Callisto', 4820, 5, 4.5);
INSERT INTO public.moon VALUES (7, 'Mimas', 396, 6, 4.1);
INSERT INTO public.moon VALUES (8, 'Enceladus', 504, 6, 1.0);
INSERT INTO public.moon VALUES (9, 'Dione', 1122, 6, 4.0);
INSERT INTO public.moon VALUES (10, 'Rhea', 1527, 6, 4.5);
INSERT INTO public.moon VALUES (11, 'Titan', 5149, 6, 4.0);
INSERT INTO public.moon VALUES (12, 'Ariel', 1157, 7, 0.1);
INSERT INTO public.moon VALUES (13, 'Umbriel', 1169, 7, 4.5);
INSERT INTO public.moon VALUES (14, 'Titania', 1576, 7, 4.6);
INSERT INTO public.moon VALUES (15, 'Cordelia', 40, 7, 4.0);
INSERT INTO public.moon VALUES (16, 'Miranda', 471, 7, 0.1);
INSERT INTO public.moon VALUES (17, 'Triton', 2706, 8, 4.5);
INSERT INTO public.moon VALUES (18, 'Nereid', 340, 8, 4.5);
INSERT INTO public.moon VALUES (19, 'Galatea', 174, 8, 4.6);
INSERT INTO public.moon VALUES (20, 'Despina', 150, 8, 4.6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12724, true, true, 4, 4.5);
INSERT INTO public.planet VALUES (2, 'Mercury', 4880, false, true, 4, 4.5);
INSERT INTO public.planet VALUES (3, 'Venus', 12104, false, true, 4, 4.5);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, false, true, 4, 4.6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, false, true, 4, 4.6);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, false, true, 4, 4.5);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, false, true, 4, 4.5);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, false, true, 4, 4.5);
INSERT INTO public.planet VALUES (9, 'Pluto', 2376, false, true, 4, 4.6);
INSERT INTO public.planet VALUES (10, 'HD9446c', 0, false, true, 3, 3.0);
INSERT INTO public.planet VALUES (11, 'PA99N2', 0, false, true, 1, 9.0);
INSERT INTO public.planet VALUES (12, 'HD129445b', 0, false, true, 2, 4.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 13, 1, 97);
INSERT INTO public.star VALUES (2, 'Alpha Circini', 11, 2, 54);
INSERT INTO public.star VALUES (3, 'Beta Trianguli', 74, 3, 127);
INSERT INTO public.star VALUES (4, 'Sun', 1, 4, 0);
INSERT INTO public.star VALUES (5, 'Con Caroli', 101, 5, 110);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 2, 6, 4344);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'Andromeda', 'Alpheratz', 0, 0);
INSERT INTO public.universe VALUES (2, 'Circinus', 'Alpha Circini', 1, 0);
INSERT INTO public.universe VALUES (3, 'Triangulum', 'Beta Trianguli', 1, 0);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_type_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_galaxy_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_star_system_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_star_system_key UNIQUE (star_system);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: universe universe_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_galaxy_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

