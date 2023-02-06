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
    name character varying(30) NOT NULL,
    mass numeric(4,1) NOT NULL,
    is_real boolean NOT NULL,
    am_i_santa text,
    s_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    mass numeric(4,1) NOT NULL,
    is_real boolean NOT NULL,
    am_i_santa text,
    hole_count integer,
    m_id integer NOT NULL
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
    mass numeric(4,1) NOT NULL,
    is_real boolean NOT NULL,
    am_i_santa text,
    p_id integer NOT NULL,
    m_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_look; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_look (
    planet_look_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    m_uni integer NOT NULL
);


ALTER TABLE public.planet_look OWNER TO freecodecamp;

--
-- Name: planet_look_planet_look_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_look_planet_look_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_look_planet_look_id_seq OWNER TO freecodecamp;

--
-- Name: planet_look_planet_look_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_look_planet_look_id_seq OWNED BY public.planet_look.planet_look_id;


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
    name character varying(30) NOT NULL,
    mass numeric(4,1) NOT NULL,
    is_real boolean NOT NULL,
    am_i_santa text,
    s_id integer NOT NULL,
    luminance integer,
    p_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_look planet_look_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_look ALTER COLUMN planet_look_id SET DEFAULT nextval('public.planet_look_planet_look_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g_1', 123.0, true, 'no', 1);
INSERT INTO public.galaxy VALUES (2, 'g_2', 133.0, false, 'yes', 2);
INSERT INTO public.galaxy VALUES (3, 'g_3', 144.0, false, 'yes', 3);
INSERT INTO public.galaxy VALUES (4, 'g_4', 167.0, true, 'idk', 4);
INSERT INTO public.galaxy VALUES (5, 'g_5', 1.0, false, 'lol', 5);
INSERT INTO public.galaxy VALUES (6, 'g_6', 23.0, true, 'funnys string', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 123.0, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (2, 'm2', 12.0, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'm3', 123.0, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'm4', 12.0, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'm5', 127.0, false, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'm6', 123.0, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'm7', 12.0, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'm8', 123.0, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'm9', 12.0, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'm10', 127.0, false, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'm11', 123.0, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'm12', 12.0, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (13, 'm13', 123.0, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'm14', 12.0, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'm15', 127.0, false, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'm16', 123.0, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'm17', 12.0, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (18, 'm18', 123.0, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'm19', 12.0, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'm20', 127.0, false, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 123.0, false, NULL, 1, 1);
INSERT INTO public.planet VALUES (2, 'p2', 12.0, false, NULL, 2, 2);
INSERT INTO public.planet VALUES (3, 'p3', 123.0, false, NULL, 3, 3);
INSERT INTO public.planet VALUES (4, 'p4', 12.0, true, NULL, 4, 4);
INSERT INTO public.planet VALUES (5, 'p5', 127.0, false, NULL, 5, 5);
INSERT INTO public.planet VALUES (11, 'p6', 123.0, false, NULL, 6, 6);
INSERT INTO public.planet VALUES (12, 'p7', 12.0, false, NULL, 7, 7);
INSERT INTO public.planet VALUES (13, 'p8', 123.0, false, NULL, 7, 8);
INSERT INTO public.planet VALUES (14, 'p9', 12.0, true, NULL, 7, 9);
INSERT INTO public.planet VALUES (15, 'p10', 127.0, false, NULL, 7, 10);
INSERT INTO public.planet VALUES (16, 'p11', 123.0, false, NULL, 6, 11);
INSERT INTO public.planet VALUES (17, 'p12', 12.0, false, NULL, 4, 12);
INSERT INTO public.planet VALUES (18, 'p13', 123.0, false, NULL, 3, 13);
INSERT INTO public.planet VALUES (19, 'p14', 12.0, true, NULL, 2, 14);
INSERT INTO public.planet VALUES (20, 'p15', 127.0, false, NULL, 1, 15);
INSERT INTO public.planet VALUES (21, 'p16', 123.0, false, NULL, 6, 16);
INSERT INTO public.planet VALUES (22, 'p17', 12.0, false, NULL, 4, 17);
INSERT INTO public.planet VALUES (23, 'p18', 123.0, false, NULL, 3, 18);
INSERT INTO public.planet VALUES (24, 'p19', 12.0, true, NULL, 2, 19);
INSERT INTO public.planet VALUES (25, 'p20', 127.0, false, NULL, 1, 20);


--
-- Data for Name: planet_look; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_look VALUES (1, 'sunny', 1, 1);
INSERT INTO public.planet_look VALUES (2, 'gas', 1, 2);
INSERT INTO public.planet_look VALUES (3, 'rock', 2, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's_1', 12.0, false, NULL, 2, NULL, 1);
INSERT INTO public.star VALUES (7, 's_2', 121.0, false, NULL, 2, NULL, 2);
INSERT INTO public.star VALUES (8, 's_3', 999.0, true, NULL, 3, NULL, 3);
INSERT INTO public.star VALUES (9, 's_4', 287.0, false, NULL, 1, NULL, 4);
INSERT INTO public.star VALUES (10, 's_5', 453.0, false, NULL, 6, NULL, 5);
INSERT INTO public.star VALUES (12, 's_6', 5.0, false, NULL, 4, NULL, 6);
INSERT INTO public.star VALUES (11, 's_7', 122.0, true, NULL, 5, NULL, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_look_planet_look_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_look_planet_look_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: galaxy galaxy_s_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_s_id_key UNIQUE (s_id);


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
-- Name: planet_look planet_look_m_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_look
    ADD CONSTRAINT planet_look_m_uni_key UNIQUE (m_uni);


--
-- Name: planet_look planet_look_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_look
    ADD CONSTRAINT planet_look_pkey PRIMARY KEY (planet_look_id);


--
-- Name: planet planet_m_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_m_id_key UNIQUE (m_id);


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
-- Name: star star_p_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_p_id_key UNIQUE (p_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_mp_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_mp_id FOREIGN KEY (m_id) REFERENCES public.planet(m_id);


--
-- Name: planet_look fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_look
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_ps_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_ps_id FOREIGN KEY (p_id) REFERENCES public.star(p_id);


--
-- Name: star fk_sg_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_sg_id FOREIGN KEY (s_id) REFERENCES public.galaxy(s_id);


--
-- PostgreSQL database dump complete
--

