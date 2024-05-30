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
    name character varying(40) NOT NULL,
    blackhole_id integer NOT NULL,
    description text NOT NULL,
    is_sphere boolean,
    has_life boolean,
    age_in_million_years integer,
    size_in_light_years numeric,
    rotation_time_in_years numeric(15,4)
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    is_sphere boolean,
    has_life boolean,
    age_in_million_years integer,
    size_in_light_years numeric,
    rotation_time_in_years numeric(15,4)
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
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    description text NOT NULL,
    is_sphere boolean,
    has_life boolean,
    age_in_million_years integer,
    size_in_light_years numeric,
    rotation_time_in_years numeric(15,4),
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL,
    is_sphere boolean,
    has_life boolean,
    age_in_million_years integer,
    size_in_light_years numeric,
    rotation_time_in_years numeric(15,4),
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    description text NOT NULL,
    is_sphere boolean,
    has_life boolean,
    age_in_million_years integer,
    size_in_light_years numeric,
    rotation_time_in_years numeric(15,4),
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

INSERT INTO public.blackhole VALUES ('Cygnus X-1', 1, 'First black hole discovered', true, NULL, 10000, 10, NULL);
INSERT INTO public.blackhole VALUES ('Sagittarius A*', 2, 'Located at the Galactic Center of the Milky Way', true, NULL, 13000, 30, NULL);
INSERT INTO public.blackhole VALUES ('M87*', 3, 'A nucleus located in the center of the M87 galaxy', true, NULL, 15000, 60, NULL);
INSERT INTO public.blackhole VALUES ('V404 Cygni', 4, 'Transient black hole system', true, NULL, 12000, 20, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Contains billions of stars and is the galaxy for which Earth is a part of', true, false, 13500, 100000, 250000000.0000);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Largest galaxy in the Local Group', false, NULL, 10000, 220000, 200000000.0000);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 'A member of the Local Group and is a smaller spiral galaxy as compared to Andromeda', false, NULL, 5000, 60000, 150000000.0000);
INSERT INTO public.galaxy VALUES ('Messier 87', 4, 'Elliptical galaxy in the Virgo Cluster centred around a black hole', true, NULL, 10000, 120000, 4000000000.0000);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 'Spiral galaxy that has a dust lane resembling a sombrero hat', false, NULL, 10000, 50000, 200000000.0000);
INSERT INTO public.galaxy VALUES ('Whirlpool', 6, 'Spiral galaxy', false, NULL, 10000, 60000, 300000000.0000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 5, 'Earth''s natural satellite', true, NULL, 4600, 0.000000384, 27.3000, 3);
INSERT INTO public.moon VALUES ('Phobos', 6, 'The larger and closer of Mars''s two moon', true, NULL, 4600, 0.000000001, 0.3200, 4);
INSERT INTO public.moon VALUES ('Deimos', 7, 'The smaller and more distant of Mars''s two moons', true, NULL, 4600, 0.000000002, 1.2600, 4);
INSERT INTO public.moon VALUES ('Io', 8, 'The innermost of Jupiter''s four Galilean moons', true, NULL, 4600, 0.000000005, 1.7700, 5);
INSERT INTO public.moon VALUES ('Europa', 9, 'The smallest of Jupiter''s four Galilean moons', true, NULL, 4600, 0.000000004, 3.5500, 5);
INSERT INTO public.moon VALUES ('Ganymede', 10, 'The largest moon in the Solar System', true, NULL, 4600, 0.000000025, 7.1500, 5);
INSERT INTO public.moon VALUES ('Callisto', 11, 'The second largest moon of Jupiter', true, NULL, 4600, 0.000000018, 16.6900, 5);
INSERT INTO public.moon VALUES ('Mimas', 12, 'Named after a son of Gaia in Greek mythology', true, NULL, 4600, 0.000000001, 0.9400, 6);
INSERT INTO public.moon VALUES ('Enceladus', 13, 'Contains a subsurface ocean beneath its icy surface', true, NULL, 4600, 0.000000001, 1.3700, 6);
INSERT INTO public.moon VALUES ('Tethys', 14, 'The fifth-largest moon of Saturn', true, NULL, 4600, 0.000000002, 1.8900, 6);
INSERT INTO public.moon VALUES ('Dione', 15, 'Named after the Titaness Dione in Greek mythology', true, NULL, 4600, 0.000000002, 2.7400, 6);
INSERT INTO public.moon VALUES ('Rhea', 16, 'The second-largest moon of Saturn', true, NULL, 4600, 0.000000003, 4.5200, 6);
INSERT INTO public.moon VALUES ('Titan', 17, 'The largest moon of Saturn', true, NULL, 4600, 0.000000054, 15.9500, 6);
INSERT INTO public.moon VALUES ('Iapetus', 18, 'Best known for its dramatic two-tone coloration', true, NULL, 4600, 0.000000023, 79.3300, 6);
INSERT INTO public.moon VALUES ('Miranda', 19, 'The smallest and innermost of Uranus''s five major moons', true, NULL, 4600, 0.000000001, 1.4100, 7);
INSERT INTO public.moon VALUES ('Ariel', 20, 'The fourth-largest of Uranus''s moons', true, NULL, 4600, 0.000000001, 2.5200, 7);
INSERT INTO public.moon VALUES ('Umbriel', 21, 'The third-largest and least massive of Uranus''s five major moons', true, NULL, 4600, 0.000000002, 4.1400, 7);
INSERT INTO public.moon VALUES ('Titania', 22, 'The largest of Uranus''s moons', true, NULL, 4600, 0.000000003, 8.7100, 7);
INSERT INTO public.moon VALUES ('Oberon', 23, 'The second-largest and second-most massive of Uranus''s moons', true, NULL, 4600, 0.000000003, 13.4600, 7);
INSERT INTO public.moon VALUES ('Nereid', 24, 'The third-largest moon of Neptune', true, NULL, 4600, 0.000000005, 360.1300, 8);
INSERT INTO public.moon VALUES ('Proteus', 25, 'The second-largest moon of Neptune', true, NULL, 4600, 0.000000004, 1.1200, 8);
INSERT INTO public.moon VALUES ('Larissa', 26, 'Named after the daughter of Pelasgus in Greek mythology', true, NULL, 4600, 0.000000001, 0.5500, 8);
INSERT INTO public.moon VALUES ('Triton', 27, 'The largest moon of Neptune', true, NULL, 4600, 0.000000002, -5.8800, 8);
INSERT INTO public.moon VALUES ('Charon', 28, 'The largest moon of Pluto', true, NULL, 4600, 0.00000002, 6.3900, 9);
INSERT INTO public.moon VALUES ('Styx', 29, 'One of the five known moons of Pluto', true, NULL, 4600, 0.000000001, 20.1600, 9);
INSERT INTO public.moon VALUES ('Nix', 30, 'The second-largest moon of Pluto', true, NULL, 4600, 0.000000001, 1.8300, 9);
INSERT INTO public.moon VALUES ('Kerberos', 31, 'Discovered in 2011', true, NULL, 4600, 0.000000001, 32.1700, 9);
INSERT INTO public.moon VALUES ('Hydra', 32, 'The outermost known moon of Pluto', true, NULL, 4600, 0.000000001, 38.2000, 9);
INSERT INTO public.moon VALUES ('Phoebe', 33, 'The largest irregular satellite of Saturn', true, NULL, 4600, 0.000000004, 550.4800, 6);
INSERT INTO public.moon VALUES ('Hyperion', 34, 'Known for its irregular shape and chaotic rotation', true, NULL, 4600, 0.000000007, 21.2800, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 'The smallest planet in the Solar System', true, false, 4600, 0.000003, 1408.0000, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 'The second planet from the Sun.', true, false, 4600, 0.000009, 5833.0000, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 'The only known planet to support life', true, true, 4600, 0.00001, 24.0000, 1);
INSERT INTO public.planet VALUES ('Mars', 4, 'Is red in colour', true, false, 4600, 0.000005, 25.0000, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, 'The largest planet in the Solar System', true, false, 4600, 0.0001, 1.0000, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, 'Has a ring system', true, false, 4600, 0.00009, 1.0000, 1);
INSERT INTO public.planet VALUES ('Neptune', 7, 'The farthest known planet from the Sun', true, false, 4600, 0.000029, 1.0000, 1);
INSERT INTO public.planet VALUES ('Kepler-186f', 8, 'An exoplanet orbiting within Proxima Centauri', true, NULL, NULL, 0.000027, NULL, 2);
INSERT INTO public.planet VALUES ('Kepler-442b', 9, 'An exoplanet orbiting within Alpha Centauri A', true, NULL, NULL, 0.00006, NULL, 5);
INSERT INTO public.planet VALUES ('Kepler-425b', 10, 'An exoplanet orbiting a star similar to Sirius A', true, NULL, NULL, 0.00008, NULL, 4);
INSERT INTO public.planet VALUES ('Kepler-438b', 12, 'An exoplanet orbiting within Alpha Centauri B', true, NULL, NULL, 0.00006, NULL, 6);
INSERT INTO public.planet VALUES ('HD 189733b', 11, 'An exoplanet orbiting the star Polaris, known for its deep blue coloration', true, NULL, NULL, 0.000028, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Star at the center of the Solar System', true, true, 5000, 1, 25000000.0000, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 2, 'Red dwarf star nearest to the Sun', true, false, 4000, 0.1, 200000000.0000, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 3, 'Red supergiant star in the constellation of Orion', true, false, 8000, 1000, 150000000.0000, 2);
INSERT INTO public.star VALUES ('Sirius', 4, 'Brightest star in the night sky, part of the constellation Canis Major', true, true, 6000, 2, 30000000.0000, 2);
INSERT INTO public.star VALUES ('Alpha Centauri A', 5, 'Main sequence star in the Alpha Centauri system', true, true, 7000, 3, 35000000.0000, 3);
INSERT INTO public.star VALUES ('Alpha Centauri B', 6, 'Orbiting around Alpha Centauri A', true, true, 6000, 2.5, 32000000.0000, 3);
INSERT INTO public.star VALUES ('Polaris', 7, 'The North Star', true, NULL, 70, 0.00003, 30.0000, 1);


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

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- PostgreSQL database dump complete
--

