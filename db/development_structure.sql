--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: player_class; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE player_class AS ENUM (
    'freshman',
    'sophomore',
    'junior',
    'senior'
);


--
-- Name: player_position; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE player_position AS ENUM (
    'center',
    'offensive guard',
    'offensive tackle',
    'tight end',
    'wide receiver',
    'fullback',
    'running back',
    'quarterback',
    'defensive end',
    'defensive tackle',
    'nose guard',
    'linebacker',
    'cornerback',
    'safety',
    'nickelback',
    'dimeback',
    'kicker',
    'holder',
    'long snapper',
    'kick returner',
    'punter',
    'upback',
    'punt returner',
    'gunner',
    'wedge buster'
);


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authors (
    author_id integer NOT NULL,
    name character varying(255)
);


--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE authors_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE authors_author_id_seq OWNED BY authors.author_id;


--
-- Name: content_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE content_types (
    content_type_id integer NOT NULL,
    name character varying(255)
);


--
-- Name: content_types_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE content_types_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: content_types_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE content_types_content_type_id_seq OWNED BY content_types.content_type_id;


--
-- Name: doc_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE doc_types (
    doc_type_id integer NOT NULL,
    name character varying(255)
);


--
-- Name: doc_types_doc_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_types_doc_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: doc_types_doc_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_types_doc_type_id_seq OWNED BY doc_types.doc_type_id;


--
-- Name: docs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE docs (
    doc_id integer NOT NULL,
    path character varying(255),
    doc_type_id integer,
    content_type_id integer,
    title character varying(255),
    summary text,
    date date,
    location character varying(255)
);


--
-- Name: docs_doc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE docs_doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: docs_doc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE docs_doc_id_seq OWNED BY docs.doc_id;


--
-- Name: docs_tags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE docs_tags (
    doc_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: docs_teams_authors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE docs_teams_authors (
    doc_id integer NOT NULL,
    team_id integer NOT NULL,
    author_id integer NOT NULL
);


--
-- Name: players; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE players (
    player_id integer NOT NULL,
    team_id integer,
    name character varying(255),
    number integer,
    height character varying(255),
    weight character varying(255),
    class player_class,
    "position" player_position
);


--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE players_player_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE players_player_id_seq OWNED BY players.player_id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tags (
    tag_id integer NOT NULL,
    name character varying(255)
);


--
-- Name: tags_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tags_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: tags_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tags_tag_id_seq OWNED BY tags.tag_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE teams (
    team_id integer NOT NULL,
    name character varying(255),
    description text
);


--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE teams_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE teams_team_id_seq OWNED BY teams.team_id;


--
-- Name: author_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE authors ALTER COLUMN author_id SET DEFAULT nextval('authors_author_id_seq'::regclass);


--
-- Name: content_type_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE content_types ALTER COLUMN content_type_id SET DEFAULT nextval('content_types_content_type_id_seq'::regclass);


--
-- Name: doc_type_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE doc_types ALTER COLUMN doc_type_id SET DEFAULT nextval('doc_types_doc_type_id_seq'::regclass);


--
-- Name: doc_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE docs ALTER COLUMN doc_id SET DEFAULT nextval('docs_doc_id_seq'::regclass);


--
-- Name: player_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE players ALTER COLUMN player_id SET DEFAULT nextval('players_player_id_seq'::regclass);


--
-- Name: tag_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE tags ALTER COLUMN tag_id SET DEFAULT nextval('tags_tag_id_seq'::regclass);


--
-- Name: team_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE teams ALTER COLUMN team_id SET DEFAULT nextval('teams_team_id_seq'::regclass);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: content_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY content_types
    ADD CONSTRAINT content_types_pkey PRIMARY KEY (content_type_id);


--
-- Name: doc_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY doc_types
    ADD CONSTRAINT doc_types_pkey PRIMARY KEY (doc_type_id);


--
-- Name: docs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY docs
    ADD CONSTRAINT docs_pkey PRIMARY KEY (doc_id);


--
-- Name: docs_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY docs_tags
    ADD CONSTRAINT docs_tags_pkey PRIMARY KEY (doc_id, tag_id);


--
-- Name: docs_teams_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY docs_teams_authors
    ADD CONSTRAINT docs_teams_authors_pkey PRIMARY KEY (doc_id, team_id, author_id);


--
-- Name: players_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tag_id);


--
-- Name: teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

INSERT INTO schema_migrations (version) VALUES ('20090830162949');

INSERT INTO schema_migrations (version) VALUES ('20090830163006');

INSERT INTO schema_migrations (version) VALUES ('20090830163015');

INSERT INTO schema_migrations (version) VALUES ('20090830163029');

INSERT INTO schema_migrations (version) VALUES ('20090830163035');

INSERT INTO schema_migrations (version) VALUES ('20090830163041');

INSERT INTO schema_migrations (version) VALUES ('20090830163046');

INSERT INTO schema_migrations (version) VALUES ('20090830163102');

INSERT INTO schema_migrations (version) VALUES ('20090830164205');