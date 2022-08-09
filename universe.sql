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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    distance_in_mly numeric(10,2),
    galaxy_type_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_in_km integer,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_in_km integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size_in_km integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Galaxy taht includes our Solar System, with the name describing the galaxys appearance from Earth', 0.02, 2);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'The nearest galaxy to the Milky Way. The Galaxys name stems from the area of the Earths sky in which it appearts, the constellation of Andromeda', 2.45, 2);
INSERT INTO public.galaxy VALUES ('Antennae Galaxies', 3, 'A pair of interacting galaxies in the constellation Corvus', 55.00, 2);
INSERT INTO public.galaxy VALUES ('Centaurus Galaxy', 4, 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation', 200.00, 2);
INSERT INTO public.galaxy VALUES ('Black Eye Galaxy', 5, 'Has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus, giving rise to its nicknames of the Black Eye or Evil Eye Galaxy', 17.30, 2);
INSERT INTO public.galaxy VALUES ('Carwheel Galaxy', 6, 'Its visual appearance is similar to that of a spoked cartwheel', 500.00, 1);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Elliptical', 'These galaxies have an ellipsoidal profile, giving them an ellipitcal appearance regardless of the viewing angle');
INSERT INTO public.galaxy_type VALUES (2, 'Spirals', 'Spiral galaxies resemble spiraling pinwheels');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular galaxies', 'Galaxies that can not readily classified into an elliptical or spiral morphology');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 272, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Io', 285, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 246, NULL, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 413, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 378, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', 31, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 40, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Tethys', 84, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 88, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 120, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Titan', 404, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 115, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 37, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 91, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 92, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 124, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 119, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 212, NULL, 8);
INSERT INTO public.moon VALUES (19, 'Charon', 95, NULL, 11);
INSERT INTO public.moon VALUES (20, 'Fake Moon', 69, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 383, false, 3);
INSERT INTO public.planet VALUES (2, 'Venus', 949, false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 532, false, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11209, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 9449, false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 4007, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 3883, false, 3);
INSERT INTO public.planet VALUES (9, 'Ceres', 74, false, 3);
INSERT INTO public.planet VALUES (10, 'Orcus', 72, false, 3);
INSERT INTO public.planet VALUES (11, 'Pluto', 186, false, 3);
INSERT INTO public.planet VALUES (12, 'Haumea', 13, false, 3);
INSERT INTO public.planet VALUES (3, 'Earth', 1000, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 1021, 'The tenth brightest star in the night sky and the second-brightest in the constellation of Orion', 1);
INSERT INTO public.star VALUES (2, 'Antares', 680, 'The brightest star in the constellation of Scorpius. Often referred to as the heart of the scrorpion', 1);
INSERT INTO public.star VALUES (3, 'The Sun', 1, 'The star at the cenre of the Solar System', 1);
INSERT INTO public.star VALUES (4, 'Vega', 3, 'The brightest star in the northern constellation of Lyra. This star is relatively close at only 25 light years away', 1);
INSERT INTO public.star VALUES (5, 'Canopus', 73, 'Brightest star in the southern constellation of Carina and the second brightest star in the night sky', 1);
INSERT INTO public.star VALUES (6, 'Rigel', 79, 'A blue supergiant in the constellation of Orion', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


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

