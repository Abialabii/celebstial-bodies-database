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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    center_of_galaxy boolean DEFAULT true NOT NULL,
    gravity integer,
    width integer,
    expansion_rate integer,
    light_years numeric,
    name character varying(255),
    wormhole boolean DEFAULT false NOT NULL,
    color text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    distance_light_years integer,
    age_billions_years numeric(4,2),
    has_life boolean,
    dark_matter boolean,
    size_in_light_years integer,
    name character varying(60) NOT NULL,
    initials text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    satellite boolean,
    only_moon boolean,
    radius numeric,
    initials text,
    population integer,
    distance_to_earth integer,
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
    population integer,
    name character varying(255) NOT NULL,
    gas_giant boolean,
    proof_of_life boolean,
    radius integer,
    years_to_a_year integer,
    age numeric,
    initials text,
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
    radius_ly integer,
    name character varying(60) NOT NULL,
    age_ly integer,
    density numeric,
    supernova boolean,
    giant boolean,
    star_type text,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, true, 3000, 10000, 500, 2300.67, 'black 1', false, 'black');
INSERT INTO public.blackhole VALUES (3, true, 3000, 10000, 500, 2400.77, 'black 2', false, 'navy');
INSERT INTO public.blackhole VALUES (4, true, 4000, 30000, 500, 2400.77, 'black 3', false, 'noir');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 25000, 13.61, false, true, 100000, 'Milky way', 'MW');
INSERT INTO public.galaxy VALUES (2, 2363500, 10.01, false, true, 260000, 'Andromeda', 'AN');
INSERT INTO public.galaxy VALUES (3, 2477500, 0.79, false, true, 61000, 'Triangulum', 'TM');
INSERT INTO public.galaxy VALUES (4, 2494000, 0.50, false, false, 22349, 'IC1613', 'IC');
INSERT INTO public.galaxy VALUES (5, 2836000, 12.00, false, true, 20000, 'Tucana dwarf', 'TD');
INSERT INTO public.galaxy VALUES (6, 260800, 12.00, false, true, 22000, 'Aquarius dwarf', 'AD');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, true, 300.461, 'm1', NULL, 200, 2);
INSERT INTO public.moon VALUES (2, 'moon2', true, true, 400.461, 'm2', NULL, 400, 2);
INSERT INTO public.moon VALUES (3, 'moon3', true, true, 400.461, 'm3', NULL, 400, 3);
INSERT INTO public.moon VALUES (4, 'moon4', true, true, 1000.411, 'm4', NULL, 400, 3);
INSERT INTO public.moon VALUES (5, 'moon5', true, true, 500.431, 'm5', NULL, 400, 3);
INSERT INTO public.moon VALUES (6, 'moon6', true, false, 500.431, 'm6', NULL, 400, 4);
INSERT INTO public.moon VALUES (7, 'moon7', true, false, 500.431, 'm7', NULL, 400, 4);
INSERT INTO public.moon VALUES (8, 'moon8', true, false, 700.431, 'm8', NULL, 400, 5);
INSERT INTO public.moon VALUES (9, 'moon9', true, false, 800.431, 'm9', NULL, 400, 5);
INSERT INTO public.moon VALUES (10, 'moon10', true, false, 1100.431, 'm10', NULL, 400, 6);
INSERT INTO public.moon VALUES (11, 'moon11', true, false, 1200.04, 'm11', NULL, 400, 6);
INSERT INTO public.moon VALUES (12, 'moon12', true, false, 1200.60, 'm12', NULL, 400, 7);
INSERT INTO public.moon VALUES (13, 'moon13', true, false, 1250.60, 'm13', NULL, 400, 7);
INSERT INTO public.moon VALUES (14, 'moon14', true, false, 1300.60, 'm14', NULL, 600, 8);
INSERT INTO public.moon VALUES (15, 'moon15', true, false, 1400.60, 'm15', NULL, 700, 8);
INSERT INTO public.moon VALUES (17, 'moon16', true, false, 4300.60, 'm16', NULL, 1100, 8);
INSERT INTO public.moon VALUES (18, 'moon17', true, false, 5300.60, 'm17', NULL, 1200, 9);
INSERT INTO public.moon VALUES (19, 'moon18', true, false, 6200.60, 'm18', NULL, 1200, 9);
INSERT INTO public.moon VALUES (20, 'moon19', true, false, 8000.60, 'm19', NULL, 1200, 14);
INSERT INTO public.moon VALUES (21, 'moon20', true, false, 8000.60, 'm20', NULL, 1500, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 78000000, 'earth', false, true, 34000, 1, 65000000, 'eth', 2);
INSERT INTO public.planet VALUES (3, NULL, 'Mars', false, false, 20200, 1, 65000000, 'mrs', 2);
INSERT INTO public.planet VALUES (4, NULL, 'Pluto', false, false, 20200, 1, 65000000, 'plt', 2);
INSERT INTO public.planet VALUES (5, NULL, 'uranus', true, false, 20200, 1, 65000000, 'Uns', 2);
INSERT INTO public.planet VALUES (6, NULL, 'Saturn', true, false, 20200, 1, 65000000, 'St', 2);
INSERT INTO public.planet VALUES (7, NULL, 'Venus', true, false, 20200, 1, 65000000, 'vs', 2);
INSERT INTO public.planet VALUES (8, NULL, 'Neptune', true, false, 20200, 1, 65000000, 'Np', 2);
INSERT INTO public.planet VALUES (9, NULL, 'Mercury', true, false, 200, 1, 5700000, 'Mu', 2);
INSERT INTO public.planet VALUES (10, NULL, 'Centri', false, false, 448000, 1, 500000, 'Ct', 4);
INSERT INTO public.planet VALUES (11, NULL, 'Centro', false, false, 459000, 1, 7600000, 'Cto', 5);
INSERT INTO public.planet VALUES (12, NULL, 'Centra', false, false, 49000, 1, 890000, 'Cta', 4);
INSERT INTO public.planet VALUES (13, NULL, 'Andri', false, false, 490000, 1, 960000, 'an', 1);
INSERT INTO public.planet VALUES (14, NULL, 'Andrina', true, false, 380000, 1, 4460000, 'ad', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 20000, 'Belegulese', 30000, 4000.65, false, true, 'Giant', 2);
INSERT INTO public.star VALUES (2, 20000, 'Sun', 30000, 4000.65, false, true, 'Main sequence star', 1);
INSERT INTO public.star VALUES (3, 4000, 'Sirius B', 50000, 4000.65, false, true, 'White Dwarf', 3);
INSERT INTO public.star VALUES (4, 6000, 'Proxima Centauri', 50000, 4000.65, false, true, 'Red Dwarf', 6);
INSERT INTO public.star VALUES (5, 6000, 'VY canis Majoris', 70000, 40000.65, false, true, 'Super Giants', 5);
INSERT INTO public.star VALUES (6, 500, 'Crab Pulsar', 3000, 10000.65, false, true, 'Neutron Stars', 4);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_color_key UNIQUE (color);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_initials_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_initials_key UNIQUE (initials);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_initials_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_initials_key UNIQUE (initials);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_initials_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_initials_key UNIQUE (initials);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


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