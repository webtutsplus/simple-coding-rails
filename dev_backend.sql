--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ahoy_events; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.ahoy_events (
    id bigint NOT NULL,
    name character varying,
    properties jsonb,
    "time" timestamp without time zone,
    user_id bigint,
    visit_id bigint
);


ALTER TABLE public.ahoy_events OWNER TO contact_webtutsplus;

--
-- Name: ahoy_events_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.ahoy_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ahoy_events_id_seq OWNER TO contact_webtutsplus;

--
-- Name: ahoy_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.ahoy_events_id_seq OWNED BY public.ahoy_events.id;


--
-- Name: ahoy_messages; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.ahoy_messages (
    id bigint NOT NULL,
    clicked_at timestamp without time zone,
    content text,
    feedback_message_id bigint,
    mailer character varying,
    opened_at timestamp without time zone,
    sent_at timestamp without time zone,
    subject text,
    "to" text,
    token character varying,
    user_id bigint,
    user_type character varying,
    utm_campaign character varying,
    utm_content character varying,
    utm_medium character varying,
    utm_source character varying,
    utm_term character varying
);


ALTER TABLE public.ahoy_messages OWNER TO contact_webtutsplus;

--
-- Name: ahoy_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.ahoy_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ahoy_messages_id_seq OWNER TO contact_webtutsplus;

--
-- Name: ahoy_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.ahoy_messages_id_seq OWNED BY public.ahoy_messages.id;


--
-- Name: ahoy_visits; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.ahoy_visits (
    id bigint NOT NULL,
    started_at timestamp without time zone,
    user_id bigint,
    visit_token character varying,
    visitor_token character varying
);


ALTER TABLE public.ahoy_visits OWNER TO contact_webtutsplus;

--
-- Name: ahoy_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.ahoy_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ahoy_visits_id_seq OWNER TO contact_webtutsplus;

--
-- Name: ahoy_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.ahoy_visits_id_seq OWNED BY public.ahoy_visits.id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.announcements (
    id bigint NOT NULL,
    banner_style character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.announcements OWNER TO contact_webtutsplus;

--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_id_seq OWNER TO contact_webtutsplus;

--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: api_secrets; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.api_secrets (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    description character varying NOT NULL,
    secret character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.api_secrets OWNER TO contact_webtutsplus;

--
-- Name: api_secrets_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.api_secrets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_secrets_id_seq OWNER TO contact_webtutsplus;

--
-- Name: api_secrets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.api_secrets_id_seq OWNED BY public.api_secrets.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO contact_webtutsplus;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    any_comments_hidden boolean DEFAULT false,
    approved boolean DEFAULT false,
    archived boolean DEFAULT false,
    body_html text,
    body_markdown text,
    boost_states jsonb DEFAULT '{}'::jsonb NOT NULL,
    cached_organization text,
    cached_tag_list character varying,
    cached_user text,
    cached_user_name character varying,
    cached_user_username character varying,
    canonical_url character varying,
    co_author_ids bigint[] DEFAULT '{}'::bigint[],
    collection_id bigint,
    comment_score integer DEFAULT 0,
    comment_template character varying,
    comments_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    crossposted_at timestamp without time zone,
    description character varying,
    edited_at timestamp without time zone,
    email_digest_eligible boolean DEFAULT true,
    experience_level_rating double precision DEFAULT 5.0,
    experience_level_rating_distribution double precision DEFAULT 5.0,
    facebook_last_buffered timestamp without time zone,
    featured boolean DEFAULT false,
    featured_number integer,
    feed_source_url character varying,
    hotness_score integer DEFAULT 0,
    language character varying,
    last_buffered timestamp without time zone,
    last_comment_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    last_experience_level_rating_at timestamp without time zone,
    main_image character varying,
    main_image_background_hex_color character varying DEFAULT '#dddddd'::character varying,
    nth_published_by_author integer DEFAULT 0,
    organic_page_views_count integer DEFAULT 0,
    organic_page_views_past_month_count integer DEFAULT 0,
    organic_page_views_past_week_count integer DEFAULT 0,
    organization_id bigint,
    originally_published_at timestamp without time zone,
    page_views_count integer DEFAULT 0,
    password character varying,
    path character varying,
    positive_reactions_count integer DEFAULT 0 NOT NULL,
    previous_positive_reactions_count integer DEFAULT 0,
    previous_public_reactions_count integer DEFAULT 0 NOT NULL,
    processed_html text,
    public_reactions_count integer DEFAULT 0 NOT NULL,
    published boolean DEFAULT false,
    published_at timestamp without time zone,
    published_from_feed boolean DEFAULT false,
    rating_votes_count integer DEFAULT 0 NOT NULL,
    reactions_count integer DEFAULT 0 NOT NULL,
    reading_time integer DEFAULT 0,
    receive_notifications boolean DEFAULT true,
    score integer DEFAULT 0,
    search_optimized_description_replacement character varying,
    search_optimized_title_preamble character varying,
    show_comments boolean DEFAULT true,
    slug text,
    social_image character varying,
    spaminess_rating integer DEFAULT 0,
    title character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    user_subscriptions_count integer DEFAULT 0 NOT NULL,
    video character varying,
    video_closed_caption_track_url character varying,
    video_code character varying,
    video_duration_in_seconds double precision DEFAULT 0.0,
    video_source_url character varying,
    video_state character varying,
    video_thumbnail_url character varying
);


ALTER TABLE public.articles OWNER TO contact_webtutsplus;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO contact_webtutsplus;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: audit_logs; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.audit_logs (
    id bigint NOT NULL,
    category character varying,
    created_at timestamp without time zone NOT NULL,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    roles character varying[],
    slug character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.audit_logs OWNER TO contact_webtutsplus;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.audit_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_logs_id_seq OWNER TO contact_webtutsplus;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.audit_logs_id_seq OWNED BY public.audit_logs.id;


--
-- Name: badge_achievements; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.badge_achievements (
    id bigint NOT NULL,
    badge_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    rewarder_id bigint,
    rewarding_context_message text,
    rewarding_context_message_markdown text,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.badge_achievements OWNER TO contact_webtutsplus;

--
-- Name: badge_achievements_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.badge_achievements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.badge_achievements_id_seq OWNER TO contact_webtutsplus;

--
-- Name: badge_achievements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.badge_achievements_id_seq OWNED BY public.badge_achievements.id;


--
-- Name: badges; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.badges (
    id bigint NOT NULL,
    badge_image character varying,
    created_at timestamp without time zone NOT NULL,
    description character varying NOT NULL,
    slug character varying NOT NULL,
    title character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.badges OWNER TO contact_webtutsplus;

--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.badges_id_seq OWNER TO contact_webtutsplus;

--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.badges_id_seq OWNED BY public.badges.id;


--
-- Name: banished_users; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.banished_users (
    id bigint NOT NULL,
    banished_by_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    username character varying
);


ALTER TABLE public.banished_users OWNER TO contact_webtutsplus;

--
-- Name: banished_users_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.banished_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banished_users_id_seq OWNER TO contact_webtutsplus;

--
-- Name: banished_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.banished_users_id_seq OWNED BY public.banished_users.id;


--
-- Name: blazer_audits; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.blazer_audits (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    data_source character varying,
    query_id bigint,
    statement text,
    user_id bigint
);


ALTER TABLE public.blazer_audits OWNER TO contact_webtutsplus;

--
-- Name: blazer_audits_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.blazer_audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blazer_audits_id_seq OWNER TO contact_webtutsplus;

--
-- Name: blazer_audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.blazer_audits_id_seq OWNED BY public.blazer_audits.id;


--
-- Name: blazer_checks; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.blazer_checks (
    id bigint NOT NULL,
    check_type character varying,
    created_at timestamp without time zone NOT NULL,
    creator_id bigint,
    emails text,
    last_run_at timestamp without time zone,
    message text,
    query_id bigint,
    schedule character varying,
    slack_channels text,
    state character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.blazer_checks OWNER TO contact_webtutsplus;

--
-- Name: blazer_checks_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.blazer_checks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blazer_checks_id_seq OWNER TO contact_webtutsplus;

--
-- Name: blazer_checks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.blazer_checks_id_seq OWNED BY public.blazer_checks.id;


--
-- Name: blazer_dashboard_queries; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.blazer_dashboard_queries (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    dashboard_id bigint,
    "position" integer,
    query_id bigint,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.blazer_dashboard_queries OWNER TO contact_webtutsplus;

--
-- Name: blazer_dashboard_queries_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.blazer_dashboard_queries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blazer_dashboard_queries_id_seq OWNER TO contact_webtutsplus;

--
-- Name: blazer_dashboard_queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.blazer_dashboard_queries_id_seq OWNED BY public.blazer_dashboard_queries.id;


--
-- Name: blazer_dashboards; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.blazer_dashboards (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    creator_id bigint,
    name text,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.blazer_dashboards OWNER TO contact_webtutsplus;

--
-- Name: blazer_dashboards_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.blazer_dashboards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blazer_dashboards_id_seq OWNER TO contact_webtutsplus;

--
-- Name: blazer_dashboards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.blazer_dashboards_id_seq OWNED BY public.blazer_dashboards.id;


--
-- Name: blazer_queries; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.blazer_queries (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    creator_id bigint,
    data_source character varying,
    description text,
    name character varying,
    statement text,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.blazer_queries OWNER TO contact_webtutsplus;

--
-- Name: blazer_queries_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.blazer_queries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blazer_queries_id_seq OWNER TO contact_webtutsplus;

--
-- Name: blazer_queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.blazer_queries_id_seq OWNED BY public.blazer_queries.id;


--
-- Name: broadcasts; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.broadcasts (
    id bigint NOT NULL,
    active boolean DEFAULT false,
    active_status_updated_at timestamp without time zone,
    banner_style character varying,
    body_markdown text,
    broadcastable_id bigint,
    broadcastable_type character varying,
    created_at timestamp without time zone,
    processed_html text,
    title character varying,
    type_of character varying,
    updated_at timestamp without time zone
);


ALTER TABLE public.broadcasts OWNER TO contact_webtutsplus;

--
-- Name: broadcasts_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.broadcasts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.broadcasts_id_seq OWNER TO contact_webtutsplus;

--
-- Name: broadcasts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.broadcasts_id_seq OWNED BY public.broadcasts.id;


--
-- Name: buffer_updates; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.buffer_updates (
    id bigint NOT NULL,
    approver_user_id bigint,
    article_id bigint NOT NULL,
    body_text text,
    buffer_id_code character varying,
    buffer_profile_id_code character varying,
    buffer_response text DEFAULT '--- {}
'::text,
    composer_user_id bigint,
    created_at timestamp without time zone NOT NULL,
    social_service_name character varying,
    status character varying DEFAULT 'pending'::character varying,
    tag_id bigint,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.buffer_updates OWNER TO contact_webtutsplus;

--
-- Name: buffer_updates_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.buffer_updates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buffer_updates_id_seq OWNER TO contact_webtutsplus;

--
-- Name: buffer_updates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.buffer_updates_id_seq OWNED BY public.buffer_updates.id;


--
-- Name: chat_channel_memberships; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.chat_channel_memberships (
    id bigint NOT NULL,
    chat_channel_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    has_unopened_messages boolean DEFAULT false,
    last_opened_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    role character varying DEFAULT 'member'::character varying,
    show_global_badge_notification boolean DEFAULT true,
    status character varying DEFAULT 'active'::character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.chat_channel_memberships OWNER TO contact_webtutsplus;

--
-- Name: chat_channel_memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.chat_channel_memberships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_channel_memberships_id_seq OWNER TO contact_webtutsplus;

--
-- Name: chat_channel_memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.chat_channel_memberships_id_seq OWNED BY public.chat_channel_memberships.id;


--
-- Name: chat_channels; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.chat_channels (
    id bigint NOT NULL,
    channel_name character varying,
    channel_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    description character varying,
    discoverable boolean DEFAULT false,
    last_message_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    slug character varying,
    status character varying DEFAULT 'active'::character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.chat_channels OWNER TO contact_webtutsplus;

--
-- Name: chat_channels_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.chat_channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chat_channels_id_seq OWNER TO contact_webtutsplus;

--
-- Name: chat_channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.chat_channels_id_seq OWNED BY public.chat_channels.id;


--
-- Name: classified_listing_categories; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.classified_listing_categories (
    id bigint NOT NULL,
    cost integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    name character varying NOT NULL,
    rules character varying NOT NULL,
    slug character varying NOT NULL,
    social_preview_color character varying,
    social_preview_description character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.classified_listing_categories OWNER TO contact_webtutsplus;

--
-- Name: classified_listing_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.classified_listing_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classified_listing_categories_id_seq OWNER TO contact_webtutsplus;

--
-- Name: classified_listing_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.classified_listing_categories_id_seq OWNED BY public.classified_listing_categories.id;


--
-- Name: classified_listings; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.classified_listings (
    id bigint NOT NULL,
    body_markdown text,
    bumped_at timestamp without time zone,
    cached_tag_list character varying,
    classified_listing_category_id bigint,
    contact_via_connect boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    expires_at timestamp without time zone,
    last_buffered timestamp without time zone,
    location character varying,
    organization_id bigint,
    originally_published_at timestamp without time zone,
    processed_html text,
    published boolean,
    slug character varying,
    title character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.classified_listings OWNER TO contact_webtutsplus;

--
-- Name: classified_listings_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.classified_listings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classified_listings_id_seq OWNER TO contact_webtutsplus;

--
-- Name: classified_listings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.classified_listings_id_seq OWNED BY public.classified_listings.id;


--
-- Name: collections; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.collections (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    description character varying,
    main_image character varying,
    organization_id bigint,
    published boolean DEFAULT false,
    slug character varying,
    social_image character varying,
    title character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.collections OWNER TO contact_webtutsplus;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collections_id_seq OWNER TO contact_webtutsplus;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    ancestry character varying,
    body_html text,
    body_markdown text,
    commentable_id bigint,
    commentable_type character varying,
    created_at timestamp without time zone NOT NULL,
    deleted boolean DEFAULT false,
    edited boolean DEFAULT false,
    edited_at timestamp without time zone,
    hidden_by_commentable_user boolean DEFAULT false,
    id_code character varying,
    markdown_character_count integer,
    positive_reactions_count integer DEFAULT 0 NOT NULL,
    processed_html text,
    public_reactions_count integer DEFAULT 0 NOT NULL,
    reactions_count integer DEFAULT 0 NOT NULL,
    receive_notifications boolean DEFAULT true,
    score integer DEFAULT 0,
    spaminess_rating integer DEFAULT 0,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.comments OWNER TO contact_webtutsplus;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO contact_webtutsplus;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: credits; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.credits (
    id bigint NOT NULL,
    cost double precision DEFAULT 0.0,
    created_at timestamp without time zone NOT NULL,
    organization_id bigint,
    purchase_id bigint,
    purchase_type character varying,
    spent boolean DEFAULT false,
    spent_at timestamp without time zone,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.credits OWNER TO contact_webtutsplus;

--
-- Name: credits_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.credits_id_seq OWNER TO contact_webtutsplus;

--
-- Name: credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.credits_id_seq OWNED BY public.credits.id;


--
-- Name: custom_profile_fields; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.custom_profile_fields (
    id bigint NOT NULL,
    attribute_name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    description character varying,
    label public.citext NOT NULL,
    profile_id bigint NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.custom_profile_fields OWNER TO contact_webtutsplus;

--
-- Name: custom_profile_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.custom_profile_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_profile_fields_id_seq OWNER TO contact_webtutsplus;

--
-- Name: custom_profile_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.custom_profile_fields_id_seq OWNED BY public.custom_profile_fields.id;


--
-- Name: data_update_scripts; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.data_update_scripts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    error text,
    file_name character varying,
    finished_at timestamp without time zone,
    run_at timestamp without time zone,
    status integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.data_update_scripts OWNER TO contact_webtutsplus;

--
-- Name: data_update_scripts_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.data_update_scripts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_update_scripts_id_seq OWNER TO contact_webtutsplus;

--
-- Name: data_update_scripts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.data_update_scripts_id_seq OWNED BY public.data_update_scripts.id;


--
-- Name: display_ad_events; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.display_ad_events (
    id bigint NOT NULL,
    category character varying,
    context_type character varying,
    created_at timestamp without time zone NOT NULL,
    display_ad_id bigint,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.display_ad_events OWNER TO contact_webtutsplus;

--
-- Name: display_ad_events_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.display_ad_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.display_ad_events_id_seq OWNER TO contact_webtutsplus;

--
-- Name: display_ad_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.display_ad_events_id_seq OWNED BY public.display_ad_events.id;


--
-- Name: display_ads; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.display_ads (
    id bigint NOT NULL,
    approved boolean DEFAULT false,
    body_markdown text,
    clicks_count integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    impressions_count integer DEFAULT 0,
    organization_id bigint,
    placement_area character varying,
    processed_html text,
    published boolean DEFAULT false,
    success_rate double precision DEFAULT 0.0,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.display_ads OWNER TO contact_webtutsplus;

--
-- Name: display_ads_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.display_ads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.display_ads_id_seq OWNER TO contact_webtutsplus;

--
-- Name: display_ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.display_ads_id_seq OWNED BY public.display_ads.id;


--
-- Name: email_authorizations; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.email_authorizations (
    id bigint NOT NULL,
    confirmation_token character varying,
    created_at timestamp without time zone NOT NULL,
    json_data jsonb DEFAULT '{}'::jsonb NOT NULL,
    type_of character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    verified_at timestamp without time zone
);


ALTER TABLE public.email_authorizations OWNER TO contact_webtutsplus;

--
-- Name: email_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.email_authorizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_authorizations_id_seq OWNER TO contact_webtutsplus;

--
-- Name: email_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.email_authorizations_id_seq OWNED BY public.email_authorizations.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    category character varying,
    cover_image character varying,
    created_at timestamp without time zone NOT NULL,
    description_html text,
    description_markdown text,
    ends_at timestamp without time zone,
    host_name character varying,
    live_now boolean DEFAULT false,
    location_name character varying,
    location_url character varying,
    profile_image character varying,
    published boolean,
    slug character varying,
    starts_at timestamp without time zone,
    title character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO contact_webtutsplus;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO contact_webtutsplus;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: feedback_messages; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.feedback_messages (
    id bigint NOT NULL,
    affected_id bigint,
    category character varying,
    created_at timestamp without time zone,
    feedback_type character varying,
    message text,
    offender_id bigint,
    reported_url character varying,
    reporter_id bigint,
    status character varying DEFAULT 'Open'::character varying,
    updated_at timestamp without time zone
);


ALTER TABLE public.feedback_messages OWNER TO contact_webtutsplus;

--
-- Name: feedback_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.feedback_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedback_messages_id_seq OWNER TO contact_webtutsplus;

--
-- Name: feedback_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.feedback_messages_id_seq OWNED BY public.feedback_messages.id;


--
-- Name: field_test_events; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.field_test_events (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    field_test_membership_id bigint,
    name character varying
);


ALTER TABLE public.field_test_events OWNER TO contact_webtutsplus;

--
-- Name: field_test_events_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.field_test_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_test_events_id_seq OWNER TO contact_webtutsplus;

--
-- Name: field_test_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.field_test_events_id_seq OWNED BY public.field_test_events.id;


--
-- Name: field_test_memberships; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.field_test_memberships (
    id bigint NOT NULL,
    converted boolean DEFAULT false,
    created_at timestamp without time zone,
    experiment character varying,
    participant_id character varying,
    participant_type character varying,
    variant character varying
);


ALTER TABLE public.field_test_memberships OWNER TO contact_webtutsplus;

--
-- Name: field_test_memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.field_test_memberships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.field_test_memberships_id_seq OWNER TO contact_webtutsplus;

--
-- Name: field_test_memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.field_test_memberships_id_seq OWNED BY public.field_test_memberships.id;


--
-- Name: flipper_features; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.flipper_features (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    key character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.flipper_features OWNER TO contact_webtutsplus;

--
-- Name: flipper_features_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.flipper_features_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flipper_features_id_seq OWNER TO contact_webtutsplus;

--
-- Name: flipper_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.flipper_features_id_seq OWNED BY public.flipper_features.id;


--
-- Name: flipper_gates; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.flipper_gates (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    feature_key character varying NOT NULL,
    key character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    value character varying
);


ALTER TABLE public.flipper_gates OWNER TO contact_webtutsplus;

--
-- Name: flipper_gates_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.flipper_gates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flipper_gates_id_seq OWNER TO contact_webtutsplus;

--
-- Name: flipper_gates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.flipper_gates_id_seq OWNED BY public.flipper_gates.id;


--
-- Name: follows; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.follows (
    id bigint NOT NULL,
    blocked boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    explicit_points double precision DEFAULT 1.0,
    followable_id bigint NOT NULL,
    followable_type character varying NOT NULL,
    follower_id bigint NOT NULL,
    follower_type character varying NOT NULL,
    implicit_points double precision DEFAULT 0.0,
    points double precision DEFAULT 1.0,
    subscription_status character varying DEFAULT 'all_articles'::character varying NOT NULL,
    updated_at timestamp without time zone
);


ALTER TABLE public.follows OWNER TO contact_webtutsplus;

--
-- Name: follows_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.follows_id_seq OWNER TO contact_webtutsplus;

--
-- Name: follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.follows_id_seq OWNED BY public.follows.id;


--
-- Name: github_issues; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.github_issues (
    id bigint NOT NULL,
    category character varying,
    created_at timestamp without time zone NOT NULL,
    issue_serialized character varying DEFAULT '--- {}
'::character varying,
    processed_html character varying,
    updated_at timestamp without time zone NOT NULL,
    url character varying
);


ALTER TABLE public.github_issues OWNER TO contact_webtutsplus;

--
-- Name: github_issues_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.github_issues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.github_issues_id_seq OWNER TO contact_webtutsplus;

--
-- Name: github_issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.github_issues_id_seq OWNED BY public.github_issues.id;


--
-- Name: github_repos; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.github_repos (
    id bigint NOT NULL,
    additional_note character varying,
    bytes_size integer,
    created_at timestamp without time zone NOT NULL,
    description character varying,
    featured boolean DEFAULT false,
    fork boolean DEFAULT false,
    github_id_code bigint,
    info_hash text DEFAULT '--- {}
'::text,
    language character varying,
    name character varying,
    priority integer DEFAULT 0,
    stargazers_count integer,
    updated_at timestamp without time zone NOT NULL,
    url character varying,
    user_id bigint,
    watchers_count integer
);


ALTER TABLE public.github_repos OWNER TO contact_webtutsplus;

--
-- Name: github_repos_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.github_repos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.github_repos_id_seq OWNER TO contact_webtutsplus;

--
-- Name: github_repos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.github_repos_id_seq OWNED BY public.github_repos.id;


--
-- Name: html_variant_successes; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.html_variant_successes (
    id bigint NOT NULL,
    article_id bigint,
    created_at timestamp without time zone NOT NULL,
    html_variant_id bigint,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.html_variant_successes OWNER TO contact_webtutsplus;

--
-- Name: html_variant_successes_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.html_variant_successes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.html_variant_successes_id_seq OWNER TO contact_webtutsplus;

--
-- Name: html_variant_successes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.html_variant_successes_id_seq OWNED BY public.html_variant_successes.id;


--
-- Name: html_variant_trials; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.html_variant_trials (
    id bigint NOT NULL,
    article_id bigint,
    created_at timestamp without time zone NOT NULL,
    html_variant_id bigint,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.html_variant_trials OWNER TO contact_webtutsplus;

--
-- Name: html_variant_trials_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.html_variant_trials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.html_variant_trials_id_seq OWNER TO contact_webtutsplus;

--
-- Name: html_variant_trials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.html_variant_trials_id_seq OWNED BY public.html_variant_trials.id;


--
-- Name: html_variants; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.html_variants (
    id bigint NOT NULL,
    approved boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    "group" character varying,
    html text,
    name character varying,
    published boolean DEFAULT false,
    success_rate double precision DEFAULT 0.0,
    target_tag character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.html_variants OWNER TO contact_webtutsplus;

--
-- Name: html_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.html_variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.html_variants_id_seq OWNER TO contact_webtutsplus;

--
-- Name: html_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.html_variants_id_seq OWNED BY public.html_variants.id;


--
-- Name: identities; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.identities (
    id bigint NOT NULL,
    auth_data_dump text,
    created_at timestamp without time zone NOT NULL,
    provider character varying,
    secret character varying,
    token character varying,
    uid character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.identities OWNER TO contact_webtutsplus;

--
-- Name: identities_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.identities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.identities_id_seq OWNER TO contact_webtutsplus;

--
-- Name: identities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.identities_id_seq OWNED BY public.identities.id;


--
-- Name: mentions; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.mentions (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    mentionable_id bigint,
    mentionable_type character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.mentions OWNER TO contact_webtutsplus;

--
-- Name: mentions_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.mentions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mentions_id_seq OWNER TO contact_webtutsplus;

--
-- Name: mentions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.mentions_id_seq OWNED BY public.mentions.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    chat_action character varying,
    chat_channel_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    edited_at timestamp without time zone,
    message_html character varying NOT NULL,
    message_markdown character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.messages OWNER TO contact_webtutsplus;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO contact_webtutsplus;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: navigation_links; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.navigation_links (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    display_only_when_signed_in boolean DEFAULT false,
    icon character varying NOT NULL,
    name character varying NOT NULL,
    "position" integer,
    updated_at timestamp(6) without time zone NOT NULL,
    url character varying NOT NULL
);


ALTER TABLE public.navigation_links OWNER TO contact_webtutsplus;

--
-- Name: navigation_links_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.navigation_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_links_id_seq OWNER TO contact_webtutsplus;

--
-- Name: navigation_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.navigation_links_id_seq OWNED BY public.navigation_links.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.notes (
    id bigint NOT NULL,
    author_id bigint,
    content text,
    created_at timestamp without time zone NOT NULL,
    noteable_id bigint,
    noteable_type character varying,
    reason character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.notes OWNER TO contact_webtutsplus;

--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_id_seq OWNER TO contact_webtutsplus;

--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes.id;


--
-- Name: notification_subscriptions; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.notification_subscriptions (
    id bigint NOT NULL,
    config text DEFAULT 'all_comments'::text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    notifiable_id bigint NOT NULL,
    notifiable_type character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.notification_subscriptions OWNER TO contact_webtutsplus;

--
-- Name: notification_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.notification_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_subscriptions_id_seq OWNER TO contact_webtutsplus;

--
-- Name: notification_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.notification_subscriptions_id_seq OWNED BY public.notification_subscriptions.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    action character varying,
    created_at timestamp without time zone NOT NULL,
    json_data jsonb,
    notifiable_id bigint,
    notifiable_type character varying,
    notified_at timestamp without time zone,
    organization_id bigint,
    read boolean DEFAULT false,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.notifications OWNER TO contact_webtutsplus;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO contact_webtutsplus;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: oauth_access_grants; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.oauth_access_grants (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    resource_owner_id bigint NOT NULL,
    revoked_at timestamp without time zone,
    scopes character varying,
    token character varying NOT NULL
);


ALTER TABLE public.oauth_access_grants OWNER TO contact_webtutsplus;

--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_access_grants_id_seq OWNER TO contact_webtutsplus;

--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.oauth_access_grants_id_seq OWNED BY public.oauth_access_grants.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.oauth_access_tokens (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    expires_in integer,
    previous_refresh_token character varying DEFAULT ''::character varying NOT NULL,
    refresh_token character varying,
    resource_owner_id bigint,
    revoked_at timestamp without time zone,
    scopes character varying,
    token character varying NOT NULL
);


ALTER TABLE public.oauth_access_tokens OWNER TO contact_webtutsplus;

--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_access_tokens_id_seq OWNER TO contact_webtutsplus;

--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.oauth_access_tokens_id_seq OWNED BY public.oauth_access_tokens.id;


--
-- Name: oauth_applications; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.oauth_applications (
    id bigint NOT NULL,
    confidential boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone NOT NULL,
    name character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT ''::character varying NOT NULL,
    secret character varying NOT NULL,
    uid character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.oauth_applications OWNER TO contact_webtutsplus;

--
-- Name: oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_applications_id_seq OWNER TO contact_webtutsplus;

--
-- Name: oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.oauth_applications_id_seq OWNED BY public.oauth_applications.id;


--
-- Name: organization_memberships; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.organization_memberships (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    organization_id bigint NOT NULL,
    type_of_user character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL,
    user_title character varying
);


ALTER TABLE public.organization_memberships OWNER TO contact_webtutsplus;

--
-- Name: organization_memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.organization_memberships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organization_memberships_id_seq OWNER TO contact_webtutsplus;

--
-- Name: organization_memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.organization_memberships_id_seq OWNED BY public.organization_memberships.id;


--
-- Name: organizations; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.organizations (
    id bigint NOT NULL,
    articles_count integer DEFAULT 0 NOT NULL,
    bg_color_hex character varying,
    company_size character varying,
    created_at timestamp without time zone NOT NULL,
    credits_count integer DEFAULT 0 NOT NULL,
    cta_body_markdown text,
    cta_button_text character varying,
    cta_button_url character varying,
    cta_processed_html text,
    dark_nav_image character varying,
    email character varying,
    github_username character varying,
    last_article_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    latest_article_updated_at timestamp without time zone,
    location character varying,
    name character varying,
    nav_image character varying,
    old_old_slug character varying,
    old_slug character varying,
    profile_image character varying,
    profile_updated_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    proof text,
    secret character varying,
    slug character varying,
    spent_credits_count integer DEFAULT 0 NOT NULL,
    story character varying,
    summary text,
    tag_line character varying,
    tech_stack character varying,
    text_color_hex character varying,
    twitter_username character varying,
    unspent_credits_count integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    url character varying
);


ALTER TABLE public.organizations OWNER TO contact_webtutsplus;

--
-- Name: organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.organizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organizations_id_seq OWNER TO contact_webtutsplus;

--
-- Name: organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;


--
-- Name: page_views; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.page_views (
    id bigint NOT NULL,
    article_id bigint,
    counts_for_number_of_views integer DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    domain character varying,
    path character varying,
    referrer character varying,
    time_tracked_in_seconds integer DEFAULT 15,
    updated_at timestamp without time zone NOT NULL,
    user_agent character varying,
    user_id bigint
);


ALTER TABLE public.page_views OWNER TO contact_webtutsplus;

--
-- Name: page_views_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.page_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_views_id_seq OWNER TO contact_webtutsplus;

--
-- Name: page_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.page_views_id_seq OWNED BY public.page_views.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    body_html text,
    body_json jsonb,
    body_markdown text,
    created_at timestamp without time zone NOT NULL,
    description character varying,
    is_top_level_path boolean DEFAULT false,
    processed_html text,
    slug character varying,
    social_image character varying,
    template character varying,
    title character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.pages OWNER TO contact_webtutsplus;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO contact_webtutsplus;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: podcast_episode_appearances; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.podcast_episode_appearances (
    id bigint NOT NULL,
    approved boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    featured_on_user_profile boolean DEFAULT false NOT NULL,
    podcast_episode_id bigint NOT NULL,
    role character varying DEFAULT 'guest'::character varying NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.podcast_episode_appearances OWNER TO contact_webtutsplus;

--
-- Name: podcast_episode_appearances_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.podcast_episode_appearances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcast_episode_appearances_id_seq OWNER TO contact_webtutsplus;

--
-- Name: podcast_episode_appearances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.podcast_episode_appearances_id_seq OWNED BY public.podcast_episode_appearances.id;


--
-- Name: podcast_episodes; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.podcast_episodes (
    id bigint NOT NULL,
    any_comments_hidden boolean DEFAULT false,
    body text,
    comments_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    duration_in_seconds integer,
    guid character varying NOT NULL,
    https boolean DEFAULT true,
    image character varying,
    itunes_url character varying,
    media_url character varying NOT NULL,
    podcast_id bigint,
    processed_html text,
    published_at timestamp without time zone,
    quote text,
    reachable boolean DEFAULT true,
    reactions_count integer DEFAULT 0 NOT NULL,
    slug character varying NOT NULL,
    social_image character varying,
    status_notice character varying,
    subtitle character varying,
    summary text,
    title character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    website_url character varying
);


ALTER TABLE public.podcast_episodes OWNER TO contact_webtutsplus;

--
-- Name: podcast_episodes_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.podcast_episodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcast_episodes_id_seq OWNER TO contact_webtutsplus;

--
-- Name: podcast_episodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.podcast_episodes_id_seq OWNED BY public.podcast_episodes.id;


--
-- Name: podcast_ownerships; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.podcast_ownerships (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    podcast_id bigint NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.podcast_ownerships OWNER TO contact_webtutsplus;

--
-- Name: podcast_ownerships_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.podcast_ownerships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcast_ownerships_id_seq OWNER TO contact_webtutsplus;

--
-- Name: podcast_ownerships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.podcast_ownerships_id_seq OWNED BY public.podcast_ownerships.id;


--
-- Name: podcasts; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.podcasts (
    id bigint NOT NULL,
    android_url character varying,
    created_at timestamp without time zone NOT NULL,
    creator_id bigint,
    description text,
    feed_url character varying NOT NULL,
    image character varying NOT NULL,
    itunes_url character varying,
    main_color_hex character varying NOT NULL,
    overcast_url character varying,
    pattern_image character varying,
    published boolean DEFAULT false,
    reachable boolean DEFAULT true,
    slug character varying NOT NULL,
    soundcloud_url character varying,
    status_notice text DEFAULT ''::text,
    title character varying NOT NULL,
    twitter_username character varying,
    "unique_website_url?" boolean DEFAULT true,
    updated_at timestamp without time zone NOT NULL,
    website_url character varying
);


ALTER TABLE public.podcasts OWNER TO contact_webtutsplus;

--
-- Name: podcasts_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.podcasts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcasts_id_seq OWNER TO contact_webtutsplus;

--
-- Name: podcasts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.podcasts_id_seq OWNED BY public.podcasts.id;


--
-- Name: poll_options; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.poll_options (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    markdown character varying,
    poll_id bigint,
    poll_votes_count integer DEFAULT 0 NOT NULL,
    processed_html character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.poll_options OWNER TO contact_webtutsplus;

--
-- Name: poll_options_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.poll_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poll_options_id_seq OWNER TO contact_webtutsplus;

--
-- Name: poll_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.poll_options_id_seq OWNED BY public.poll_options.id;


--
-- Name: poll_skips; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.poll_skips (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    poll_id bigint,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.poll_skips OWNER TO contact_webtutsplus;

--
-- Name: poll_skips_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.poll_skips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poll_skips_id_seq OWNER TO contact_webtutsplus;

--
-- Name: poll_skips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.poll_skips_id_seq OWNED BY public.poll_skips.id;


--
-- Name: poll_votes; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.poll_votes (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    poll_id bigint NOT NULL,
    poll_option_id bigint NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.poll_votes OWNER TO contact_webtutsplus;

--
-- Name: poll_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.poll_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poll_votes_id_seq OWNER TO contact_webtutsplus;

--
-- Name: poll_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.poll_votes_id_seq OWNED BY public.poll_votes.id;


--
-- Name: polls; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.polls (
    id bigint NOT NULL,
    article_id bigint,
    created_at timestamp without time zone NOT NULL,
    poll_options_count integer DEFAULT 0 NOT NULL,
    poll_skips_count integer DEFAULT 0 NOT NULL,
    poll_votes_count integer DEFAULT 0 NOT NULL,
    prompt_html character varying,
    prompt_markdown character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.polls OWNER TO contact_webtutsplus;

--
-- Name: polls_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_id_seq OWNER TO contact_webtutsplus;

--
-- Name: polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.polls_id_seq OWNED BY public.polls.id;


--
-- Name: profile_field_groups; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.profile_field_groups (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    description character varying,
    name character varying NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.profile_field_groups OWNER TO contact_webtutsplus;

--
-- Name: profile_field_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.profile_field_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_field_groups_id_seq OWNER TO contact_webtutsplus;

--
-- Name: profile_field_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.profile_field_groups_id_seq OWNED BY public.profile_field_groups.id;


--
-- Name: profile_fields; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.profile_fields (
    id bigint NOT NULL,
    attribute_name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    description character varying,
    display_area integer DEFAULT 1 NOT NULL,
    input_type integer DEFAULT 0 NOT NULL,
    label public.citext NOT NULL,
    placeholder_text character varying,
    profile_field_group_id bigint,
    show_in_onboarding boolean DEFAULT false NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.profile_fields OWNER TO contact_webtutsplus;

--
-- Name: profile_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.profile_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_fields_id_seq OWNER TO contact_webtutsplus;

--
-- Name: profile_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.profile_fields_id_seq OWNED BY public.profile_fields.id;


--
-- Name: profile_pins; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.profile_pins (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    pinnable_id bigint,
    pinnable_type character varying,
    profile_id bigint,
    profile_type character varying,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.profile_pins OWNER TO contact_webtutsplus;

--
-- Name: profile_pins_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.profile_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_pins_id_seq OWNER TO contact_webtutsplus;

--
-- Name: profile_pins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.profile_pins_id_seq OWNED BY public.profile_pins.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.profiles (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    data jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.profiles OWNER TO contact_webtutsplus;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO contact_webtutsplus;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: rating_votes; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.rating_votes (
    id bigint NOT NULL,
    article_id bigint,
    context character varying DEFAULT 'explicit'::character varying,
    created_at timestamp without time zone NOT NULL,
    "group" character varying,
    rating double precision,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.rating_votes OWNER TO contact_webtutsplus;

--
-- Name: rating_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.rating_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rating_votes_id_seq OWNER TO contact_webtutsplus;

--
-- Name: rating_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.rating_votes_id_seq OWNED BY public.rating_votes.id;


--
-- Name: reactions; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.reactions (
    id bigint NOT NULL,
    category character varying,
    created_at timestamp without time zone NOT NULL,
    points double precision DEFAULT 1.0,
    reactable_id bigint,
    reactable_type character varying,
    status character varying DEFAULT 'valid'::character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.reactions OWNER TO contact_webtutsplus;

--
-- Name: reactions_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reactions_id_seq OWNER TO contact_webtutsplus;

--
-- Name: reactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.reactions_id_seq OWNED BY public.reactions.id;


--
-- Name: response_templates; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.response_templates (
    id bigint NOT NULL,
    content text NOT NULL,
    content_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    title character varying NOT NULL,
    type_of character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.response_templates OWNER TO contact_webtutsplus;

--
-- Name: response_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.response_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.response_templates_id_seq OWNER TO contact_webtutsplus;

--
-- Name: response_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.response_templates_id_seq OWNED BY public.response_templates.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    name character varying,
    resource_id bigint,
    resource_type character varying,
    updated_at timestamp without time zone
);


ALTER TABLE public.roles OWNER TO contact_webtutsplus;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO contact_webtutsplus;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO contact_webtutsplus;

--
-- Name: site_configs; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.site_configs (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    value text,
    var character varying NOT NULL
);


ALTER TABLE public.site_configs OWNER TO contact_webtutsplus;

--
-- Name: site_configs_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.site_configs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_configs_id_seq OWNER TO contact_webtutsplus;

--
-- Name: site_configs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.site_configs_id_seq OWNED BY public.site_configs.id;


--
-- Name: sponsorships; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.sponsorships (
    id bigint NOT NULL,
    blurb_html text,
    created_at timestamp without time zone NOT NULL,
    expires_at timestamp without time zone,
    featured_number integer DEFAULT 0 NOT NULL,
    instructions text,
    instructions_updated_at timestamp without time zone,
    level character varying NOT NULL,
    organization_id bigint,
    sponsorable_id bigint,
    sponsorable_type character varying,
    status character varying DEFAULT 'none'::character varying NOT NULL,
    tagline character varying,
    updated_at timestamp without time zone NOT NULL,
    url character varying,
    user_id bigint
);


ALTER TABLE public.sponsorships OWNER TO contact_webtutsplus;

--
-- Name: sponsorships_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.sponsorships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sponsorships_id_seq OWNER TO contact_webtutsplus;

--
-- Name: sponsorships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.sponsorships_id_seq OWNED BY public.sponsorships.id;


--
-- Name: tag_adjustments; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.tag_adjustments (
    id bigint NOT NULL,
    adjustment_type character varying,
    article_id bigint,
    created_at timestamp without time zone NOT NULL,
    reason_for_adjustment character varying,
    status character varying,
    tag_id bigint,
    tag_name character varying,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.tag_adjustments OWNER TO contact_webtutsplus;

--
-- Name: tag_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.tag_adjustments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_adjustments_id_seq OWNER TO contact_webtutsplus;

--
-- Name: tag_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.tag_adjustments_id_seq OWNED BY public.tag_adjustments.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.taggings (
    id bigint NOT NULL,
    context character varying(128),
    created_at timestamp without time zone,
    tag_id bigint,
    taggable_id bigint,
    taggable_type character varying,
    tagger_id bigint,
    tagger_type character varying
);


ALTER TABLE public.taggings OWNER TO contact_webtutsplus;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO contact_webtutsplus;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    alias_for character varying,
    badge_id bigint,
    bg_color_hex character varying,
    buffer_profile_id_code character varying,
    category character varying DEFAULT 'uncategorized'::character varying NOT NULL,
    created_at timestamp without time zone,
    hotness_score integer DEFAULT 0,
    keywords_for_search character varying,
    mod_chat_channel_id bigint,
    name character varying,
    pretty_name character varying,
    profile_image character varying,
    requires_approval boolean DEFAULT false,
    rules_html text,
    rules_markdown text,
    short_summary character varying,
    social_image character varying,
    social_preview_template character varying DEFAULT 'article'::character varying,
    submission_template text,
    supported boolean DEFAULT false,
    taggings_count integer DEFAULT 0,
    text_color_hex character varying,
    updated_at timestamp without time zone,
    wiki_body_html text,
    wiki_body_markdown text
);


ALTER TABLE public.tags OWNER TO contact_webtutsplus;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO contact_webtutsplus;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: tweets; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.tweets (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    extended_entities_serialized text DEFAULT '--- {}
'::text,
    favorite_count integer,
    full_fetched_object_serialized text DEFAULT '--- {}
'::text,
    hashtags_serialized character varying DEFAULT '--- []
'::character varying,
    in_reply_to_status_id_code character varying,
    in_reply_to_user_id_code character varying,
    in_reply_to_username character varying,
    is_quote_status boolean,
    last_fetched_at timestamp without time zone,
    media_serialized text DEFAULT '--- []
'::text,
    mentioned_usernames_serialized character varying DEFAULT '--- []
'::character varying,
    profile_image character varying,
    quoted_tweet_id_code character varying,
    retweet_count integer,
    source character varying,
    text character varying,
    tweeted_at timestamp without time zone,
    twitter_id_code character varying,
    twitter_name character varying,
    twitter_uid character varying,
    twitter_user_followers_count integer,
    twitter_user_following_count integer,
    twitter_username character varying,
    updated_at timestamp without time zone NOT NULL,
    urls_serialized text DEFAULT '--- []
'::text,
    user_id bigint,
    user_is_verified boolean
);


ALTER TABLE public.tweets OWNER TO contact_webtutsplus;

--
-- Name: tweets_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.tweets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tweets_id_seq OWNER TO contact_webtutsplus;

--
-- Name: tweets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.tweets_id_seq OWNED BY public.tweets.id;


--
-- Name: user_blocks; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.user_blocks (
    id bigint NOT NULL,
    blocked_id bigint NOT NULL,
    blocker_id bigint NOT NULL,
    config character varying DEFAULT 'default'::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_blocks OWNER TO contact_webtutsplus;

--
-- Name: user_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.user_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_blocks_id_seq OWNER TO contact_webtutsplus;

--
-- Name: user_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.user_blocks_id_seq OWNED BY public.user_blocks.id;


--
-- Name: user_subscriptions; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.user_subscriptions (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    subscriber_email character varying NOT NULL,
    subscriber_id bigint NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_subscription_sourceable_id bigint,
    user_subscription_sourceable_type character varying
);


ALTER TABLE public.user_subscriptions OWNER TO contact_webtutsplus;

--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.user_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_subscriptions_id_seq OWNER TO contact_webtutsplus;

--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.user_subscriptions_id_seq OWNED BY public.user_subscriptions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    apple_created_at timestamp without time zone,
    apple_username character varying,
    articles_count integer DEFAULT 0 NOT NULL,
    available_for character varying,
    badge_achievements_count integer DEFAULT 0 NOT NULL,
    behance_url character varying,
    bg_color_hex character varying,
    blocked_by_count bigint DEFAULT 0 NOT NULL,
    blocking_others_count bigint DEFAULT 0 NOT NULL,
    checked_code_of_conduct boolean DEFAULT false,
    checked_terms_and_conditions boolean DEFAULT false,
    comments_count integer DEFAULT 0 NOT NULL,
    config_font character varying DEFAULT 'default'::character varying,
    config_navbar character varying DEFAULT 'default'::character varying NOT NULL,
    config_theme character varying DEFAULT 'default'::character varying,
    confirmation_sent_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    credits_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    currently_hacking_on character varying,
    currently_learning character varying,
    display_announcements boolean DEFAULT true,
    display_sponsors boolean DEFAULT true,
    dribbble_url character varying,
    editor_version character varying DEFAULT 'v1'::character varying,
    education character varying,
    email character varying,
    email_badge_notifications boolean DEFAULT true,
    email_comment_notifications boolean DEFAULT true,
    email_community_mod_newsletter boolean DEFAULT false,
    email_connect_messages boolean DEFAULT true,
    email_digest_periodic boolean DEFAULT false NOT NULL,
    email_follower_notifications boolean DEFAULT true,
    email_membership_newsletter boolean DEFAULT false,
    email_mention_notifications boolean DEFAULT true,
    email_newsletter boolean DEFAULT false,
    email_public boolean DEFAULT false,
    email_tag_mod_newsletter boolean DEFAULT false,
    email_unread_notifications boolean DEFAULT true,
    employer_name character varying,
    employer_url character varying,
    employment_title character varying,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    experience_level integer,
    export_requested boolean DEFAULT false,
    exported_at timestamp without time zone,
    facebook_created_at timestamp without time zone,
    facebook_url character varying,
    facebook_username character varying,
    failed_attempts integer DEFAULT 0,
    feed_admin_publish_permission boolean DEFAULT true,
    feed_fetched_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    feed_mark_canonical boolean DEFAULT false,
    feed_referential_link boolean DEFAULT true NOT NULL,
    feed_url character varying,
    following_orgs_count integer DEFAULT 0 NOT NULL,
    following_tags_count integer DEFAULT 0 NOT NULL,
    following_users_count integer DEFAULT 0 NOT NULL,
    github_created_at timestamp without time zone,
    github_repos_updated_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    github_username character varying,
    gitlab_url character varying,
    inbox_guidelines character varying,
    inbox_type character varying DEFAULT 'private'::character varying,
    instagram_url character varying,
    invitation_accepted_at timestamp without time zone,
    invitation_created_at timestamp without time zone,
    invitation_limit integer,
    invitation_sent_at timestamp without time zone,
    invitation_token character varying,
    invitations_count integer DEFAULT 0,
    invited_by_id bigint,
    invited_by_type character varying,
    language_settings jsonb DEFAULT '{}'::jsonb NOT NULL,
    last_article_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    last_comment_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    last_followed_at timestamp without time zone,
    last_moderation_notification timestamp without time zone DEFAULT '2017-01-01 00:00:00'::timestamp without time zone,
    last_notification_activity timestamp without time zone,
    last_onboarding_page character varying,
    last_reacted_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    last_sign_in_ip inet,
    latest_article_updated_at timestamp without time zone,
    linkedin_url character varying,
    location character varying,
    locked_at timestamp without time zone,
    mastodon_url character varying,
    medium_url character varying,
    mobile_comment_notifications boolean DEFAULT true,
    mod_roundrobin_notifications boolean DEFAULT true,
    monthly_dues integer DEFAULT 0,
    mostly_work_with character varying,
    name character varying,
    old_old_username character varying,
    old_username character varying,
    onboarding_package_requested boolean DEFAULT false,
    organization_info_updated_at timestamp without time zone,
    payment_pointer character varying,
    permit_adjacent_sponsors boolean DEFAULT true,
    profile_image character varying,
    profile_updated_at timestamp without time zone DEFAULT '2017-01-01 05:00:00'::timestamp without time zone,
    rating_votes_count integer DEFAULT 0 NOT NULL,
    reaction_notifications boolean DEFAULT true,
    reactions_count integer DEFAULT 0 NOT NULL,
    registered boolean DEFAULT true,
    registered_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    remember_token character varying,
    reputation_modifier double precision DEFAULT 1.0,
    reset_password_sent_at timestamp without time zone,
    reset_password_token character varying,
    saw_onboarding boolean DEFAULT true,
    score integer DEFAULT 0,
    secret character varying,
    sign_in_count integer DEFAULT 0 NOT NULL,
    signup_cta_variant character varying,
    spent_credits_count integer DEFAULT 0 NOT NULL,
    stackoverflow_url character varying,
    stripe_id_code character varying,
    subscribed_to_user_subscriptions_count integer DEFAULT 0 NOT NULL,
    summary text,
    text_color_hex character varying,
    twitch_url character varying,
    twitter_created_at timestamp without time zone,
    twitter_followers_count integer,
    twitter_following_count integer,
    twitter_username character varying,
    unconfirmed_email character varying,
    unlock_token character varying,
    unspent_credits_count integer DEFAULT 0 NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    username character varying,
    website_url character varying,
    welcome_notifications boolean DEFAULT true NOT NULL,
    workshop_expiration timestamp without time zone,
    youtube_url character varying
);


ALTER TABLE public.users OWNER TO contact_webtutsplus;

--
-- Name: users_gdpr_delete_requests; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.users_gdpr_delete_requests (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    email character varying NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer NOT NULL,
    username character varying
);


ALTER TABLE public.users_gdpr_delete_requests OWNER TO contact_webtutsplus;

--
-- Name: users_gdpr_delete_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.users_gdpr_delete_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_gdpr_delete_requests_id_seq OWNER TO contact_webtutsplus;

--
-- Name: users_gdpr_delete_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.users_gdpr_delete_requests_id_seq OWNED BY public.users_gdpr_delete_requests.id;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO contact_webtutsplus;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_roles; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.users_roles (
    role_id bigint,
    user_id bigint
);


ALTER TABLE public.users_roles OWNER TO contact_webtutsplus;

--
-- Name: webhook_endpoints; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.webhook_endpoints (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    events character varying[] NOT NULL,
    oauth_application_id bigint,
    source character varying,
    target_url character varying NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.webhook_endpoints OWNER TO contact_webtutsplus;

--
-- Name: webhook_endpoints_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.webhook_endpoints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.webhook_endpoints_id_seq OWNER TO contact_webtutsplus;

--
-- Name: webhook_endpoints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.webhook_endpoints_id_seq OWNED BY public.webhook_endpoints.id;


--
-- Name: welcome_notifications; Type: TABLE; Schema: public; Owner: contact_webtutsplus
--

CREATE TABLE public.welcome_notifications (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.welcome_notifications OWNER TO contact_webtutsplus;

--
-- Name: welcome_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: contact_webtutsplus
--

CREATE SEQUENCE public.welcome_notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.welcome_notifications_id_seq OWNER TO contact_webtutsplus;

--
-- Name: welcome_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: contact_webtutsplus
--

ALTER SEQUENCE public.welcome_notifications_id_seq OWNED BY public.welcome_notifications.id;


--
-- Name: ahoy_events id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_events ALTER COLUMN id SET DEFAULT nextval('public.ahoy_events_id_seq'::regclass);


--
-- Name: ahoy_messages id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_messages ALTER COLUMN id SET DEFAULT nextval('public.ahoy_messages_id_seq'::regclass);


--
-- Name: ahoy_visits id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_visits ALTER COLUMN id SET DEFAULT nextval('public.ahoy_visits_id_seq'::regclass);


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: api_secrets id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.api_secrets ALTER COLUMN id SET DEFAULT nextval('public.api_secrets_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: audit_logs id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.audit_logs ALTER COLUMN id SET DEFAULT nextval('public.audit_logs_id_seq'::regclass);


--
-- Name: badge_achievements id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badge_achievements ALTER COLUMN id SET DEFAULT nextval('public.badge_achievements_id_seq'::regclass);


--
-- Name: badges id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badges ALTER COLUMN id SET DEFAULT nextval('public.badges_id_seq'::regclass);


--
-- Name: banished_users id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.banished_users ALTER COLUMN id SET DEFAULT nextval('public.banished_users_id_seq'::regclass);


--
-- Name: blazer_audits id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_audits ALTER COLUMN id SET DEFAULT nextval('public.blazer_audits_id_seq'::regclass);


--
-- Name: blazer_checks id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_checks ALTER COLUMN id SET DEFAULT nextval('public.blazer_checks_id_seq'::regclass);


--
-- Name: blazer_dashboard_queries id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_dashboard_queries ALTER COLUMN id SET DEFAULT nextval('public.blazer_dashboard_queries_id_seq'::regclass);


--
-- Name: blazer_dashboards id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_dashboards ALTER COLUMN id SET DEFAULT nextval('public.blazer_dashboards_id_seq'::regclass);


--
-- Name: blazer_queries id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_queries ALTER COLUMN id SET DEFAULT nextval('public.blazer_queries_id_seq'::regclass);


--
-- Name: broadcasts id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.broadcasts ALTER COLUMN id SET DEFAULT nextval('public.broadcasts_id_seq'::regclass);


--
-- Name: buffer_updates id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates ALTER COLUMN id SET DEFAULT nextval('public.buffer_updates_id_seq'::regclass);


--
-- Name: chat_channel_memberships id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channel_memberships ALTER COLUMN id SET DEFAULT nextval('public.chat_channel_memberships_id_seq'::regclass);


--
-- Name: chat_channels id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channels ALTER COLUMN id SET DEFAULT nextval('public.chat_channels_id_seq'::regclass);


--
-- Name: classified_listing_categories id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listing_categories ALTER COLUMN id SET DEFAULT nextval('public.classified_listing_categories_id_seq'::regclass);


--
-- Name: classified_listings id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listings ALTER COLUMN id SET DEFAULT nextval('public.classified_listings_id_seq'::regclass);


--
-- Name: collections id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: credits id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.credits ALTER COLUMN id SET DEFAULT nextval('public.credits_id_seq'::regclass);


--
-- Name: custom_profile_fields id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.custom_profile_fields ALTER COLUMN id SET DEFAULT nextval('public.custom_profile_fields_id_seq'::regclass);


--
-- Name: data_update_scripts id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.data_update_scripts ALTER COLUMN id SET DEFAULT nextval('public.data_update_scripts_id_seq'::regclass);


--
-- Name: display_ad_events id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ad_events ALTER COLUMN id SET DEFAULT nextval('public.display_ad_events_id_seq'::regclass);


--
-- Name: display_ads id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ads ALTER COLUMN id SET DEFAULT nextval('public.display_ads_id_seq'::regclass);


--
-- Name: email_authorizations id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.email_authorizations ALTER COLUMN id SET DEFAULT nextval('public.email_authorizations_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: feedback_messages id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.feedback_messages ALTER COLUMN id SET DEFAULT nextval('public.feedback_messages_id_seq'::regclass);


--
-- Name: field_test_events id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.field_test_events ALTER COLUMN id SET DEFAULT nextval('public.field_test_events_id_seq'::regclass);


--
-- Name: field_test_memberships id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.field_test_memberships ALTER COLUMN id SET DEFAULT nextval('public.field_test_memberships_id_seq'::regclass);


--
-- Name: flipper_features id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.flipper_features ALTER COLUMN id SET DEFAULT nextval('public.flipper_features_id_seq'::regclass);


--
-- Name: flipper_gates id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.flipper_gates ALTER COLUMN id SET DEFAULT nextval('public.flipper_gates_id_seq'::regclass);


--
-- Name: follows id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.follows ALTER COLUMN id SET DEFAULT nextval('public.follows_id_seq'::regclass);


--
-- Name: github_issues id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.github_issues ALTER COLUMN id SET DEFAULT nextval('public.github_issues_id_seq'::regclass);


--
-- Name: github_repos id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.github_repos ALTER COLUMN id SET DEFAULT nextval('public.github_repos_id_seq'::regclass);


--
-- Name: html_variant_successes id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_successes ALTER COLUMN id SET DEFAULT nextval('public.html_variant_successes_id_seq'::regclass);


--
-- Name: html_variant_trials id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_trials ALTER COLUMN id SET DEFAULT nextval('public.html_variant_trials_id_seq'::regclass);


--
-- Name: html_variants id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variants ALTER COLUMN id SET DEFAULT nextval('public.html_variants_id_seq'::regclass);


--
-- Name: identities id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.identities ALTER COLUMN id SET DEFAULT nextval('public.identities_id_seq'::regclass);


--
-- Name: mentions id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.mentions ALTER COLUMN id SET DEFAULT nextval('public.mentions_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: navigation_links id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.navigation_links ALTER COLUMN id SET DEFAULT nextval('public.navigation_links_id_seq'::regclass);


--
-- Name: notes id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notes ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);


--
-- Name: notification_subscriptions id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notification_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.notification_subscriptions_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_grants_id_seq'::regclass);


--
-- Name: oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_tokens_id_seq'::regclass);


--
-- Name: oauth_applications id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.oauth_applications_id_seq'::regclass);


--
-- Name: organization_memberships id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organization_memberships ALTER COLUMN id SET DEFAULT nextval('public.organization_memberships_id_seq'::regclass);


--
-- Name: organizations id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organizations ALTER COLUMN id SET DEFAULT nextval('public.organizations_id_seq'::regclass);


--
-- Name: page_views id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.page_views ALTER COLUMN id SET DEFAULT nextval('public.page_views_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: podcast_episode_appearances id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episode_appearances ALTER COLUMN id SET DEFAULT nextval('public.podcast_episode_appearances_id_seq'::regclass);


--
-- Name: podcast_episodes id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episodes ALTER COLUMN id SET DEFAULT nextval('public.podcast_episodes_id_seq'::regclass);


--
-- Name: podcast_ownerships id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_ownerships ALTER COLUMN id SET DEFAULT nextval('public.podcast_ownerships_id_seq'::regclass);


--
-- Name: podcasts id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcasts ALTER COLUMN id SET DEFAULT nextval('public.podcasts_id_seq'::regclass);


--
-- Name: poll_options id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_options ALTER COLUMN id SET DEFAULT nextval('public.poll_options_id_seq'::regclass);


--
-- Name: poll_skips id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_skips ALTER COLUMN id SET DEFAULT nextval('public.poll_skips_id_seq'::regclass);


--
-- Name: poll_votes id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_votes ALTER COLUMN id SET DEFAULT nextval('public.poll_votes_id_seq'::regclass);


--
-- Name: polls id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.polls ALTER COLUMN id SET DEFAULT nextval('public.polls_id_seq'::regclass);


--
-- Name: profile_field_groups id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_field_groups ALTER COLUMN id SET DEFAULT nextval('public.profile_field_groups_id_seq'::regclass);


--
-- Name: profile_fields id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_fields ALTER COLUMN id SET DEFAULT nextval('public.profile_fields_id_seq'::regclass);


--
-- Name: profile_pins id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_pins ALTER COLUMN id SET DEFAULT nextval('public.profile_pins_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: rating_votes id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.rating_votes ALTER COLUMN id SET DEFAULT nextval('public.rating_votes_id_seq'::regclass);


--
-- Name: reactions id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.reactions ALTER COLUMN id SET DEFAULT nextval('public.reactions_id_seq'::regclass);


--
-- Name: response_templates id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.response_templates ALTER COLUMN id SET DEFAULT nextval('public.response_templates_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: site_configs id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.site_configs ALTER COLUMN id SET DEFAULT nextval('public.site_configs_id_seq'::regclass);


--
-- Name: sponsorships id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.sponsorships ALTER COLUMN id SET DEFAULT nextval('public.sponsorships_id_seq'::regclass);


--
-- Name: tag_adjustments id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tag_adjustments ALTER COLUMN id SET DEFAULT nextval('public.tag_adjustments_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: tweets id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tweets ALTER COLUMN id SET DEFAULT nextval('public.tweets_id_seq'::regclass);


--
-- Name: user_blocks id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_blocks ALTER COLUMN id SET DEFAULT nextval('public.user_blocks_id_seq'::regclass);


--
-- Name: user_subscriptions id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.user_subscriptions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_gdpr_delete_requests id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users_gdpr_delete_requests ALTER COLUMN id SET DEFAULT nextval('public.users_gdpr_delete_requests_id_seq'::regclass);


--
-- Name: webhook_endpoints id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.webhook_endpoints ALTER COLUMN id SET DEFAULT nextval('public.webhook_endpoints_id_seq'::regclass);


--
-- Name: welcome_notifications id; Type: DEFAULT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.welcome_notifications ALTER COLUMN id SET DEFAULT nextval('public.welcome_notifications_id_seq'::regclass);


--
-- Data for Name: ahoy_events; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.ahoy_events (id, name, properties, "time", user_id, visit_id) FROM stdin;
\.


--
-- Data for Name: ahoy_messages; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.ahoy_messages (id, clicked_at, content, feedback_message_id, mailer, opened_at, sent_at, subject, "to", token, user_id, user_type, utm_campaign, utm_content, utm_medium, utm_source, utm_term) FROM stdin;
\.


--
-- Data for Name: ahoy_visits; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.ahoy_visits (id, started_at, user_id, visit_token, visitor_token) FROM stdin;
\.


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.announcements (id, banner_style, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: api_secrets; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.api_secrets (id, created_at, description, secret, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-02-10 13:38:38.033195	2021-02-10 13:38:38.033195
schema_sha1	78b3a16cb9a4aea822e8c7c8c5f44707ee5e6c9d	2021-02-10 13:38:38.051988	2021-02-10 13:38:38.051988
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.articles (id, any_comments_hidden, approved, archived, body_html, body_markdown, boost_states, cached_organization, cached_tag_list, cached_user, cached_user_name, cached_user_username, canonical_url, co_author_ids, collection_id, comment_score, comment_template, comments_count, created_at, crossposted_at, description, edited_at, email_digest_eligible, experience_level_rating, experience_level_rating_distribution, facebook_last_buffered, featured, featured_number, feed_source_url, hotness_score, language, last_buffered, last_comment_at, last_experience_level_rating_at, main_image, main_image_background_hex_color, nth_published_by_author, organic_page_views_count, organic_page_views_past_month_count, organic_page_views_past_week_count, organization_id, originally_published_at, page_views_count, password, path, positive_reactions_count, previous_positive_reactions_count, previous_public_reactions_count, processed_html, public_reactions_count, published, published_at, published_from_feed, rating_votes_count, reactions_count, reading_time, receive_notifications, score, search_optimized_description_replacement, search_optimized_title_preamble, show_comments, slug, social_image, spaminess_rating, title, updated_at, user_id, user_subscriptions_count, video, video_closed_caption_track_url, video_code, video_duration_in_seconds, video_source_url, video_state, video_thumbnail_url) FROM stdin;
28	f	f	f	\N	In this article, I will explain how I made my own online compiler using open source code.\n\n![AltText](/i/3bsp0ei6hnk43xbghda4.jpeg)\n\nHere I will make one editor that supports 3 languages; C++, Java, and Python.\n\nAdding more languages is also very simple.\n![Alt Text](https://dev-to-uploads.s3.amazonaws.com/i/2wn5mi0kqkoferwr331j.png)\n\n## Overview\n\nBuilding an online code editor and compiler can seem too complicated, but we can break it down into two pieces.\n\n1. API running on the backend server, which will take a piece of code and language as input and output the answer after running the code on the server\n2. Frontend code editor, we can choose the language and edit and modify the code here. Then we make a post request to the backend API and show output on the website\n\n## Tutorials in this Series\n\n1. Deploy our Online Code Executor in Google Cloud\n2. Understanding the API of Judge0\n3. Creating an online code editor front-end (this tutorial)\n\n## Demo\n\nThis is the webpage we are going to build.\n\n[you can find the live demo here](http://167.99.37.15:8007/)\n{% youtube x5YD1yOC8_c %}\n<figcaption>Online code editor demo</figcaption>\n\n## FrontEnd\n\nOur frontend is pretty simple. We have one drop-down menu where we can select the language and depend upon the language we will get our respective code editors. Our main code lies in the home-page.html and the code-editor resides in the texteditor.js.\n\nHere we have made one onClickListener for dropdown menu items. So when one item is clicked, the corresponding listener gets triggered and we can call our desired editors. All the languages have different id associated with it . The list can be found using this.\n\nThe home-page looks like this.\n![Alt Text](https://dev-to-uploads.s3.amazonaws.com/i/mnmiliyblac9fmyuhlio.png)\nThe home-page html code is given below.\n\n{% gist https://gist.github.com/sksaikia/a9389a44448e6223d2f23a880e1cf7f5.js %}\n\nHere we call the codeEditor function of the javascript file , we pass the respective id associated with the language.\n\nWe add the style from assets/css/style.css .\n{% gist https://gist.github.com/sksaikia/053afd3008060e174260471f63240eed.js %}\nAlso we need to link the javascript file so that the code can be executed. We get the lang_id from the html and do the network call accordingly. **For java code is 62, cpp 53 and python 70.** This is passed in `language_id` . We also set default values to the editor depending on the `lang_id.`\n\n{% gist https://gist.github.com/sksaikia/27c3660c369e075b90d94bf018fe2f1d.js %}\nOn execution of code it should show like this.\n![Alt Text](https://dev-to-uploads.s3.amazonaws.com/i/z85vtayh3i2nz3yopl55.png)\n\nThe entire code can be found in the following repository.\n{% github webtutsplus/code-editor %}\n\n\n	{"boosted_additional_tags": "", "boosted_dev_digest_email": false, "boosted_additional_articles": false}	\N	code, javascript	--- !ruby/struct:Articles::CachedEntity\nname: nilmadhab mondal\nusername: nilmadhab\nslug: nilmadhab\nprofile_image_90: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\nprofile_image_url: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\n	nilmadhab mondal	nilmadhab	\N	{}	\N	0	\N	0	2021-02-15 14:21:39.159967	\N	In this article, I will explain how I made my own online compiler using open source code.    Here I w...	2021-02-16 08:02:54.868266	t	5	5	\N	f	1613398899	\N	353524	en	\N	2021-02-15 14:21:39.148003	\N	\N	#dddddd	2	0	0	0	\N	\N	13	5f6aa8a97ce00004aad833f8c01855713ad0350aca9658faa46797f37c47055c70250d88fdb3dc3de37c9828dc183de53eeacdfb8b9dc69c3b17f576	/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al	0	0	0	<p>In this article, I will explain how I made my own online compiler using open source code.</p>\n\n<p><a href="/i/3bsp0ei6hnk43xbghda4.jpeg" class="article-body-image-wrapper"><img src="/i/3bsp0ei6hnk43xbghda4.jpeg" alt="AltText" loading="lazy"></a></p>\n\n<p>Here I will make one editor that supports 3 languages; C++, Java, and Python.</p>\n\n<p>Adding more languages is also very simple.<br>\n<a href="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--yS8OfSsI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/2wn5mi0kqkoferwr331j.png" class="article-body-image-wrapper"><img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--yS8OfSsI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/2wn5mi0kqkoferwr331j.png" alt="Alt Text" loading="lazy"></a></p>\n<h2>\n  <a name="overview" href="#overview" class="anchor">\n  </a>\n  Overview\n</h2>\n\n<p>Building an online code editor and compiler can seem too complicated, but we can break it down into two pieces.</p>\n\n<ol>\n<li>API running on the backend server, which will take a piece of code and language as input and output the answer after running the code on the server</li>\n<li>Frontend code editor, we can choose the language and edit and modify the code here. Then we make a post request to the backend API and show output on the website</li>\n</ol>\n<h2>\n  <a name="tutorials-in-this-series" href="#tutorials-in-this-series" class="anchor">\n  </a>\n  Tutorials in this Series\n</h2>\n\n<ol>\n<li>Deploy our Online Code Executor in Google Cloud</li>\n<li>Understanding the API of Judge0</li>\n<li>Creating an online code editor front-end (this tutorial)</li>\n</ol>\n<h2>\n  <a name="demo" href="#demo" class="anchor">\n  </a>\n  Demo\n</h2>\n\n<p>This is the webpage we are going to build.</p>\n\n<figure><p><a href="http://167.99.37.15:8007/">you can find the live demo here</a><br>\n<iframe width="710" height="399" src="https://www.youtube.com/embed/x5YD1yOC8_c" allowfullscreen loading="lazy">\n</iframe>\n</p>\n<figcaption>Online code editor demo</figcaption></figure>\n\n\n\n<h2>\n  <a name="frontend" href="#frontend" class="anchor">\n  </a>\n  FrontEnd\n</h2>\n\n<p>Our frontend is pretty simple. We have one drop-down menu where we can select the language and depend upon the language we will get our respective code editors. Our main code lies in the home-page.html and the code-editor resides in the texteditor.js.</p>\n\n<p>Here we have made one onClickListener for dropdown menu items. So when one item is clicked, the corresponding listener gets triggered and we can call our desired editors. All the languages have different id associated with it . The list can be found using this.</p>\n\n<p>The home-page looks like this.<br>\n<a href="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--bTfajllj--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/mnmiliyblac9fmyuhlio.png" class="article-body-image-wrapper"><img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--bTfajllj--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/mnmiliyblac9fmyuhlio.png" alt="Alt Text" loading="lazy"></a><br>\nThe home-page html code is given below.</p>\n\n\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/a9389a44448e6223d2f23a880e1cf7f5.js"></script>\n</div>\n\n\n<p>Here we call the codeEditor function of the javascript file , we pass the respective id associated with the language.</p>\n\n<p>We add the style from assets/css/style.css .<br>\n</p>\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/053afd3008060e174260471f63240eed.js"></script>\n</div>\n<br>\nAlso we need to link the javascript file so that the code can be executed. We get the lang_id from the html and do the network call accordingly. <strong>For java code is 62, cpp 53 and python 70.</strong> This is passed in <code>language_id</code> . We also set default values to the editor depending on the <code>lang_id.</code>\n\n\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/27c3660c369e075b90d94bf018fe2f1d.js"></script>\n</div>\n<br>\nOn execution of code it should show like this.<br>\n<img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--_PwlgLJw--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/z85vtayh3i2nz3yopl55.png" alt="Alt Text" loading="lazy">\n\n<p>The entire code can be found in the following repository.<br>\n</p>\n<div class="ltag-github-readme-tag">\n  <div class="readme-overview">\n    <h2>\n      <img src="/assets/github-logo.svg" alt="GitHub logo" loading="lazy">\n      <a href="https://github.com/webtutsplus">\n        webtutsplus\n      </a> / <a style="font-weight: 600;" href="https://github.com/webtutsplus/code-editor">\n        code-editor\n      </a>\n    </h2>\n    <h3>\n      \n    </h3>\n  </div>\n  <div class="ltag-github-body">\n    \n<div id="readme" class="md" data-path="README.md"><article class="markdown-body entry-content container-lg" itemprop="text"><h1>\nAce (Ajax.org Cloud9 Editor)</h1>\n<p><a href="https://cdnjs.com/libraries/ace" rel="nofollow"><img src="https://camo.githubusercontent.com/3b1da3daa130048440d93a52c04de765426eb1bc6ea37a1cd4a4acbe7a39ff40/68747470733a2f2f696d672e736869656c64732e696f2f63646e6a732f762f6163652e737667" alt="CDNJS" data-canonical-src="https://img.shields.io/cdnjs/v/ace.svg" style="max-width:100%;"></a>\n<a href="https://www.npmjs.com/package/ace-builds" rel="nofollow"><img src="https://camo.githubusercontent.com/1ce47a5a35b3a5673bd9638a14eeb96c72c1c4cd6a6c8e1f78b5f4ceac6d56b3/68747470733a2f2f696d672e736869656c64732e696f2f6e706d2f762f6163652d6275696c64732e737667" alt="npm" data-canonical-src="https://img.shields.io/npm/v/ace-builds.svg" style="max-width:100%;"></a></p>\n<p>Ace is a code editor written in JavaScript.</p>\n<p>This repository has only generated files.\nIf you want to work on ace please go to <a href="https://github.com/ajaxorg/ace">https://github.com/ajaxorg/ace</a> instead.</p>\n<p>here you can find pre-built files for convenience of embedding.\nit contains 4 versions</p>\n<ul>\n<li>\n<a href="https://github.com/ajaxorg/ace-builds/tree/master/src">src</a>              concatenated but not minified</li>\n<li>\n<a href="https://github.com/ajaxorg/ace-builds/tree/master/src-min">src-min</a>      concatenated and minified with uglify.js</li>\n<li>\n<a href="https://github.com/ajaxorg/ace-builds/tree/master/src-noconflict">src-noconflict</a>      uses ace.require instead of require</li>\n<li>\n<a href="https://github.com/ajaxorg/ace-builds/tree/master/src-min-noconflict">src-min-noconflict</a>      concatenated, minified with uglify.js, and uses ace.require instead of require</li>\n</ul>\n<p>For a simple way of embedding ace into webpage see <a href="https://github.com/ajaxorg/ace-builds/blob/master/editor.html">editor.html</a> or list of other <a href="https://github.com/ajaxorg/ace-builds/tree/master/demo">simple examples</a>\nTo see ace in action go to <a href="http://ajaxorg.github.com/ace-builds/kitchen-sink.html">kitchen-sink-demo</a>, <a href="http://ajaxorg.github.com/ace-builds/demo/scrollable-page.html">scrollable-page-demo</a> or <a href="http://ajaxorg.github.com/ace-builds/editor.html">minimal demo</a>,</p>\n</article></div>\n\n\n\n</div>\n<br>\n  <div class="gh-btn-container"><a class="gh-btn" href="https://github.com/webtutsplus/code-editor">View on GitHub</a></div>\n<br>\n</div>\n<br>\n\n\n	0	t	2021-02-15 14:21:39.148003	f	0	0	2	t	0	\N	\N	t	let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al	\N	25	Let’s Develop An Online Code Editor/Compiler Like HackerRank	2021-02-16 08:02:55.531979	1	0	\N	\N	\N	0	\N	\N	\N
29	f	f	f	\N	In this series, I am going to solve Leetcode medium problems live with my friends, which you can see on our youtube channel, Today we will do Problem Leetcode: 1047. **Remove All Adjacent Duplicates In String.**\n\nA little bit about me, I have offers from **Uber India** and **Amazon India** in the past, and I am currently working for **Booking.com** in Amsterdam.\n\n## Motivation to learn algorithms\n\n{% medium https://medium.com/leetcode-simplified/solve-leetcode-problems-and-get-offers-from-your-dream-companies-2786415be0b7 %}\n\n## Problem Statement\n\nGiven a string `S` of lowercase letters, a duplicate removal consists of choosing two adjacent and equal letters and removing them.\n\nWe repeatedly make duplicate removals on S until we no longer can.\n\nReturn the final string after all such duplicate removals have been made. It is guaranteed the answer is unique.\n\n**Example 1:**\n\n`Input: "abbaca"\nOutput: "ca"\nExplanation: \nFor example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".`\n\n**Note:**\n\n1. `<= S.length <= 20000`\n2. `S` consists only of English lowercase letters.\n\n## Solution\n\nThis problem can be solved using a [stack](https://www.java67.com/2013/08/ata-structures-in-java-programming-array-linked-list-map-set-stack-queue.html). We can put all the characters one by one into the stack. While we put one element into the stack, we check the top of the stack, if it is equal to our current character(i.e. 2 adjacent characters are the same), we pop that element and also don’t put our current character into the stack. In that way, we can neglect all the adjacent characters.\n\nAt last, we have to [reverse the string](https://www.java67.com/2016/06/how-to-reverse-string-in-place-in-java.html) because when popping characters from the stack, it is returned in a reverse manner.\n\nThe java and python code are given below.\n{% gist https://gist.github.com/sksaikia/c0f2a019c8fed8445e776a5d6fbbad62.js %}\n\n{% gist https://gist.github.com/sksaikia/bdf91a8657fe9184fa9975add69c5615.js %}\n\nIf n is the length of the string then\n\nTime Complexity: O(n), for traversing the string\n\nSpace Complexity: O(n), for storing characters into the stack\n\nThe code for this problem can be found in the following repository.\n\n{% github webtutsplus/LeetCode %}\n\nSimilar Problems :\n\n* Leetcode 1209. **Remove All Adjacent Duplicates In String**\n\n**Thank You for reading and Follow this publication for more LeetCode problems!😃**\n\n## [LeetCode Simplified](https://medium.com/leetcode-simplified)\n\n**Othe Data Structure Articles you may like**\n\n{% medium https://medium.com/hackernoon/50-data-structure-and-algorithms-interview-questions-for-programmers-b4b1ac61f5b0 %}\n\n{% medium https://medium.com/hackernoon/10-data-structure-algorithms-and-programming-courses-to-crack-any-coding-interview-e1c50b30b927 %}\n\n{% medium https://medium.com/javarevisited/top-21-string-programming-interview-questions-for-beginners-and-experienced-developers-56037048de45 %}\n	{"boosted_additional_tags": "", "boosted_dev_digest_email": false, "boosted_additional_articles": false}	\N		--- !ruby/struct:Articles::CachedEntity\nname: nilmadhab mondal\nusername: nilmadhab\nslug: nilmadhab\nprofile_image_90: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\nprofile_image_url: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\n	nilmadhab mondal	nilmadhab	\N	{}	\N	0	\N	0	2021-02-15 16:09:45.963426	\N	In this series, I am going to solve Leetcode medium problems live with my friends, which you can see...	2021-02-16 07:39:37.319841	t	5	5	\N	f	1613415895	\N	353541	en	\N	2021-02-15 19:04:55.214085	\N	\N	#dddddd	3	0	0	0	\N	\N	10	05bf3708479f2d7802e4cdcc192a4d9dd966a4e03a98989f1cad6e2a284817d3d6e3d2f981ec0cb004f11d0168d836dca1e05f55acfc1307fa85be79	/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia	0	0	0	<p>In this series, I am going to solve Leetcode medium problems live with my friends, which you can see on our youtube channel, Today we will do Problem Leetcode: 1047. <strong>Remove All Adjacent Duplicates In String.</strong></p>\n\n<p>A little bit about me, I have offers from <strong>Uber India</strong> and <strong>Amazon India</strong> in the past, and I am currently working for <strong>Booking.com</strong> in Amsterdam.</p>\n\n<h2>\n  <a name="motivation-to-learn-algorithms" href="#motivation-to-learn-algorithms" class="anchor">\n  </a>\n  Motivation to learn algorithms\n</h2>\n\n\n<div class="ltag__link">\n  <a href="https://medium.com/leetcode-simplified/solve-leetcode-problems-and-get-offers-from-your-dream-companies-2786415be0b7" class="ltag__link__link">\n    <div class="ltag__link__pic">\n      <img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--tLzMBohE--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://miro.medium.com/fit/c/96/96/1%2AhNjwft_dNBxvTr6g6TOVGg.jpeg" alt="Nil Madhab" loading="lazy">\n    </div>\n  </a>\n  <a href="https://medium.com/leetcode-simplified/solve-leetcode-problems-and-get-offers-from-your-dream-companies-2786415be0b7" class="ltag__link__link">\n    <div class="ltag__link__content">\n      <h2>Solve Leetcode Problems and Get Offers From Your Dream Companies | by Nil Madhab | LeetCode Simplified | Jan, 2021 | Medium</h2>\n      <h3>Nil Madhab ・ <time datetime="2021-02-06T16:44:52.884Z">Feb 6, 2021</time> ・ 3 min read\n      <div class="ltag__link__servicename">\n        <img src="/assets/medium_icon.svg" alt="Medium Logo" aria-label="Medium Logo" loading="lazy">\n        Medium\n      </div>\n    </h3>\n</div>\n  </a>\n</div>\n\n\n<h2>\n  <a name="problem-statement" href="#problem-statement" class="anchor">\n  </a>\n  Problem Statement\n</h2>\n\n<p>Given a string <code>S</code> of lowercase letters, a duplicate removal consists of choosing two adjacent and equal letters and removing them.</p>\n\n<p>We repeatedly make duplicate removals on S until we no longer can.</p>\n\n<p>Return the final string after all such duplicate removals have been made. It is guaranteed the answer is unique.</p>\n\n<p><strong>Example 1:</strong></p>\n\n<p><code>Input: "abbaca"<br>\nOutput: "ca"<br>\nExplanation: <br>\nFor example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".</code></p>\n\n<p><strong>Note:</strong></p>\n\n<ol>\n<li><code>&lt;= S.length &lt;= 20000</code></li>\n<li>\n<code>S</code> consists only of English lowercase letters.</li>\n</ol>\n<h2>\n  <a name="solution" href="#solution" class="anchor">\n  </a>\n  Solution\n</h2>\n\n<p>This problem can be solved using a <a href="https://www.java67.com/2013/08/ata-structures-in-java-programming-array-linked-list-map-set-stack-queue.html">stack</a>. We can put all the characters one by one into the stack. While we put one element into the stack, we check the top of the stack, if it is equal to our current character(i.e. 2 adjacent characters are the same), we pop that element and also don’t put our current character into the stack. In that way, we can neglect all the adjacent characters.</p>\n\n<p>At last, we have to <a href="https://www.java67.com/2016/06/how-to-reverse-string-in-place-in-java.html">reverse the string</a> because when popping characters from the stack, it is returned in a reverse manner.</p>\n\n<p>The java and python code are given below.<br>\n</p>\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/c0f2a019c8fed8445e776a5d6fbbad62.js"></script>\n</div>\n\n\n\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/bdf91a8657fe9184fa9975add69c5615.js"></script>\n</div>\n\n\n<p>If n is the length of the string then</p>\n\n<p>Time Complexity: O(n), for traversing the string</p>\n\n<p>Space Complexity: O(n), for storing characters into the stack</p>\n\n<p>The code for this problem can be found in the following repository.</p>\n\n\n<div class="ltag-github-readme-tag">\n  <div class="readme-overview">\n    <h2>\n      <img src="/assets/github-logo.svg" alt="GitHub logo" loading="lazy">\n      <a href="https://github.com/webtutsplus">\n        webtutsplus\n      </a> / <a style="font-weight: 600;" href="https://github.com/webtutsplus/LeetCode">\n        LeetCode\n      </a>\n    </h2>\n    <h3>\n      \n    </h3>\n  </div>\n</div>\n\n\n<p>Similar Problems :</p>\n\n<ul>\n<li>Leetcode 1209. <strong>Remove All Adjacent Duplicates In String</strong>\n</li>\n</ul>\n\n<p><strong>Thank You for reading and Follow this publication for more LeetCode problems!😃</strong></p>\n\n<h2>\n  <a name="leetcode-simplified" href="#leetcode-simplified" class="anchor">\n  </a>\n  <a href="https://medium.com/leetcode-simplified">LeetCode Simplified</a>\n</h2>\n\n<p><strong>Othe Data Structure Articles you may like</strong></p>\n\n\n<div class="ltag__link">\n  <a href="https://medium.com/hackernoon/50-data-structure-and-algorithms-interview-questions-for-programmers-b4b1ac61f5b0" class="ltag__link__link">\n    <div class="ltag__link__pic">\n      <img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--qkjHfzsS--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://miro.medium.com/fit/c/96/96/0%2Au9Ha3uTCjEmW_3gn.gif" alt="javinpaul" loading="lazy">\n    </div>\n  </a>\n  <a href="https://medium.com/hackernoon/50-data-structure-and-algorithms-interview-questions-for-programmers-b4b1ac61f5b0" class="ltag__link__link">\n    <div class="ltag__link__content">\n      <h2>50+ Data Structure and Algorithms Interview Questions for Programmers | by javinpaul | HackerNoon.com | Medium</h2>\n      <h3>javinpaul ・ <time datetime="2020-09-23T06:54:28.848Z">Sep 23, 2020</time> ・ 12 min read\n      <div class="ltag__link__servicename">\n        <img src="/assets/medium_icon.svg" alt="Medium Logo" aria-label="Medium Logo" loading="lazy">\n        Medium\n      </div>\n    </h3>\n</div>\n  </a>\n</div>\n\n\n\n<div class="ltag__link">\n  <a href="https://medium.com/hackernoon/10-data-structure-algorithms-and-programming-courses-to-crack-any-coding-interview-e1c50b30b927" class="ltag__link__link">\n    <div class="ltag__link__pic">\n      <img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--qkjHfzsS--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://miro.medium.com/fit/c/96/96/0%2Au9Ha3uTCjEmW_3gn.gif" alt="javinpaul" loading="lazy">\n    </div>\n  </a>\n  <a href="https://medium.com/hackernoon/10-data-structure-algorithms-and-programming-courses-to-crack-any-coding-interview-e1c50b30b927" class="ltag__link__link">\n    <div class="ltag__link__content">\n      <h2>10 Data Structure, Algorithms, and Programming Courses to Crack Any Coding Interview | by javinpaul | HackerNoon.com | Medium</h2>\n      <h3>javinpaul ・ <time datetime="2020-09-23T06:55:01.868Z">Sep 23, 2020</time> ・ 15 min read\n      <div class="ltag__link__servicename">\n        <img src="/assets/medium_icon.svg" alt="Medium Logo" aria-label="Medium Logo" loading="lazy">\n        Medium\n      </div>\n    </h3>\n</div>\n  </a>\n</div>\n\n\n\n<div class="ltag__link">\n  <a href="https://medium.com/javarevisited/top-21-string-programming-interview-questions-for-beginners-and-experienced-developers-56037048de45" class="ltag__link__link">\n    <div class="ltag__link__pic">\n      <img src="https://res.cloudinary.com/dgjb1x9mh/image/fetch/s--qkjHfzsS--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://miro.medium.com/fit/c/96/96/0%2Au9Ha3uTCjEmW_3gn.gif" alt="javinpaul" loading="lazy">\n    </div>\n  </a>\n  <a href="https://medium.com/javarevisited/top-21-string-programming-interview-questions-for-beginners-and-experienced-developers-56037048de45" class="ltag__link__link">\n    <div class="ltag__link__content">\n      <h2>Top 21 String Programming Interview Questions for Beginners and Experienced Developers | by javinpaul | Javarevisited | Medium</h2>\n      <h3>javinpaul ・ <time datetime="2020-02-16T04:51:23.658Z">Feb 16, 2020</time> ・ 7 min read\n      <div class="ltag__link__servicename">\n        <img src="/assets/medium_icon.svg" alt="Medium Logo" aria-label="Medium Logo" loading="lazy">\n        Medium\n      </div>\n    </h3>\n</div>\n  </a>\n</div>\n\n\n	0	t	2021-02-15 19:04:55.214085	f	0	0	2	t	0	\N	\N	t	leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia	\N	25	Leetcode 1047 — Remove All Adjacent Duplicates In String [Solution]	2021-02-16 07:39:41.716888	1	0	\N	\N	\N	0	\N	\N	\N
30	f	f	f	\N	In this series, I am going to solve Leetcode medium problems live with my friend, which you can see on our youtube channel, Today we will do Problem 695. **Max Area of Island.**\n\n![Alt Text](/i/13pue2jkeoecc50bymdk.png)\n\nA little bit about me, I have offers from **Uber India** and **Amazon India** in the past, and I am currently working for **Booking.com** in Amsterdam.\n\n## Motivation to Learn Algorithms\n{% gist https://gist.github.com/sksaikia/b3e44a32bab220f3773ca25ba9b9adf2.js %}\n\nI have worked in India as a software developer for 4 years. I started learning algorithms and data structure from my 3rd year in college as I was from an Electronics background. Here is my salary progression over the years, (all in INR, Lakh per year)\n\n2016: placement in **Flipkart** from college, IIT KGP(18 lakh base + 2 lakh bonus = **20** lakh). But the offer was delayed by 6 months, as Flipkart was going through some trouble, so I joined Samsung.\n\n2016: **Samsung Noida**(off campus ) (14 lakh base + 5 lakh joining bonus = **19** lakh). They pay to IITians 19 lakh but other colleges 9-14 lakh for the same work, which is bogus.\n\n2017: **Oyorooms** (**17** lakh fixed, no bonus, no stocks). I took a pay cut as I was not learning anything in Samsung, so joined Oyo.\n\n2019: **Sharechat** (26 lakh fixed + 2.6lakh bonus + stock options) I joined Sharechat in Bangalore, as SDE1\n\n2020: Offer from Amazon ( 26.5 lakh base + 18.5 lakh joining bonus= **43 lakh**) in SDE2 role. They offer stocks but it is vested only 5 percent in the first year, so I ignored it.\n\nOffer from **Uber** (33 lakh base + 15 lakh stock options per year (96000 USD over 4 years)+ 5 lakh joining bonus = **55** lakh per year) in SDE2 role. **I think that is the top salary, you can get 3.5–4 years experience in India, but I might be wrong.**\nA lot of startups and established companies in India pay over 35 lakh per year for the top talent in programming, for just over 4 years of experience, like Dunzo, Dream11, Rubric, etc, check\n[Compensation](https://leetcode.com/discuss/compensation)\nI rejected both offers and ended up joining **Booking.com** as I wanted to explore Europe. I can’t disclose my current salary.\n\nI got so many offers because I practiced a lot of data structure and algorithms. I solved over 410 questions in Leetcode.\n[Nil Madhab-Leetcode Profile](https://leetcode.com/nilmadhab/)\nLet's first talk about the Max Area of Island problem (LC 695).\n\n## Problem Statement\n\nGiven a non-empty 2D array `grid` of 0's and 1's, an **island** is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.\n\nFind the maximum area of an island in the given 2D array. (If there is no island, the maximum area is 0.)\n\n**Example 1:**\n\n`[[0,0,1,0,0,0,0,1,0,0,0,0,0],\n [0,0,0,0,0,0,0,1,1,1,0,0,0],\n [0,1,1,0,1,0,0,0,0,0,0,0,0],\n [0,1,0,0,1,1,0,0,1,0,1,0,0],\n [0,1,0,0,1,1,0,0,1,1,1,0,0],\n [0,0,0,0,0,0,0,0,0,0,1,0,0],\n [0,0,0,0,0,0,0,1,1,1,0,0,0],\n [0,0,0,0,0,0,0,1,1,0,0,0,0]]`\n\nGiven the above grid, return `6`. Note the answer is not 11, because the island must be connected 4-directionally.\n\n**Example 2:**\n\n`[[0,0,0,0,0,0,0,0]]`\n\nGiven the above grid, return `0`.\n\nNote: The length of each dimension in the given `grid` does not exceed 50.\n## Youtube Discussion\n\n{% youtube iO9Y8zDqwaQ %}\n\n## Solution\n\nFor solving this problem, we have to visualize the 2D matrix as a Graph. We can apply `DFS` or ``BFS with this problem. In this tutorial, we are going to use the BFS algorithm.\n\nBreadth-first search is a graph traversal algorithm that starts traversing the graph from the root node and explores all the neighboring nodes. Then, it selects the nearest node and explores all the unexplored nodes. The algorithm follows the same process for each of the nearest nodes until it finds the goal. [(Source)](https://www.javatpoint.com/breadth-first-search-algorithm)\n\nThe lands should be connected vertically and horizontally. (not diagonally) which reduces possible paths for us to 4; UP(0,1) , DOWN (0,-1), LEFT(1,0),RIGHT(0,-1). So when we find a point which is a land, we will do a BFS on that point and we will accumulate the total points which are land and are connected to that particular point.\n\nWe will keep a visited matrix of size equal to the given grid so that we can keep track of all the visited points (so we are not stuck in an infinite loop).\n\nWe will keep another variable named max_area, which finds the answer. max_area is compared with the area for a possible island and hence maximum area is found.\n\nThe following is the well-documented python code for the problem.\n{% gist https://gist.github.com/sksaikia/65faf8ae06cbbf51edb543a0ee292b95.js %}\nThe Java code for this problem is given below.\n{% gist https://gist.github.com/sksaikia/38842f720b77b2dc8e30758802427fa4.js %}\nThis problem can be solved with DFS too. All the code can be found in the following GitHub repo.\n{% github webtutsplus/Leetcode %}\n**Thank You for reading and Follow this publication for more Leetcode Solutions!😃**\n\n\n	{"boosted_additional_tags": "", "boosted_dev_digest_email": false, "boosted_additional_articles": false}	\N	career, programming, algorithms, computerscience	--- !ruby/struct:Articles::CachedEntity\nname: nilmadhab mondal\nusername: nilmadhab\nslug: nilmadhab\nprofile_image_90: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\nprofile_image_url: "/uploads/user/profile_image/1/d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg"\n	nilmadhab mondal	nilmadhab	\N	{}	\N	0	\N	0	2021-02-15 19:12:23.589911	\N	In this series, I am going to solve Leetcode medium problems live with my friend, which you can see o...	2021-02-15 19:13:19.327254	t	5	5	\N	f	1613416343	\N	353931	en	\N	2021-02-15 19:12:23.564823	\N	\N	#dddddd	4	0	0	0	\N	\N	2	218af6c5107d63d2963e9e0c913269aa77d8c1715f104f38f95955f02521f73eb87c7e583cc1d496f7ebd2c91049ef80bffb167f154f690b174f7043	/nilmadhab/solve-leetcode-problems-and-get-offers-from-your-dream-companies-max-area-of-island-n80	0	0	0	<p>In this series, I am going to solve Leetcode medium problems live with my friend, which you can see on our youtube channel, Today we will do Problem 695. <strong>Max Area of Island.</strong></p>\n\n<p><a href="/i/13pue2jkeoecc50bymdk.png" class="article-body-image-wrapper"><img src="/i/13pue2jkeoecc50bymdk.png" alt="Alt Text" loading="lazy"></a></p>\n\n<p>A little bit about me, I have offers from <strong>Uber India</strong> and <strong>Amazon India</strong> in the past, and I am currently working for <strong>Booking.com</strong> in Amsterdam.</p>\n\n<h2>\n  <a name="motivation-to-learn-algorithms" href="#motivation-to-learn-algorithms" class="anchor">\n  </a>\n  Motivation to Learn Algorithms\n</h2>\n\n\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/b3e44a32bab220f3773ca25ba9b9adf2.js"></script>\n</div>\n\n\n<p>I have worked in India as a software developer for 4 years. I started learning algorithms and data structure from my 3rd year in college as I was from an Electronics background. Here is my salary progression over the years, (all in INR, Lakh per year)</p>\n\n<p>2016: placement in <strong>Flipkart</strong> from college, IIT KGP(18 lakh base + 2 lakh bonus = <strong>20</strong> lakh). But the offer was delayed by 6 months, as Flipkart was going through some trouble, so I joined Samsung.</p>\n\n<p>2016: <strong>Samsung Noida</strong>(off campus ) (14 lakh base + 5 lakh joining bonus = <strong>19</strong> lakh). They pay to IITians 19 lakh but other colleges 9-14 lakh for the same work, which is bogus.</p>\n\n<p>2017: <strong>Oyorooms</strong> (<strong>17</strong> lakh fixed, no bonus, no stocks). I took a pay cut as I was not learning anything in Samsung, so joined Oyo.</p>\n\n<p>2019: <strong>Sharechat</strong> (26 lakh fixed + 2.6lakh bonus + stock options) I joined Sharechat in Bangalore, as SDE1</p>\n\n<p>2020: Offer from Amazon ( 26.5 lakh base + 18.5 lakh joining bonus= <strong>43 lakh</strong>) in SDE2 role. They offer stocks but it is vested only 5 percent in the first year, so I ignored it.</p>\n\n<p>Offer from <strong>Uber</strong> (33 lakh base + 15 lakh stock options per year (96000 USD over 4 years)+ 5 lakh joining bonus = <strong>55</strong> lakh per year) in SDE2 role. <strong>I think that is the top salary, you can get 3.5–4 years experience in India, but I might be wrong.</strong><br>\nA lot of startups and established companies in India pay over 35 lakh per year for the top talent in programming, for just over 4 years of experience, like Dunzo, Dream11, Rubric, etc, check<br>\n<a href="https://leetcode.com/discuss/compensation">Compensation</a><br>\nI rejected both offers and ended up joining <strong>Booking.com</strong> as I wanted to explore Europe. I can’t disclose my current salary.</p>\n\n<p>I got so many offers because I practiced a lot of data structure and algorithms. I solved over 410 questions in Leetcode.<br>\n<a href="https://leetcode.com/nilmadhab/">Nil Madhab-Leetcode Profile</a><br>\nLet's first talk about the Max Area of Island problem (LC 695).</p>\n<h2>\n  <a name="problem-statement" href="#problem-statement" class="anchor">\n  </a>\n  Problem Statement\n</h2>\n\n<p>Given a non-empty 2D array <code>grid</code> of 0's and 1's, an <strong>island</strong> is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.</p>\n\n<p>Find the maximum area of an island in the given 2D array. (If there is no island, the maximum area is 0.)</p>\n\n<p><strong>Example 1:</strong></p>\n\n<p><code>[[0,0,1,0,0,0,0,1,0,0,0,0,0],<br>\n [0,0,0,0,0,0,0,1,1,1,0,0,0],<br>\n [0,1,1,0,1,0,0,0,0,0,0,0,0],<br>\n [0,1,0,0,1,1,0,0,1,0,1,0,0],<br>\n [0,1,0,0,1,1,0,0,1,1,1,0,0],<br>\n [0,0,0,0,0,0,0,0,0,0,1,0,0],<br>\n [0,0,0,0,0,0,0,1,1,1,0,0,0],<br>\n [0,0,0,0,0,0,0,1,1,0,0,0,0]]</code></p>\n\n<p>Given the above grid, return <code>6</code>. Note the answer is not 11, because the island must be connected 4-directionally.</p>\n\n<p><strong>Example 2:</strong></p>\n\n<p><code>[[0,0,0,0,0,0,0,0]]</code></p>\n\n<p>Given the above grid, return <code>0</code>.</p>\n\n<p>Note: The length of each dimension in the given <code>grid</code> does not exceed 50.</p>\n<h2>\n  <a name="youtube-discussion" href="#youtube-discussion" class="anchor">\n  </a>\n  Youtube Discussion\n</h2>\n\n<p><iframe width="710" height="399" src="https://www.youtube.com/embed/iO9Y8zDqwaQ" allowfullscreen loading="lazy">\n</iframe>\n</p>\n\n<h2>\n  <a name="solution" href="#solution" class="anchor">\n  </a>\n  Solution\n</h2>\n\n<p>For solving this problem, we have to visualize the 2D matrix as a Graph. We can apply <code>DFS</code> or ``BFS with this problem. In this tutorial, we are going to use the BFS algorithm.</p>\n\n<p>Breadth-first search is a graph traversal algorithm that starts traversing the graph from the root node and explores all the neighboring nodes. Then, it selects the nearest node and explores all the unexplored nodes. The algorithm follows the same process for each of the nearest nodes until it finds the goal. <a href="https://www.javatpoint.com/breadth-first-search-algorithm">(Source)</a></p>\n\n<p>The lands should be connected vertically and horizontally. (not diagonally) which reduces possible paths for us to 4; UP(0,1) , DOWN (0,-1), LEFT(1,0),RIGHT(0,-1). So when we find a point which is a land, we will do a BFS on that point and we will accumulate the total points which are land and are connected to that particular point.</p>\n\n<p>We will keep a visited matrix of size equal to the given grid so that we can keep track of all the visited points (so we are not stuck in an infinite loop).</p>\n\n<p>We will keep another variable named max_area, which finds the answer. max_area is compared with the area for a possible island and hence maximum area is found.</p>\n\n<p>The following is the well-documented python code for the problem.<br>\n</p>\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/65faf8ae06cbbf51edb543a0ee292b95.js"></script>\n</div>\n<br>\nThe Java code for this problem is given below.<br>\n<div class="ltag_gist-liquid-tag">\n  <script id="gist-ltag" src="https://gist.github.com/sksaikia/38842f720b77b2dc8e30758802427fa4.js"></script>\n</div>\n<br>\nThis problem can be solved with DFS too. All the code can be found in the following GitHub repo.<br>\n<div class="ltag-github-readme-tag">\n  <div class="readme-overview">\n    <h2>\n      <img src="/assets/github-logo.svg" alt="GitHub logo" loading="lazy">\n      <a href="https://github.com/webtutsplus">\n        webtutsplus\n      </a> / <a style="font-weight: 600;" href="https://github.com/webtutsplus/LeetCode">\n        LeetCode\n      </a>\n    </h2>\n    <h3>\n      \n    </h3>\n  </div>\n</div>\n<br>\n<strong>Thank You for reading and Follow this publication for more Leetcode Solutions!😃</strong>\n\n	0	t	2021-02-15 19:12:23.564823	f	0	0	4	t	0	\N	\N	t	solve-leetcode-problems-and-get-offers-from-your-dream-companies-max-area-of-island-n80	\N	25	Solve Leetcode Problems and Get Offers From Your Dream Companies||Max Area of Island	2021-02-15 19:13:19.818377	1	0	\N	\N	\N	0	\N	\N	\N
\.


--
-- Data for Name: audit_logs; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.audit_logs (id, category, created_at, data, roles, slug, updated_at, user_id) FROM stdin;
1	internal.audit.log	2021-02-10 14:31:27.418748	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:31:27.418748	1
2	internal.audit.log	2021-02-10 14:31:27.448732	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:31:27.448732	1
3	internal.audit.log	2021-02-10 14:31:27.470504	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:31:27.470504	1
4	internal.audit.log	2021-02-10 14:31:27.496895	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:31:27.496895	1
5	internal.audit.log	2021-02-10 14:31:27.516782	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:31:27.516782	1
6	internal.audit.log	2021-02-10 14:32:01.668998	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "nilmadhab1994@gmail.com", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:32:01.668998	1
7	internal.audit.log	2021-02-10 14:32:01.685803	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "nilmadhab1994@gmail.com", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:32:01.685803	1
8	internal.audit.log	2021-02-10 14:32:01.701081	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "nilmadhab1994@gmail.com", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:32:01.701081	1
9	internal.audit.log	2021-02-10 14:32:01.71771	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "nilmadhab1994@gmail.com", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:32:01.71771	1
10	internal.audit.log	2021-02-10 14:32:01.732537	{"action": "create", "locale": null, "controller": "admin/configs", "site_config": {"community_name": "Simple Coding", "suggested_tags": "java", "suggested_users": "nilmadhab1994@gmail.com", "community_description": "For Developers"}, "confirmation": "My username is @nilmadhab and this action is 100% safe and appropriate."}	{super_admin}	create	2021-02-10 14:32:01.732537	1
\.


--
-- Data for Name: badge_achievements; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.badge_achievements (id, badge_id, created_at, rewarder_id, rewarding_context_message, rewarding_context_message_markdown, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: badges; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.badges (id, badge_image, created_at, description, slug, title, updated_at) FROM stdin;
1	39.png	2021-02-10 13:39:00.760828	Officiis ad quo accusamus.	necessitatibus-94	necessitatibus 94	2021-02-10 13:39:00.760828
2	2.png	2021-02-10 13:39:00.852455	Consequatur id aliquam occaecati.	voluptate-95	voluptate 95	2021-02-10 13:39:00.852455
3	35.png	2021-02-10 13:39:00.95	Quo eos aspernatur eveniet.	assumenda-8	assumenda 8	2021-02-10 13:39:00.95
4	22.png	2021-02-10 13:39:01.032115	Doloribus adipisci rem sed.	fugiat-35	fugiat 35	2021-02-10 13:39:01.032115
5	15.png	2021-02-10 13:39:01.101558	Sed itaque facilis nemo.	dolor-58	dolor 58	2021-02-10 13:39:01.101558
\.


--
-- Data for Name: banished_users; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.banished_users (id, banished_by_id, created_at, updated_at, username) FROM stdin;
\.


--
-- Data for Name: blazer_audits; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.blazer_audits (id, created_at, data_source, query_id, statement, user_id) FROM stdin;
\.


--
-- Data for Name: blazer_checks; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.blazer_checks (id, check_type, created_at, creator_id, emails, last_run_at, message, query_id, schedule, slack_channels, state, updated_at) FROM stdin;
\.


--
-- Data for Name: blazer_dashboard_queries; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.blazer_dashboard_queries (id, created_at, dashboard_id, "position", query_id, updated_at) FROM stdin;
\.


--
-- Data for Name: blazer_dashboards; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.blazer_dashboards (id, created_at, creator_id, name, updated_at) FROM stdin;
\.


--
-- Data for Name: blazer_queries; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.blazer_queries (id, created_at, creator_id, data_source, description, name, statement, updated_at) FROM stdin;
\.


--
-- Data for Name: broadcasts; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.broadcasts (id, active, active_status_updated_at, banner_style, body_markdown, broadcastable_id, broadcastable_type, created_at, processed_html, title, type_of, updated_at) FROM stdin;
1	t	2021-02-10 13:39:00.21632	\N	\N	\N	Welcome	2021-02-10 13:39:00.216403	Welcome to DEV! 👋 I'm Sloan, the community mascot and I'm here to help get you started. Let's begin by <a href='/settings'>setting up your profile</a>!	Welcome Notification: set_up_profile	Welcome	2021-02-10 13:39:16.915687
2	t	2021-02-10 13:39:00.233815	\N	\N	\N	Welcome	2021-02-10 13:39:00.233878	Sloan here again! 👋 DEV is a friendly community. Why not introduce yourself by leaving a comment in <a href='/welcome'>the welcome thread</a>!	Welcome Notification: welcome_thread	Welcome	2021-02-10 13:39:16.934567
3	t	2021-02-10 13:39:00.250273	\N	\N	\N	Welcome	2021-02-10 13:39:00.250376	You're on a roll! 🎉 Do you have a Twitter account? Consider <a href='/settings'>connecting it</a> so we can @mention you if we share your post via our Twitter account <a href='https://twitter.com/thePracticalDev'>@thePracticalDev</a>.	Welcome Notification: twitter_connect	Welcome	2021-02-10 13:39:16.956451
4	t	2021-02-10 13:39:00.268502	\N	\N	\N	Welcome	2021-02-10 13:39:00.26858	You're on a roll! 🎉  Do you have a Facebook account? Consider <a href='/settings'>connecting it</a>.	Welcome Notification: facebook_connect	Welcome	2021-02-10 13:39:16.973972
5	t	2021-02-10 13:39:00.284462	\N	\N	\N	Welcome	2021-02-10 13:39:00.284528	You're on a roll! 🎉  Do you have a GitHub account? Consider <a href='/settings'>connecting it</a> so you can pin any of your repos to your profile.	Welcome Notification: github_connect	Welcome	2021-02-10 13:39:16.991429
6	t	2021-02-10 13:39:00.300269	\N	\N	\N	Welcome	2021-02-10 13:39:00.300334	Hi, it's me again! 👋 Now that you're a part of the DEV community, let's focus on personalizing your content. You can start by <a href='/tags'>following some tags</a> to help customize your feed! 🎉	Welcome Notification: customize_feed	Welcome	2021-02-10 13:39:17.008711
7	t	2021-02-10 13:39:00.316474	\N	\N	\N	Welcome	2021-02-10 13:39:00.316539	Sloan here! 👋 Did you know that that you can customize your DEV experience? Try changing <a href='settings/customization'>your font and theme</a> and find the best style for you!	Welcome Notification: customize_experience	Welcome	2021-02-10 13:39:17.023623
8	t	2021-02-10 13:39:00.331266	\N	\N	\N	Welcome	2021-02-10 13:39:00.33133	Sloan here! 👋 I noticed that you haven't <a href='https://dev.to/t/discuss'>started a discussion</a> yet. Starting a discussion is easy to do; just click on 'Write a Post' in the sidebar of the tag page to get started!	Welcome Notification: start_discussion	Welcome	2021-02-10 13:39:17.039546
9	t	2021-02-10 13:39:00.349058	\N	\N	\N	Welcome	2021-02-10 13:39:00.349146	Sloan here! 👋 I noticed that you haven't <a href='https://dev.to/t/explainlikeimfive'>asked a question</a> yet. Asking a question is easy to do; just click on 'Write a Post' in the sidebar of the tag page to get started!	Welcome Notification: ask_question	Welcome	2021-02-10 13:39:17.05615
10	t	2021-02-10 13:39:00.365854	\N	\N	\N	Welcome	2021-02-10 13:39:00.365924	Sloan here! 👋 I noticed that you haven't <a href='https://dev.to/t/explainlikeimfive'>asked a question</a> or <a href='https://dev.to/t/discuss'>started a discussion</a> yet. It's easy to do both of these; just click on 'Write a Post' in the sidebar of the tag page to get started!	Welcome Notification: discuss_and_ask	Welcome	2021-02-10 13:39:17.074953
11	t	2021-02-10 13:39:00.384948	\N	\N	\N	Welcome	2021-02-10 13:39:00.385019	Sloan here, with one last tip! 👋 Have you downloaded the DEV mobile app yet? Consider <a href='https://dev.to/downloads'>downloading</a> it so you can access all of your favorite DEV content on the go!	Welcome Notification: download_app	Welcome	2021-02-10 13:39:17.091985
\.


--
-- Data for Name: buffer_updates; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.buffer_updates (id, approver_user_id, article_id, body_text, buffer_id_code, buffer_profile_id_code, buffer_response, composer_user_id, created_at, social_service_name, status, tag_id, updated_at) FROM stdin;
\.


--
-- Data for Name: chat_channel_memberships; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.chat_channel_memberships (id, chat_channel_id, created_at, has_unopened_messages, last_opened_at, role, show_global_badge_notification, status, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: chat_channels; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.chat_channels (id, channel_name, channel_type, created_at, description, discoverable, last_message_at, slug, status, updated_at) FROM stdin;
1	@org5374 private group chat	invite_only	2021-02-10 13:38:48.695641	\N	f	2021-02-03 13:38:48.673589	org5374-private-group-chat	active	2021-02-10 13:38:48.695641
2	@org8802 private group chat	invite_only	2021-02-10 13:38:48.916421	\N	f	2021-02-03 13:38:48.913843	org8802-private-group-chat	active	2021-02-10 13:38:48.916421
3	@org8336 private group chat	invite_only	2021-02-10 13:38:49.119631	\N	f	2021-02-03 13:38:49.116248	org8336-private-group-chat	active	2021-02-10 13:38:49.119631
\.


--
-- Data for Name: classified_listing_categories; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.classified_listing_categories (id, cost, created_at, name, rules, slug, social_preview_color, social_preview_description, updated_at) FROM stdin;
1	1	2021-02-10 13:39:02.532494	Conference CFP	Currently open for proposals, with link to form.	cfp	\N	\N	2021-02-10 13:39:02.532494
2	1	2021-02-10 13:39:02.551771	Education/Courses	Educational material and/or schools/bootcamps.	education	\N	\N	2021-02-10 13:39:02.551771
3	25	2021-02-10 13:39:02.571417	Job Listings	Companies offering employment right now.	jobs	\N	\N	2021-02-10 13:39:02.571417
4	1	2021-02-10 13:39:02.594754	Stuff for Sale	Personally owned physical items for sale.	forsale	\N	\N	2021-02-10 13:39:02.594754
5	1	2021-02-10 13:39:02.61786	Upcoming Events	In-person or online events with date included.	events	\N	\N	2021-02-10 13:39:02.61786
6	1	2021-02-10 13:39:02.638263	Miscellaneous	Must not fit in any other category.	misc	\N	\N	2021-02-10 13:39:02.638263
\.


--
-- Data for Name: classified_listings; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.classified_listings (id, body_markdown, bumped_at, cached_tag_list, classified_listing_category_id, contact_via_connect, created_at, expires_at, last_buffered, location, organization_id, originally_published_at, processed_html, published, slug, title, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.collections (id, created_at, description, main_image, organization_id, published, slug, social_image, title, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.comments (id, ancestry, body_html, body_markdown, commentable_id, commentable_type, created_at, deleted, edited, edited_at, hidden_by_commentable_user, id_code, markdown_character_count, positive_reactions_count, processed_html, public_reactions_count, reactions_count, receive_notifications, score, spaminess_rating, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: credits; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.credits (id, cost, created_at, organization_id, purchase_id, purchase_type, spent, spent_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: custom_profile_fields; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.custom_profile_fields (id, attribute_name, created_at, description, label, profile_id, updated_at) FROM stdin;
\.


--
-- Data for Name: data_update_scripts; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.data_update_scripts (id, created_at, error, file_name, finished_at, run_at, status, updated_at) FROM stdin;
51	2021-02-10 13:39:05.450971	\N	20200217131245_re_index_existing_articles_with_approved	2021-02-10 13:39:05.587209	2021-02-10 13:39:05.568964	2	2021-02-10 13:39:05.595008
4	2021-02-10 13:39:05.450971	\N	20200217215802_index_listings_to_elasticsearch	2021-02-10 13:39:05.620348	2021-02-10 13:39:05.605226	2	2021-02-10 13:39:05.629092
44	2021-02-10 13:39:05.450971	\N	20200305201627_index_users_to_elasticsearch	2021-02-10 13:39:15.177129	2021-02-10 13:39:15.161471	2	2021-02-10 13:39:15.184444
8	2021-02-10 13:39:05.450971	\N	20200406213152_re_index_users_to_elasticsearch	2021-02-10 13:39:16.201887	2021-02-10 13:39:16.184221	2	2021-02-10 13:39:16.210341
22	2021-02-10 13:39:05.450971	\N	20200410152018_resync_elasticsearch_documents	2021-02-10 13:39:16.51095	2021-02-10 13:39:16.219699	2	2021-02-10 13:39:16.520434
70	2021-02-10 13:39:05.450971	\N	20200415200651_index_reading_list_reactions	2021-02-10 13:39:16.553983	2021-02-10 13:39:16.532471	2	2021-02-10 13:39:16.562142
14	2021-02-10 13:39:05.450971	\N	20200519142908_re_index_feed_content_and_users_to_elasticsearch	2021-02-10 13:39:16.702511	2021-02-10 13:39:16.6545	2	2021-02-10 13:39:16.709573
52	2021-02-10 13:39:05.450971	\N	20200526181850_update_public_reaction_counts_again	2021-02-10 13:39:16.768696	2021-02-10 13:39:16.720117	2	2021-02-10 13:39:16.777868
67	2021-02-10 13:39:05.450971	\N	20200530085153_backfill_broadcasts_timestamps	2021-02-10 13:39:16.813721	2021-02-10 13:39:16.788533	2	2021-02-10 13:39:16.824508
5	2021-02-10 13:39:05.450971	\N	20200708163323_backfill_broadcastable_for_broadcasts	2021-02-10 13:39:17.100913	2021-02-10 13:39:16.858694	2	2021-02-10 13:39:17.108304
18	2021-02-10 13:39:05.450971	\N	20200715140848_backfill_user_registered_at	2021-02-10 13:39:17.155679	2021-02-10 13:39:17.117391	2	2021-02-10 13:39:17.165316
50	2021-02-10 13:39:05.450971	\N	20200803142830_reindex_listing_search_column	2021-02-10 13:39:21.779162	2021-02-10 13:39:21.10561	2	2021-02-10 13:39:21.78549
63	2021-02-10 13:39:05.450971	\N	20200810083831_remove_orphaned_ahoy_rows	2021-02-10 13:39:21.880829	2021-02-10 13:39:21.852315	2	2021-02-10 13:39:21.888794
56	2021-02-10 13:39:05.450971	\N	20200813072205_remove_orphaned_display_ad_events	2021-02-10 13:39:21.92646	2021-02-10 13:39:21.901394	2	2021-02-10 13:39:21.934145
48	2021-02-10 13:39:05.450971	\N	20200818103028_nullify_orphaned_by_article_html_variant_trials	2021-02-10 13:39:21.969185	2021-02-10 13:39:21.945535	2	2021-02-10 13:39:21.976095
11	2021-02-10 13:39:05.450971	\N	20200818170410_remove_orphaned_poll_votes	2021-02-10 13:39:22.01349	2021-02-10 13:39:21.986665	2	2021-02-10 13:39:22.020559
42	2021-02-10 13:39:05.450971	\N	20200818170505_remove_orphaned_poll_options	2021-02-10 13:39:22.128657	2021-02-10 13:39:22.080573	2	2021-02-10 13:39:22.137327
37	2021-02-10 13:39:05.450971	\N	20200818170523_remove_orphaned_polls	2021-02-10 13:39:22.172141	2021-02-10 13:39:22.148517	2	2021-02-10 13:39:22.180257
66	2021-02-10 13:39:05.450971	\N	20200819025131_migrate_profile_data	2021-02-10 13:39:22.227152	2021-02-10 13:39:22.191126	2	2021-02-10 13:39:22.233983
61	2021-02-10 13:39:05.450971	\N	20200821103405_remove_orphaned_credits_by_organization	2021-02-10 13:39:22.385864	2021-02-10 13:39:22.361725	2	2021-02-10 13:39:22.394956
25	2021-02-10 13:39:05.450971	\N	20200821103718_remove_orphaned_display_ads_by_organization	2021-02-10 13:39:22.426356	2021-02-10 13:39:22.405373	2	2021-02-10 13:39:22.433763
46	2021-02-10 13:39:05.450971	\N	20200825095213_remove_orphaned_buffer_updates_by_article	2021-02-10 13:39:22.604717	2021-02-10 13:39:22.58213	2	2021-02-10 13:39:22.611923
71	2021-02-10 13:39:05.450971	\N	20200825095512_nullify_orphaned_comments_by_article	2021-02-10 13:39:22.646898	2021-02-10 13:39:22.622878	2	2021-02-10 13:39:22.6545
20	2021-02-10 13:39:05.450971	\N	20200825102956_remove_orphaned_notifications_by_article	2021-02-10 13:39:22.731049	2021-02-10 13:39:22.709587	2	2021-02-10 13:39:22.739174
29	2021-02-10 13:39:05.450971	\N	20200825103244_remove_orphaned_rating_votes_by_article	2021-02-10 13:39:22.818053	2021-02-10 13:39:22.796127	2	2021-02-10 13:39:22.827872
13	2021-02-10 13:39:05.450971	\N	20200826075937_migrate_profile_field_groups	2021-02-10 13:39:22.875529	2021-02-10 13:39:22.839512	2	2021-02-10 13:39:22.881626
24	2021-02-10 13:39:05.450971	\N	20200826092816_remove_orphaned_notes_by_user	2021-02-10 13:39:22.912927	2021-02-10 13:39:22.890643	2	2021-02-10 13:39:22.922872
39	2021-02-10 13:39:05.450971	\N	20200826133748_nullify_orphaned_tweets_by_user	2021-02-10 13:39:22.957167	2021-02-10 13:39:22.934068	2	2021-02-10 13:39:22.965309
43	2021-02-10 13:39:05.450971	\N	20200826140317_remove_orphaned_articles_by_user	2021-02-10 13:39:22.996576	2021-02-10 13:39:22.975996	2	2021-02-10 13:39:23.006459
34	2021-02-10 13:39:05.450971	\N	20200826140754_remove_orphaned_collections_by_user	2021-02-10 13:39:23.039699	2021-02-10 13:39:23.017103	2	2021-02-10 13:39:23.04728
60	2021-02-10 13:39:05.450971	\N	20200826141015_remove_orphaned_github_repos_by_user	2021-02-10 13:39:23.118967	2021-02-10 13:39:23.095946	2	2021-02-10 13:39:23.145141
65	2021-02-10 13:39:05.450971	\N	20200826141145_remove_orphaned_organization_memberships_by_user	2021-02-10 13:39:23.224128	2021-02-10 13:39:23.201154	2	2021-02-10 13:39:23.23332
6	2021-02-10 13:39:05.450971	\N	20200826141447_nullify_orphaned_page_views_by_user	2021-02-10 13:39:23.267142	2021-02-10 13:39:23.243615	2	2021-02-10 13:39:23.274284
55	2021-02-10 13:39:05.450971	\N	20200826141550_nullify_orphaned_rating_votes_by_user	2021-02-10 13:39:23.306454	2021-02-10 13:39:23.284854	2	2021-02-10 13:39:23.313098
7	2021-02-10 13:39:05.450971	\N	20200901040521_create_profile_fields	2021-02-10 13:39:23.616443	2021-02-10 13:39:23.363164	2	2021-02-10 13:39:23.624045
33	2021-02-10 13:39:05.450971	\N	20200901194251_reindex_reading_list_reactions	2021-02-10 13:39:23.701788	2021-02-10 13:39:23.684074	2	2021-02-10 13:39:23.709996
27	2021-02-10 13:39:05.450971	\N	20200904141057_cleanup_articles_with_invalid_feed_source_url	2021-02-10 13:39:23.799836	2021-02-10 13:39:23.764772	2	2021-02-10 13:39:23.807757
2	2021-02-10 13:39:05.450971	\N	20200910135958_remove_draft_articles_with_duplicate_user_id_title_body_markdown	2021-02-10 13:39:23.842383	2021-02-10 13:39:23.817957	2	2021-02-10 13:39:23.852355
17	2021-02-10 13:39:05.450971	\N	20200911045602_reindex_articles_with_videos	2021-02-10 13:39:23.946149	2021-02-10 13:39:23.915868	2	2021-02-10 13:39:23.953429
23	2021-02-10 13:39:05.450971	\N	20200914042434_reindex_users_for_profiles	2021-02-10 13:39:23.97801	2021-02-10 13:39:23.962404	2	2021-02-10 13:39:23.985445
31	2021-02-10 13:39:05.450971	\N	20200916202343_backfill_co_author_ids_for_articles	2021-02-10 13:39:24.035545	2021-02-10 13:39:23.996106	2	2021-02-10 13:39:24.043928
49	2021-02-10 13:39:05.450971	\N	20200917115821_backfill_listing_published_date	2021-02-10 13:39:24.868267	2021-02-10 13:39:24.053753	2	2021-02-10 13:39:24.876398
3	2021-02-10 13:39:05.450971	\N	20200917135847_nullify_orphan_rows_from_buffer_updates_by_composer_user_id	2021-02-10 13:39:24.910366	2021-02-10 13:39:24.887942	2	2021-02-10 13:39:24.917855
1	2021-02-10 13:39:05.450971	\N	20200917150808_nullify_orphaned_tags_by_mod_chat_channel_id	2021-02-10 13:39:24.952796	2021-02-10 13:39:24.927975	2	2021-02-10 13:39:24.960595
12	2021-02-10 13:39:05.450971	\N	20200922065307_fix_dribbble_url_profile_field	2021-02-10 13:39:25.034895	2021-02-10 13:39:25.010807	2	2021-02-10 13:39:25.043042
68	2021-02-10 13:39:05.450971	\N	20201015190914_update_article_main_image_path	2021-02-10 13:39:25.393306	2021-02-10 13:39:25.369478	2	2021-02-10 13:39:25.403258
40	2021-02-10 13:39:05.450971	\N	20201019163242_resave_articles_and_comments_for_imgproxy	2021-02-10 13:39:25.451716	2021-02-10 13:39:25.427606	2	2021-02-10 13:39:25.461475
64	2021-02-10 13:39:05.450971	\N	20201019192035_backfill_registered_for_users	2021-02-10 13:39:25.50748	2021-02-10 13:39:25.473746	2	2021-02-10 13:39:25.51745
41	2021-02-10 13:39:05.450971	\N	20201020215535_resave_articles_and_comments_for_imgproxy	2021-02-10 13:39:25.562388	2021-02-10 13:39:25.528555	2	2021-02-10 13:39:25.57067
53	2021-02-10 13:39:05.450971	\N	20201030015634_make_tags_with_mods_supported	2021-02-10 13:39:25.710971	2021-02-10 13:39:25.687433	2	2021-02-10 13:39:25.719932
30	2021-02-10 13:39:05.450971	\N	20201120001727_populate_explicit_follow_points	2021-02-10 13:39:25.971879	2021-02-10 13:39:25.943076	2	2021-02-10 13:39:25.978666
47	2021-02-10 13:39:05.450971	\N	20201209134953_touch_articles_with_capitalized_paths	2021-02-10 13:39:26.187974	2021-02-10 13:39:26.160401	2	2021-02-10 13:39:26.195867
59	2021-02-10 13:39:05.450971	\N	20201210163704_set_contact_email_address	2021-02-10 13:39:26.225534	2021-02-10 13:39:26.206704	2	2021-02-10 13:39:26.233815
19	2021-02-10 13:39:05.450971	\N	20201218173445_remove_collective_noun_from_config	2021-02-10 13:39:26.388041	2021-02-10 13:39:26.370598	2	2021-02-10 13:39:26.396093
9	2021-02-10 13:39:05.450971	\N	20201228194641_append_collective_noun_to_community_name	2021-02-10 13:39:26.439134	2021-02-10 13:39:26.40562	2	2021-02-10 13:39:26.446304
69	2021-02-10 13:39:05.450971	\N	20201229230456_remove_collective_noun_from_site_config	2021-02-10 13:39:26.47593	2021-02-10 13:39:26.45528	2	2021-02-10 13:39:26.483022
28	2021-02-10 13:39:05.450971	\N	20210107151449_remove_feeds_import_feature_flag	2021-02-10 13:39:30.429675	2021-02-10 13:39:30.382041	2	2021-02-10 13:39:30.439503
62	2021-02-10 13:39:05.450971	\N	20210114174504_update_user_update_rate_limit_default	2021-02-10 13:39:30.524281	2021-02-10 13:39:30.502963	2	2021-02-10 13:39:30.532683
16	2021-02-10 13:39:05.450971	\N	20210119060219_make_local_navigation_links_relative	2021-02-10 13:39:30.621415	2021-02-10 13:39:30.584967	2	2021-02-10 13:39:30.630137
58	2021-02-10 13:39:05.450971	\N	20200214171607_index_tags_to_elasticsearch	2021-02-10 13:39:05.550037	2021-02-10 13:39:05.531409	2	2021-02-10 13:39:05.558596
85	2021-02-10 13:39:05.450971	\N	20200821103305_nullify_orphaned_collections_by_organization	2021-02-10 13:39:22.343588	2021-02-10 13:39:22.322075	2	2021-02-10 13:39:22.35082
90	2021-02-10 13:39:05.450971	\N	20200218195023_index_chat_channel_memberships_to_elasticsearch	2021-02-10 13:39:15.026879	2021-02-10 13:39:05.639375	2	2021-02-10 13:39:15.03419
10	2021-02-10 13:39:05.450971	\N	20200910140109_cleanup_published_articles_with_duplicate_user_id_title_body_markdown	2021-02-10 13:39:23.896608	2021-02-10 13:39:23.863584	2	2021-02-10 13:39:23.904907
80	2021-02-10 13:39:05.450971	\N	20200225114328_update_tags_social_preview_templates	2021-02-10 13:39:15.090764	2021-02-10 13:39:15.042758	2	2021-02-10 13:39:15.100461
15	2021-02-10 13:39:05.450971	\N	20200226193303_backfill_column_for_broadcasts	2021-02-10 13:39:15.143071	2021-02-10 13:39:15.111564	2	2021-02-10 13:39:15.15078
93	2021-02-10 13:39:05.450971	\N	20200821103834_remove_orphaned_listings_by_organization	2021-02-10 13:39:22.468688	2021-02-10 13:39:22.445847	2	2021-02-10 13:39:22.479674
91	2021-02-10 13:39:05.450971	\N	20200305201642_index_feed_content_to_elasticsearch	2021-02-10 13:39:15.212993	2021-02-10 13:39:15.193579	2	2021-02-10 13:39:15.220408
83	2021-02-10 13:39:05.450971	\N	20200313123108_index_users_to_elasticsearch	2021-02-10 13:39:15.253301	2021-02-10 13:39:15.234185	2	2021-02-10 13:39:15.260554
100	2021-02-10 13:39:05.450971	\N	20200822082229_remove_orphaned_notifications_by_organization	2021-02-10 13:39:22.515525	2021-02-10 13:39:22.491035	2	2021-02-10 13:39:22.523377
94	2021-02-10 13:39:05.450971	\N	20200324133751_update_tag_hotness_scores	2021-02-10 13:39:16.129997	2021-02-10 13:39:15.269981	2	2021-02-10 13:39:16.137407
76	2021-02-10 13:39:05.450971	\N	20200917150838_nullify_orphaned_feedback_messages_by_reporter_id	2021-02-10 13:39:24.990445	2021-02-10 13:39:24.969555	2	2021-02-10 13:39:24.998053
101	2021-02-10 13:39:05.450971	\N	20200326145114_re_index_feed_content_to_elasticsearch	2021-02-10 13:39:16.165954	2021-02-10 13:39:16.147324	2	2021-02-10 13:39:16.174222
84	2021-02-10 13:39:05.450971	\N	20200822083050_remove_orphaned_sponsorships_by_organization	2021-02-10 13:39:22.560675	2021-02-10 13:39:22.535121	2	2021-02-10 13:39:22.569818
88	2021-02-10 13:39:05.450971	\N	20200503134234_remove_github_issues	2021-02-10 13:39:16.604033	2021-02-10 13:39:16.570849	2	2021-02-10 13:39:16.611292
54	2021-02-10 13:39:05.450971	\N	20200518173504_update_public_reactions_count_from_positive_reactions_count	2021-02-10 13:39:16.638452	2021-02-10 13:39:16.621651	2	2021-02-10 13:39:16.64598
21	2021-02-10 13:39:05.450971	\N	20200825102635_remove_orphaned_notification_subscriptions_by_article	2021-02-10 13:39:22.688568	2021-02-10 13:39:22.666011	2	2021-02-10 13:39:22.696248
78	2021-02-10 13:39:05.450971	\N	20200723070918_update_articles_cached_entities	2021-02-10 13:39:21.047855	2021-02-10 13:39:17.175479	2	2021-02-10 13:39:21.056033
106	2021-02-10 13:39:05.450971	\N	20201026155851_resave_to_bust_cache_for_imgproxy	2021-02-10 13:39:25.655165	2021-02-10 13:39:25.637663	2	2021-02-10 13:39:25.676362
87	2021-02-10 13:39:05.450971	\N	20200729120730_remove_orphaned_ahoy_events	2021-02-10 13:39:21.085839	2021-02-10 13:39:21.066222	2	2021-02-10 13:39:21.093594
26	2021-02-10 13:39:05.450971	\N	20200805171911_clean_up_language_settings	2021-02-10 13:39:21.831137	2021-02-10 13:39:21.797131	2	2021-02-10 13:39:21.841315
72	2021-02-10 13:39:05.450971	\N	20200818170433_remove_orphaned_poll_skips	2021-02-10 13:39:22.058291	2021-02-10 13:39:22.03064	2	2021-02-10 13:39:22.067625
96	2021-02-10 13:39:05.450971	\N	20200825103119_remove_orphaned_profile_pins_by_article	2021-02-10 13:39:22.775467	2021-02-10 13:39:22.749561	2	2021-02-10 13:39:22.785183
104	2021-02-10 13:39:05.450971	\N	20200820153340_insert_facebook_connect_broadcast_message	2021-02-10 13:39:22.266411	2021-02-10 13:39:22.243912	2	2021-02-10 13:39:22.273048
57	2021-02-10 13:39:05.450971	\N	20200821103125_nullify_orphaned_articles_by_organization	2021-02-10 13:39:22.304303	2021-02-10 13:39:22.282661	2	2021-02-10 13:39:22.311983
99	2021-02-10 13:39:05.450971	\N	20200922072907_backfill_profile_skills_languages	2021-02-10 13:39:25.102221	2021-02-10 13:39:25.053889	2	2021-02-10 13:39:25.109129
73	2021-02-10 13:39:05.450971	\N	20200826140924_remove_orphaned_credits_by_user	2021-02-10 13:39:23.078161	2021-02-10 13:39:23.057271	2	2021-02-10 13:39:23.085709
32	2021-02-10 13:39:05.450971	\N	20200924140813_remove_reaction_index_by_name	2021-02-10 13:39:25.151105	2021-02-10 13:39:25.119679	2	2021-02-10 13:39:25.159497
105	2021-02-10 13:39:05.450971	\N	20200826141105_remove_orphaned_mentions_by_user	2021-02-10 13:39:23.180992	2021-02-10 13:39:23.156823	2	2021-02-10 13:39:23.190575
35	2021-02-10 13:39:05.450971	\N	20200826141652_remove_orphaned_reactions_by_user	2021-02-10 13:39:23.344998	2021-02-10 13:39:23.322529	2	2021-02-10 13:39:23.3526
38	2021-02-10 13:39:05.450971	ActiveRecord::RecordNotUnique: PG::UniqueViolation: ERROR:  duplicate key value violates unique constraint "index_navigation_links_on_url_and_name"\nDETAIL:  Key (url, name)=(/readinglist, Reading List) already exists.\n	20201001173841_add_navigation_links	2021-02-10 13:39:25.244484	2021-02-10 13:39:25.169822	3	2021-02-10 13:39:25.251651
95	2021-02-10 13:39:05.450971	\N	20200901085230_remove_draft_articles_with_duplicate_canonical_url	2021-02-10 13:39:23.664484	2021-02-10 13:39:23.634777	2	2021-02-10 13:39:23.672891
81	2021-02-10 13:39:05.450971	\N	20201208151516_set_onboarding_profile_fields_for_existing_forems	2021-02-10 13:39:26.141908	2021-02-10 13:39:26.031337	2	2021-02-10 13:39:26.150247
79	2021-02-10 13:39:05.450971	\N	20200904132553_remove_draft_articles_with_duplicate_feed_source_url	2021-02-10 13:39:23.745114	2021-02-10 13:39:23.720253	2	2021-02-10 13:39:23.754451
86	2021-02-10 13:39:05.450971	\N	20201013205258_resave_articles_and_comments_for_imgproxy	2021-02-10 13:39:25.294934	2021-02-10 13:39:25.263891	2	2021-02-10 13:39:25.305066
75	2021-02-10 13:39:05.450971	\N	20201030134117_reindex_users_for_username_search	2021-02-10 13:39:25.762002	2021-02-10 13:39:25.731574	2	2021-02-10 13:39:25.770647
97	2021-02-10 13:39:05.450971	\N	20201014184856_resave_users_for_imgproxy	2021-02-10 13:39:25.345141	2021-02-10 13:39:25.318115	2	2021-02-10 13:39:25.35535
98	2021-02-10 13:39:05.450971	\N	20210108033107_remove_looking_for_work_profile_fields	2021-02-10 13:39:30.483111	2021-02-10 13:39:30.452154	2	2021-02-10 13:39:30.49233
82	2021-02-10 13:39:05.450971	\N	20201022161311_backfill_user_registrations_in_registrations_controller_path	2021-02-10 13:39:25.609116	2021-02-10 13:39:25.581015	2	2021-02-10 13:39:25.616072
74	2021-02-10 13:39:05.450971	\N	20201103050112_prepare_for_profile_column_drop	2021-02-10 13:39:25.800849	2021-02-10 13:39:25.781219	2	2021-02-10 13:39:25.811469
77	2021-02-10 13:39:05.450971	\N	20201217162454_cleanup_orphan_git_hub_repositories	2021-02-10 13:39:26.281105	2021-02-10 13:39:26.242554	2	2021-02-10 13:39:26.290541
102	2021-02-10 13:39:05.450971	\N	20201118141822_gradual_article_cache_bust	2021-02-10 13:39:25.925732	2021-02-10 13:39:25.823009	2	2021-02-10 13:39:25.932955
89	2021-02-10 13:39:05.450971	\N	20201130041949_remove_name_profile_field	2021-02-10 13:39:26.013755	2021-02-10 13:39:25.989078	2	2021-02-10 13:39:26.020935
92	2021-02-10 13:39:05.450971	\N	20201217184442_append_community_to_community_name	2021-02-10 13:39:26.319161	2021-02-10 13:39:26.300923	2	2021-02-10 13:39:26.327227
45	2021-02-10 13:39:05.450971	\N	20201218080343_update_default_email_addresses	2021-02-10 13:39:26.353443	2021-02-10 13:39:26.33634	2	2021-02-10 13:39:26.361459
36	2021-02-10 13:39:05.450971	\N	20210118194138_resync_unpublished_articles_comments_elasticsearch_document	2021-02-10 13:39:30.567893	2021-02-10 13:39:30.543001	2	2021-02-10 13:39:30.574866
103	2021-02-10 13:39:05.450971	\N	20210104170542_resave_articles_for_code_snippet_fullscreen_icon	2021-02-10 13:39:30.364315	2021-02-10 13:39:26.491818	2	2021-02-10 13:39:30.371618
\.


--
-- Data for Name: display_ad_events; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.display_ad_events (id, category, context_type, created_at, display_ad_id, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: display_ads; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.display_ads (id, approved, body_markdown, clicks_count, created_at, impressions_count, organization_id, placement_area, processed_html, published, success_rate, updated_at) FROM stdin;
\.


--
-- Data for Name: email_authorizations; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.email_authorizations (id, confirmation_token, created_at, json_data, type_of, updated_at, user_id, verified_at) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.events (id, category, cover_image, created_at, description_html, description_markdown, ends_at, host_name, live_now, location_name, location_url, profile_image, published, slug, starts_at, title, updated_at) FROM stdin;
\.


--
-- Data for Name: feedback_messages; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.feedback_messages (id, affected_id, category, created_at, feedback_type, message, offender_id, reported_url, reporter_id, status, updated_at) FROM stdin;
2	\N	harassment	2021-02-10 13:39:02.132276	abuse-reports	Eveniet voluptatem qui iste.	\N	example.com	\N	Open	2021-02-10 13:39:02.132276
1	\N	spam	2021-02-10 13:39:02.113436	spam	Iure dolorem earum cupiditate.	\N	\N	\N	Open	2021-02-10 13:39:02.113436
\.


--
-- Data for Name: field_test_events; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.field_test_events (id, created_at, field_test_membership_id, name) FROM stdin;
\.


--
-- Data for Name: field_test_memberships; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.field_test_memberships (id, converted, created_at, experiment, participant_id, participant_type, variant) FROM stdin;
\.


--
-- Data for Name: flipper_features; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.flipper_features (id, created_at, key, updated_at) FROM stdin;
\.


--
-- Data for Name: flipper_gates; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.flipper_gates (id, created_at, feature_key, key, updated_at, value) FROM stdin;
\.


--
-- Data for Name: follows; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.follows (id, blocked, created_at, explicit_points, followable_id, followable_type, follower_id, follower_type, implicit_points, points, subscription_status, updated_at) FROM stdin;
\.


--
-- Data for Name: github_issues; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.github_issues (id, category, created_at, issue_serialized, processed_html, updated_at, url) FROM stdin;
\.


--
-- Data for Name: github_repos; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.github_repos (id, additional_note, bytes_size, created_at, description, featured, fork, github_id_code, info_hash, language, name, priority, stargazers_count, updated_at, url, user_id, watchers_count) FROM stdin;
\.


--
-- Data for Name: html_variant_successes; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.html_variant_successes (id, article_id, created_at, html_variant_id, updated_at) FROM stdin;
\.


--
-- Data for Name: html_variant_trials; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.html_variant_trials (id, article_id, created_at, html_variant_id, updated_at) FROM stdin;
\.


--
-- Data for Name: html_variants; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.html_variants (id, approved, created_at, "group", html, name, published, success_rate, target_tag, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.identities (id, auth_data_dump, created_at, provider, secret, token, uid, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: mentions; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.mentions (id, created_at, mentionable_id, mentionable_type, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.messages (id, chat_action, chat_channel_id, created_at, edited_at, message_html, message_markdown, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: navigation_links; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.navigation_links (id, created_at, display_only_when_signed_in, icon, name, "position", updated_at, url) FROM stdin;
1	2021-02-10 13:39:05.044617	t	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#67757F" d="M39 24c0 2.209-1.791 2-4 2H9c-2.209 0-4 .209-4-2l2-12c.125-1.917 1.791-4 4-4h22c2.209 0 3.791 2.208 4 4l2 12z"/>\n        <path fill="#CCD6DD" d="M32 17a2 2 0 01-2 2H14a2 2 0 01-2-2V9a2 2 0 012-2h16a2 2 0 012 2v8z"/>\n        <path fill="#E1E8ED" d="M34 21a2 2 0 01-2 2H12a2 2 0 01-2-2v-8a2 2 0 012-2h20a2 2 0 012 2v8z"/>\n        <path fill="#F5F8FA" d="M36 25a2 2 0 01-2 2H10a2 2 0 01-2-2v-8a2 2 0 012-2h24a2 2 0 012 2v8z"/>\n        <path fill="#9AAAB4" d="M39 35a4 4 0 01-4 4H9a4 4 0 01-4-4V24a4 4 0 014-4h26a4 4 0 014 4v11z"/>\n        <path fill="#67757F" d="M18 16zm0 0z"/>\n        <path fill="#FCAB40" d="M26 5h-5a2 2 0 00-2 2v1h4a2 2 0 012 2h1a2 2 0 002-2V7a2 2 0 00-2-2z"/>\n        <path fill="#5DADEC" d="M22 9h-5a2 2 0 00-2 2v1h4a2 2 0 012 2h1a2 2 0 002-2v-1a2 2 0 00-2-2z"/>\n        <path fill="#E75A70" d="M20 16a2 2 0 01-2 2h-5a2 2 0 01-2-2v-1a2 2 0 012-2h5a2 2 0 012 2v1z"/>\n        <path fill="#67757F" d="M29 32a2 2 0 01-2 2H17a2 2 0 01-2-2v-5a2 2 0 012-2h10a2 2 0 012 2v5zm-11-4z"/>\n        <path fill="#E1E8ED" d="M27 31a1 1 0 01-1 1h-8a1 1 0 01-1-1v-3a1 1 0 011-1h8a1 1 0 011 1v3z"/>\n    </g>\n</svg>\n	Reading List	0	2021-02-10 13:39:05.044617	/readinglist
2	2021-02-10 13:39:05.064579	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#FFD983" d="M36 4H14a4 4 0 00-4 4v24H8a4 4 0 000 8h24a4 4 0 004-4V12a4 4 0 000-8z"/>\n        <path fill="#E39F3D" d="M12 14h24v-2H14l-2-1z"/>\n        <path fill="#FFE8B6" d="M14 4a4 4 0 00-4 4v24.555A3.955 3.955 0 008 32a4 4 0 104 4V11.445c.59.344 1.268.555 2 .555a4 4 0 000-8z"/>\n        <path fill="#C1694F" d="M16 8a2 2 0 11-4.001-.001A2 2 0 0116 8m-6 28a2 2 0 11-4.001-.001A2 2 0 0110 36m24-17a1 1 0 01-1 1H15a1 1 0 010-2h18a1 1 0 011 1m0 4a1 1 0 01-1 1H15a1 1 0 110-2h18a1 1 0 011 1m0 4a1 1 0 01-1 1H15a1 1 0 110-2h18a1 1 0 011 1m0 4a1 1 0 01-1 1H15a1 1 0 110-2h18a1 1 0 011 1"/>\n    </g>\n</svg>\n	Listings	1	2021-02-10 13:39:05.064579	/listings
3	2021-02-10 13:39:05.087443	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#292F33" d="M10 19h24v2H10zm15 15c0 2.208-.792 4-3 4-2.209 0-3-1.792-3-4s.791-2 3-2c2.208 0 3-.208 3 2z"/>\n        <path fill="#66757F" d="M22 35c-6.627 0-10 1.343-10 3v2h20v-2c0-1.657-3.373-3-10-3z"/>\n        <path fill="#99AAB5" d="M22 4a9 9 0 00-9 9v7h18v-7a9 9 0 00-9-9z"/>\n        <g fill="#292F33" transform="translate(4 4)">\n            <circle cx="15.5" cy="2.5" r="1.5"/>\n            <circle cx="20.5" cy="2.5" r="1.5"/>\n            <circle cx="17.5" cy="6.5" r="1.5"/>\n            <circle cx="22.5" cy="6.5" r="1.5"/>\n            <circle cx="12.5" cy="6.5" r="1.5"/>\n            <circle cx="15.5" cy="10.5" r="1.5"/>\n            <circle cx="10.5" cy="10.5" r="1.5"/>\n            <circle cx="20.5" cy="10.5" r="1.5"/>\n            <circle cx="25.5" cy="10.5" r="1.5"/>\n            <circle cx="17.5" cy="14.5" r="1.5"/>\n            <circle cx="22.5" cy="14.5" r="1.5"/>\n            <circle cx="12.5" cy="14.5" r="1.5"/>\n        </g>\n        <path fill="#66757F" d="M13 19.062V21c0 4.971 4.029 9 9 9s9-4.029 9-9v-1.938H13z"/>\n        <path fill="#66757F" d="M34 18a1 1 0 00-1 1v2c0 6.074-4.925 11-11 11s-11-4.926-11-11v-2a1 1 0 00-2 0v2c0 7.18 5.82 13 13 13s13-5.82 13-13v-2a1 1 0 00-1-1z"/>\n    </g>\n</svg>\n	Podcasts	2	2021-02-10 13:39:05.087443	/pod
4	2021-02-10 13:39:05.112871	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g transform="translate(4 4)">\n        <path fill="#31373D" d="M34.074 18l-4.832 3H28v-4c0-.088-.02-.169-.026-.256C31.436 15.864 34 12.735 34 9a8 8 0 00-16.001 0c0 1.463.412 2.822 1.099 4H14.92c.047-.328.08-.66.08-1a7 7 0 10-14 0 6.995 6.995 0 004 6.317V29a4 4 0 004 4h15a4 4 0 004-4v-3h1.242l4.832 3H35V18h-.926zM28.727 3.977a5.713 5.713 0 012.984 4.961L28.18 8.35a2.276 2.276 0 00-.583-.982l1.13-3.391zm-.9 6.342l3.552.592a5.713 5.713 0 01-4.214 3.669 3.985 3.985 0 00-1.392-1.148l.625-2.19a2.425 2.425 0 001.429-.923zM26 3.285c.282 0 .557.027.828.067l-1.131 3.392c-.404.054-.772.21-1.081.446L21.42 5.592A5.703 5.703 0 0126 3.285zM20.285 9c0-.563.085-1.106.236-1.62l3.194 1.597-.002.023c0 .657.313 1.245.771 1.662L23.816 13h-1.871a5.665 5.665 0 01-1.66-4zm-9.088-.385A4.64 4.64 0 0112.667 12c0 .344-.043.677-.113 1H10.1c.145-.304.233-.641.233-1a2.32 2.32 0 00-.392-1.292l1.256-2.093zM8 7.333c.519 0 1.01.105 1.476.261L8.22 9.688c-.073-.007-.145-.022-.22-.022a2.32 2.32 0 00-1.292.392L4.615 8.803A4.64 4.64 0 018 7.333zM3.333 12c0-.519.105-1.01.261-1.477l2.095 1.257c-.007.073-.022.144-.022.22 0 .75.36 1.41.91 1.837a3.987 3.987 0 00-1.353 1.895C4.083 14.881 3.333 13.533 3.333 12z"/>\n        <circle fill="#8899A6" cx="24" cy="19" r="2"/>\n        <circle fill="#8899A6" cx="9" cy="19" r="2"/>\n        <path fill="#8899A6" d="M24 27a2 2 0 00-2-2H11a2 2 0 00-2 2v6a2 2 0 002 2h11a2 2 0 002-2v-6z"/>\n    </g>\n</svg>\n	Videos	3	2021-02-10 13:39:05.112871	/videos
5	2021-02-10 13:39:05.138289	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#FFD983" d="M36.017 24.181L21.345 9.746C20.687 9.087 19.823 9 18.96 9H8.883C7.029 9 6 10.029 6 11.883v10.082c0 .861.089 1.723.746 2.38L21.3 39.017a3.287 3.287 0 004.688 0l10.059-10.088c1.31-1.312 1.28-3.438-.03-4.748zm-23.596-8.76a1.497 1.497 0 11-2.118-2.117 1.497 1.497 0 012.118 2.117z"/>\n        <path fill="#D99E82" d="M13.952 11.772a3.66 3.66 0 00-5.179 0 3.663 3.663 0 105.18 5.18 3.664 3.664 0 00-.001-5.18zm-1.53 3.65a1.499 1.499 0 11-2.119-2.12 1.499 1.499 0 012.119 2.12z"/>\n        <path fill="#C1694F" d="M12.507 14.501a1 1 0 11-1.415-1.414l8.485-8.485a1 1 0 111.415 1.414l-8.485 8.485z"/>\n    </g>\n</svg>\n	Tags	4	2021-02-10 13:39:05.138289	/tags
6	2021-02-10 13:39:05.160616	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#FFDB5E" d="M38.956 21.916c0-.503-.12-.975-.321-1.404-1.341-4.326-7.619-4.01-16.549-4.221-1.493-.035-.639-1.798-.115-5.668.341-2.517-1.282-6.382-4.01-6.382-4.498 0-.171 3.548-4.148 12.322-2.125 4.688-6.875 2.062-6.875 6.771v10.719c0 1.833.18 3.595 2.758 3.885 2.499.281 1.937 2.062 5.542 2.062h18.044a3.337 3.337 0 003.333-3.334c0-.762-.267-1.456-.698-2.018 1.02-.571 1.72-1.649 1.72-2.899 0-.76-.266-1.454-.696-2.015 1.023-.57 1.725-1.649 1.725-2.901 0-.909-.368-1.733-.961-2.336a3.311 3.311 0 001.251-2.581z"/>\n        <path fill="#EE9547" d="M27.02 25.249h8.604c1.17 0 2.268-.626 2.866-1.633a.876.876 0 00-1.506-.892 1.588 1.588 0 01-1.361.775h-8.81c-.873 0-1.583-.71-1.583-1.583s.71-1.583 1.583-1.583H32.7a.875.875 0 000-1.75h-5.888a3.337 3.337 0 00-3.333 3.333c0 1.025.475 1.932 1.205 2.544a3.32 3.32 0 00-.998 2.373c0 1.028.478 1.938 1.212 2.549a3.318 3.318 0 00.419 5.08 3.305 3.305 0 00-.852 2.204 3.337 3.337 0 003.333 3.333h5.484a3.35 3.35 0 002.867-1.632.875.875 0 00-1.504-.894 1.594 1.594 0 01-1.363.776h-5.484c-.873 0-1.583-.71-1.583-1.583s.71-1.583 1.583-1.583h6.506a3.35 3.35 0 002.867-1.633.875.875 0 10-1.504-.894 1.572 1.572 0 01-1.363.777h-7.063a1.585 1.585 0 010-3.167h8.091a3.35 3.35 0 002.867-1.632.875.875 0 00-1.504-.894 1.573 1.573 0 01-1.363.776H27.02a1.585 1.585 0 010-3.167z"/>\n    </g>\n</svg>\n	Code of Conduct	5	2021-02-10 13:39:05.160616	/code-of-conduct
7	2021-02-10 13:39:05.182468	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#FFD983" d="M33 15.06c0 6.439-5 7.439-5 13.44 0 3.098-3.123 3.359-5.5 3.359-2.053 0-6.586-.779-6.586-3.361C15.914 22.5 11 21.5 11 15.06c0-6.031 5.285-10.92 11.083-10.92C27.883 4.14 33 9.029 33 15.06z"/>\n        <path fill="#CCD6DD" d="M26.167 36.5c0 .828-2.234 2.5-4.167 2.5-1.933 0-4.167-1.672-4.167-2.5 0-.828 2.233-.5 4.167-.5 1.933 0 4.167-.328 4.167.5z"/>\n        <path fill="#FFCC4D" d="M26.707 14.293a.999.999 0 00-1.414 0L22 17.586l-3.293-3.293a1 1 0 10-1.414 1.414L21 19.414V30a1 1 0 102 0V19.414l3.707-3.707a.999.999 0 000-1.414z"/>\n        <path fill="#99AAB5" d="M28 35a2 2 0 01-2 2h-8a2 2 0 01-2-2v-6h12v6z"/>\n        <path fill="#CCD6DD" d="M15.999 36a1 1 0 01-.163-1.986l12-2a.994.994 0 011.15.822.999.999 0 01-.822 1.15l-12 2a.927.927 0 01-.165.014zm0-4a1 1 0 01-.163-1.986l12-2a.995.995 0 011.15.822.999.999 0 01-.822 1.15l-12 2a.927.927 0 01-.165.014z"/>\n    </g>\n</svg>\n	FAQ	6	2021-02-10 13:39:05.182468	/faq
8	2021-02-10 13:39:05.206677	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#F4900C" d="M15 4a8 8 0 00-8 8v8h2v-8a6 6 0 0112 0v8h2v-8a8 8 0 00-8-8z"/>\n        <path fill="#DD2E44" d="M5 12l2 2 2-2 2 2 2-2 2 2 2-2 2 2 2-2 2 2 2-2v23H5z"/>\n        <path fill="#FFCC4D" d="M29 9a8 8 0 00-8 8v8h2v-8a6 6 0 0112 0v8h2v-8a8 8 0 00-8-8z"/>\n        <path fill="#744EAA" d="M19 17l2 2 2-2 2 2 2-2 2 2 2-2 2 2 2-2 2 2 2-2v23H19z"/>\n    </g>\n</svg>\n	DEV Shop	7	2021-02-10 13:39:05.206677	https://shop.dev.to/
9	2021-02-10 13:39:05.229683	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <path fill="#DD2E44" d="M39.885 15.833c0-5.45-4.418-9.868-9.867-9.868-3.308 0-6.227 1.633-8.018 4.129-1.791-2.496-4.71-4.129-8.017-4.129-5.45 0-9.868 4.417-9.868 9.868 0 .772.098 1.52.266 2.241C5.751 26.587 15.216 35.568 22 38.034c6.783-2.466 16.249-11.447 17.617-19.959.17-.721.268-1.469.268-2.242z"/>\n</svg>\n	Sponsors	8	2021-02-10 13:39:05.229683	/sponsors
10	2021-02-10 13:39:05.251088	f	<svg viewBox="0 0 235 234" xmlns="http://www.w3.org/2000/svg" class="rainbow-logo" preserveAspectRatio="xMinYMin meet">\n    <g fill="none" fill-rule="evenodd">\n        <path fill="#88AEDC" d="M234.04 175.67l-75.69 58.28h47.18L234.04 212z"/>\n        <path d="M234.04 140.06l-121.93 93.89h.02l121.91-93.87zM133.25.95L.04 103.51v.02L133.27.95z"/>\n        <path fill="#F58F8E" fill-rule="nonzero" d="M.04.95v30.16L39.21.95z"/>\n        <path fill="#FEE18A" fill-rule="nonzero" d="M39.21.95L.04 31.11v35.9L85.84.95z"/>\n        <path fill="#F3F095" fill-rule="nonzero" d="M85.84.95L.04 67.01v36.5L133.25.95z"/>\n        <path fill="#55C1AE" fill-rule="nonzero" d="M133.27.95L.04 103.53v35.59L179.49.95z"/>\n        <path fill="#F7B3CE" fill-rule="nonzero" d="M234.04.95h-7.37L.04 175.45v35.93l234-180.18z"/>\n        <path fill="#88AEDC" fill-rule="nonzero" d="M179.49.95L.04 139.12v36.33L226.67.95z"/>\n        <path fill="#F58F8E" fill-rule="nonzero" d="M234.04 31.2L.04 211.38v22.57h18.03l215.97-166.3z"/>\n        <path fill="#FEE18A" fill-rule="nonzero" d="M234.04 67.65L18.07 233.95H64.7l169.34-130.39z"/>\n        <path fill="#F3F095" fill-rule="nonzero" d="M234.04 103.56L64.7 233.95h47.41l121.93-93.89z"/>\n        <path fill="#55C1AE" fill-rule="nonzero" d="M234.04 140.08l-121.91 93.87h46.22l75.69-58.28z"/>\n        <path fill="#F7B3CE" fill-rule="nonzero" d="M234.04 212l-28.51 21.95h28.51z"/>\n        <path d="M65.237 77.75c4.514.95 7.774 2.8 11.135 6.3 3.059 3.2 4.965 6.85 5.767 10.95.652 3.45.652 40.55 0 44.05-1.705 9.1-9.479 16.2-19.109 17.45-2.006.25-8.727.5-14.845.5H37V77h12.438c8.828 0 13.342.2 15.8.75zM51.545 117v25.6l5.166-.2c4.464-.15 5.417-.35 7.423-1.5 3.912-2.3 3.962-2.45 3.962-24.2 0-21.2 0-21.2-3.661-23.6-1.806-1.2-2.558-1.35-7.473-1.55l-5.417-.15V117zm79.245-32.75v7.25h-25.58v18h15.549V124H105.21l.1 9.1.15 9.15 12.69.15 12.638.1V157h-14.795c-16.451 0-19.009-.3-21.617-2.6-3.661-3.2-3.46-1.15-3.611-36.3-.1-21.9.05-32.25.401-33.65.702-2.6 3.661-5.8 6.27-6.7 1.554-.55 5.466-.7 17.704-.75h15.648v7.25zm31.647 20.85c3.712 14.25 6.821 25.6 6.922 25.25.15-.35 3.31-12.4 7.071-26.85l6.872-26.25 7.824-.15c5.918-.1 7.874.05 7.874.5s-17.354 66.2-18.357 69.5c-.702 2.3-4.463 7-6.57 8.25-2.658 1.5-6.57 1.75-8.978.5-2.156-1.1-5.015-4.4-6.47-7.5-.902-1.9-15.648-56-19.058-70l-.352-1.35h7.825c7.673 0 7.874 0 8.275 1.1.2.65 3.41 12.8 7.122 27z" fill="#FFF"/>\n    </g>\n</svg>\n	About	9	2021-02-10 13:39:05.251088	/about
11	2021-02-10 13:39:05.273058	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g transform="translate(4 4)">\n        <circle fill="#FFCC4D" cx="18" cy="18" r="18"/>\n        <path fill="#664500" d="M27.335 23.629a.501.501 0 00-.635-.029c-.039.029-3.922 2.9-8.7 2.9-4.766 0-8.662-2.871-8.7-2.9a.5.5 0 10-.729.657C8.7 24.472 11.788 29.5 18 29.5s9.301-5.028 9.429-5.243a.499.499 0 00-.094-.628z"/>\n        <path fill="#65471B" d="M18 26.591c-.148 0-.291-.011-.438-.016v4.516h.875v-4.517c-.145.005-.289.017-.437.017z"/>\n        <path fill="#FFF" d="M22 26c.016-.004-1.45.378-2.446.486-.366.042-.737.076-1.117.089v4.517H20c1.1 0 2-.9 2-2V26zm-8 0c-.016-.004 1.45.378 2.446.486.366.042.737.076 1.117.089v4.517H16c-1.1 0-2-.9-2-2V26z"/>\n        <path fill="#65471B" d="M27.335 23.629a.501.501 0 00-.635-.029c-.03.022-2.259 1.668-5.411 2.47-.443.113-1.864.43-3.286.431-1.424 0-2.849-.318-3.292-.431-3.152-.802-5.381-2.448-5.411-2.47a.501.501 0 00-.729.657c.097.162 1.885 3.067 5.429 4.481v-1.829c-.016-.004 1.45.378 2.446.486.366.042.737.076 1.117.089.146.005.289.016.437.016.148 0 .291-.011.438-.016.38-.013.751-.046 1.117-.089.996-.108 2.462-.49 2.446-.486v1.829c3.544-1.414 5.332-4.319 5.429-4.481a.5.5 0 00-.095-.628zm-.711-9.605c0 1.714-.938 3.104-2.096 3.104-1.157 0-2.096-1.39-2.096-3.104s.938-3.104 2.096-3.104c1.158 0 2.096 1.39 2.096 3.104zm-17.167 0c0 1.714.938 3.104 2.096 3.104 1.157 0 2.096-1.39 2.096-3.104s-.938-3.104-2.096-3.104c-1.158 0-2.096 1.39-2.096 3.104z"/>\n        <path fill="#292F33" d="M34.808 9.627c-.171-.166-1.267.274-2.376-.291-2.288-1.166-8.07-2.291-11.834.376-.403.285-2.087.333-2.558.313-.471.021-2.155-.027-2.558-.313-3.763-2.667-9.545-1.542-11.833-.376-1.109.565-2.205.125-2.376.291-.247.239-.247 1.196.001 1.436.246.239 1.477.515 1.722 1.232.247.718.249 4.958 2.213 6.424 1.839 1.372 6.129 1.785 8.848.238 2.372-1.349 2.289-4.189 2.724-5.881.155-.603.592-.907 1.26-.907s1.105.304 1.26.907c.435 1.691.351 4.532 2.724 5.881 2.719 1.546 7.009 1.133 8.847-.238 1.965-1.465 1.967-5.706 2.213-6.424.245-.717 1.476-.994 1.722-1.232.248-.24.249-1.197.001-1.436zm-20.194 3.65c-.077 1.105-.274 3.227-1.597 3.98-.811.462-1.868.743-2.974.743h-.001c-1.225 0-2.923-.347-3.587-.842-.83-.619-1.146-3.167-1.265-4.12-.076-.607-.28-2.09.388-2.318 1.06-.361 2.539-.643 4.052-.643.693 0 3.021.043 4.155.741 1.005.617.872 1.851.829 2.459zm16.278-.253c-.119.954-.435 3.515-1.265 4.134-.664.495-2.362.842-3.587.842h-.001c-1.107 0-2.163-.281-2.975-.743-1.323-.752-1.52-2.861-1.597-3.966-.042-.608-.176-1.851.829-2.468 1.135-.698 3.462-.746 4.155-.746 1.513 0 2.991.277 4.052.638.668.228.465 1.702.389 2.309z"/>\n    </g>\n</svg>\n	Privacy Policy	10	2021-02-10 13:39:05.273058	/privacy
12	2021-02-10 13:39:05.299592	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g transform="translate(4 4)">\n        <ellipse fill="#F5F8FA" cx="8.828" cy="18" rx="7.953" ry="13.281"/>\n        <path fill="#E1E8ED" d="M8.828 32.031C3.948 32.031.125 25.868.125 18S3.948 3.969 8.828 3.969 17.531 10.132 17.531 18s-3.823 14.031-8.703 14.031zm0-26.562C4.856 5.469 1.625 11.09 1.625 18s3.231 12.531 7.203 12.531S16.031 24.91 16.031 18 12.8 5.469 8.828 5.469z"/>\n        <circle fill="#8899A6" cx="6.594" cy="18" r="4.96"/>\n        <circle fill="#292F33" cx="6.594" cy="18" r="3.565"/>\n        <circle fill="#F5F8FA" cx="7.911" cy="15.443" r="1.426"/>\n        <ellipse fill="#F5F8FA" cx="27.234" cy="18" rx="7.953" ry="13.281"/>\n        <path fill="#E1E8ED" d="M27.234 32.031c-4.88 0-8.703-6.163-8.703-14.031s3.823-14.031 8.703-14.031S35.938 10.132 35.938 18s-3.824 14.031-8.704 14.031zm0-26.562c-3.972 0-7.203 5.622-7.203 12.531 0 6.91 3.231 12.531 7.203 12.531S34.438 24.91 34.438 18 31.206 5.469 27.234 5.469z"/>\n        <circle fill="#8899A6" cx="25" cy="18" r="4.96"/>\n        <circle fill="#292F33" cx="25" cy="18" r="3.565"/>\n        <circle fill="#F5F8FA" cx="26.317" cy="15.443" r="1.426"/>\n    </g>\n</svg>\n	Terms of use	11	2021-02-10 13:39:05.299592	/terms
13	2021-02-10 13:39:05.322165	f	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 44 44" width="24" height="24">\n    <g class="nc-icon-wrapper">\n        <path fill="#FFAC33" d="M38.724 33.656c-1.239-.01-1.241 1.205-1.241 1.205H22.5c-5.246 0-9.5-4.254-9.5-9.5s4.254-9.5 9.5-9.5 9.5 4.254 9.5 9.5c0 3.062-1.6 5.897-3.852 7.633h5.434C35.022 30.849 36 28.139 36 25.361c0-7.456-6.045-13.5-13.5-13.5-7.456 0-13.5 6.044-13.5 13.5 0 7.455 6.044 13.5 13.5 13.5h14.982s-.003 1.127 1.241 1.139c1.238.012 1.228-1.245 1.228-1.245l.014-3.821s.001-1.267-1.241-1.278zM9 18.26a16.047 16.047 0 014-4.739V13c0-5 5-7 5-8s-1-1-1-1H5C4 4 4 5 4 5c0 1 5 3.333 5 7.69v5.57z"/>\n        <path fill="#BE1931" d="M17.091 33.166a9.487 9.487 0 01-4.045-8.72l-3.977-.461c-.046.452-.069.911-.069 1.376 0 4.573 2.28 8.608 5.76 11.051l2.331-3.246z"/>\n        <path fill="#BE1931" d="M10 29.924s-5.188-.812-5 1 5-1 5-1zm0 .312s-4.125 2.688-2.938 3.75S10 30.236 10 30.236z"/>\n    </g>\n</svg>\n	Contact	12	2021-02-10 13:39:05.322165	/contact
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.notes (id, author_id, content, created_at, noteable_id, noteable_type, reason, updated_at) FROM stdin;
\.


--
-- Data for Name: notification_subscriptions; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.notification_subscriptions (id, config, created_at, notifiable_id, notifiable_type, updated_at, user_id) FROM stdin;
2	all_comments	2021-02-15 14:21:39.370676	28	Article	2021-02-15 14:21:39.370676	1
3	all_comments	2021-02-15 16:09:46.040554	29	Article	2021-02-15 16:09:46.040554	1
4	all_comments	2021-02-15 19:12:24.008532	30	Article	2021-02-15 19:12:24.008532	1
5	all_comments	2021-02-15 19:20:19.9041	31	Article	2021-02-15 19:20:19.9041	1
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.notifications (id, action, created_at, json_data, notifiable_id, notifiable_type, notified_at, organization_id, read, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: oauth_access_grants; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.oauth_access_grants (id, application_id, created_at, expires_in, redirect_uri, resource_owner_id, revoked_at, scopes, token) FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.oauth_access_tokens (id, application_id, created_at, expires_in, previous_refresh_token, refresh_token, resource_owner_id, revoked_at, scopes, token) FROM stdin;
\.


--
-- Data for Name: oauth_applications; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.oauth_applications (id, confidential, created_at, name, redirect_uri, scopes, secret, uid, updated_at) FROM stdin;
\.


--
-- Data for Name: organization_memberships; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.organization_memberships (id, created_at, organization_id, type_of_user, updated_at, user_id, user_title) FROM stdin;
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.organizations (id, articles_count, bg_color_hex, company_size, created_at, credits_count, cta_body_markdown, cta_button_text, cta_button_url, cta_processed_html, dark_nav_image, email, github_username, last_article_at, latest_article_updated_at, location, name, nav_image, old_old_slug, old_slug, profile_image, profile_updated_at, proof, secret, slug, spent_credits_count, story, summary, tag_line, tech_stack, text_color_hex, twitter_username, unspent_credits_count, updated_at, url) FROM stdin;
\.


--
-- Data for Name: page_views; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.page_views (id, article_id, counts_for_number_of_views, created_at, domain, path, referrer, time_tracked_in_seconds, updated_at, user_agent, user_id) FROM stdin;
29	29	1	2021-02-16 07:31:28.626372	simplecoding.dev	/admin	https://api.simplecoding.dev:3000/admin	15	2021-02-16 07:31:28.626372	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
11	29	1	2021-02-15 16:09:52.280611	simplecoding.dev	/new	https://api.simplecoding.dev:3000/new	45	2021-02-15 16:09:52.280611	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
12	28	1	2021-02-15 19:04:26.668473	\N			15	2021-02-15 19:04:26.668473	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
13	29	1	2021-02-15 19:04:35.216982	\N			15	2021-02-15 19:04:35.216982	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
7	28	1	2021-02-15 14:21:44.566724	simplecoding.dev	/new	https://api.simplecoding.dev:3000/new	1545	2021-02-15 14:21:44.566724	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
14	29	1	2021-02-15 19:05:05.356293	simplecoding.dev	/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-1a8d-temp-slug-7174285/edit	https://api.simplecoding.dev:3000/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-1a8d-temp-slug-7174285/edit	45	2021-02-15 19:05:05.356293	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
15	30	1	2021-02-15 19:12:30.326174	simplecoding.dev	/new	https://api.simplecoding.dev:3000/new	15	2021-02-15 19:12:30.326174	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
8	28	1	2021-02-15 14:47:21.176994	simplecoding.dev	/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al	https://api.simplecoding.dev:3000/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al	60	2021-02-15 14:47:21.176994	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
21	29	1	2021-02-16 05:28:58.912342	\N			330	2021-02-16 05:28:58.912342	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
17	28	1	2021-02-15 19:27:50.392106	\N			660	2021-02-15 19:27:50.392106	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
19	28	1	2021-02-15 19:51:31.718398	\N			15	2021-02-15 19:51:31.718398	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
20	28	1	2021-02-15 19:51:42.076991	\N			15	2021-02-15 19:51:42.076991	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
9	28	1	2021-02-15 14:49:48.263004	\N			1800	2021-02-15 14:49:48.263004	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
10	28	1	2021-02-15 16:05:06.985465	\N			45	2021-02-15 16:05:06.985465	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0	1
27	29	1	2021-02-16 07:28:39.154978	\N			45	2021-02-16 07:28:39.154978	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
28	29	1	2021-02-16 07:30:15.233808	\N			15	2021-02-16 07:30:15.233808	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
30	29	1	2021-02-16 07:39:46.562424	simplecoding.dev	/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	https://api.simplecoding.dev:3000/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	30	2021-02-16 07:39:46.562424	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
31	29	1	2021-02-16 07:40:11.459983	simplecoding.dev	/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	https://api.simplecoding.dev:3000/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	45	2021-02-16 07:40:11.459983	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
32	29	1	2021-02-16 07:40:51.867337	simplecoding.dev	/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	https://api.simplecoding.dev:3000/nilmadhab/leetcode-1047-remove-all-adjacent-duplicates-in-string-solution-3iia/edit	15	2021-02-16 07:40:51.867337	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
44	30	1	2021-02-17 08:29:18.842726	\N			15	2021-02-17 08:29:18.842726	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
33	28	1	2021-02-16 07:55:39.300221	\N			45	2021-02-16 07:55:39.300221	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
40	28	1	2021-02-16 08:03:00.630795	simplecoding.dev	/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	https://api.simplecoding.dev:3000/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	300	2021-02-16 08:03:00.630795	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
37	28	1	2021-02-16 07:59:09.952222	\N			30	2021-02-16 07:59:09.952222	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
38	28	1	2021-02-16 08:00:35.574361	simplecoding.dev	/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	https://api.simplecoding.dev:3000/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	15	2021-02-16 08:00:35.574361	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
39	28	1	2021-02-16 08:01:10.086108	simplecoding.dev	/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	https://api.simplecoding.dev:3000/nilmadhab/let-s-develop-an-online-code-editor-compiler-like-hackerrank-1al/edit	90	2021-02-16 08:01:10.086108	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36	1
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.pages (id, body_html, body_json, body_markdown, created_at, description, is_top_level_path, processed_html, slug, social_image, template, title, updated_at) FROM stdin;
1	\N	\N	```ruby\nAut.\n```	2021-02-10 13:39:04.642403	My lord, I suspect an incredible secret has been kept on this planet: that the Fremen exist in vast numbers - vast. And it is they who control Arrakis.	f	<div class="highlight js-code-highlight">\n<pre class="highlight ruby"><code><span class="no">Aut</span><span class="o">.</span>\n</code></pre>\n<div class="highlight__panel js-actions-panel">\n<div class="highlight__panel-action js-fullscreen-code-action">\n    <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewbox="0 0 24 24" class="highlight-action crayons-icon highlight-action--fullscreen-on"><title>Enter fullscreen mode</title>\n    <path d="M16 3h6v6h-2V5h-4V3zM2 3h6v2H4v4H2V3zm18 16v-4h2v6h-6v-2h4zM4 19h4v2H2v-6h2v4z"></path>\n</svg>\n\n    <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewbox="0 0 24 24" class="highlight-action crayons-icon highlight-action--fullscreen-off"><title>Exit fullscreen mode</title>\n    <path d="M18 7h4v2h-6V3h2v4zM8 9H2V7h4V3h2v6zm10 8v4h-2v-6h6v2h-4zM8 15v6H6v-4H2v-2h6z"></path>\n</svg>\n\n</div>\n</div>\n</div>\n\n\n\n	architecto_distinctio	\N	full_within_layout	The HDD application is down, parse the primary driver so we can synthesize the RAM system!	2021-02-10 13:39:04.642403
2	\N	\N	##### Reprehenderit	2021-02-10 13:39:04.698685	Bring in that floating fat man, the Baron!	f	<h5>\n  <a name="reprehenderit" href="#reprehenderit" class="anchor">\n  </a>\n  Reprehenderit\n</h5>\n\n	quos_soluta	\N	full_within_layout	You can't index the microchip without quantifying the auxiliary RSS array!	2021-02-10 13:39:04.698685
3	\N	\N	_Incidunt_ omnis esse. Quidem dolore corporis. Ipsam dignissimos nisi.	2021-02-10 13:39:04.740887	The spice must flow	f	<p><em>Incidunt</em> omnis esse. Quidem dolore corporis. Ipsam dignissimos nisi.</p>\n\n	vel-assumenda	\N	full_within_layout	You can't bypass the card without generating the neural AI protocol!	2021-02-10 13:39:04.740887
4	\N	\N	0. Eos. \n1. Amet. \n2. Quia. \n	2021-02-10 13:39:04.788288	There is no escape — we pay for the violence of our ancestors.	f	<ol>\n<li>Eos. </li>\n<li>Amet. </li>\n<li>Quia. </li>\n</ol>\n\n	qui_maiores	\N	contained	If we navigate the capacitor, we can get to the EXE microchip through the open-source FTP monitor!	2021-02-10 13:39:04.788288
5	\N	\N	```ruby\nQuisquam.\n```	2021-02-10 13:39:04.841572	To save one from a mistake is a gift of paradise.	f	<div class="highlight js-code-highlight">\n<pre class="highlight ruby"><code><span class="no">Quisquam</span><span class="o">.</span>\n</code></pre>\n<div class="highlight__panel js-actions-panel">\n<div class="highlight__panel-action js-fullscreen-code-action">\n    <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewbox="0 0 24 24" class="highlight-action crayons-icon highlight-action--fullscreen-on"><title>Enter fullscreen mode</title>\n    <path d="M16 3h6v6h-2V5h-4V3zM2 3h6v2H4v4H2V3zm18 16v-4h2v6h-6v-2h4zM4 19h4v2H2v-6h2v4z"></path>\n</svg>\n\n    <svg xmlns="http://www.w3.org/2000/svg" width="20px" height="20px" viewbox="0 0 24 24" class="highlight-action crayons-icon highlight-action--fullscreen-off"><title>Exit fullscreen mode</title>\n    <path d="M18 7h4v2h-6V3h2v4zM8 9H2V7h4V3h2v6zm10 8v4h-2v-6h6v2h-4zM8 15v6H6v-4H2v-2h6z"></path>\n</svg>\n\n</div>\n</div>\n</div>\n\n\n\n	reiciendis_impedit	\N	contained	I'll synthesize the solid state SDD panel, that should application the JSON firewall!	2021-02-10 13:39:04.841572
\.


--
-- Data for Name: podcast_episode_appearances; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.podcast_episode_appearances (id, approved, created_at, featured_on_user_profile, podcast_episode_id, role, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: podcast_episodes; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.podcast_episodes (id, any_comments_hidden, body, comments_count, created_at, duration_in_seconds, guid, https, image, itunes_url, media_url, podcast_id, processed_html, published_at, quote, reachable, reactions_count, slug, social_image, status_notice, subtitle, summary, title, updated_at, website_url) FROM stdin;
\.


--
-- Data for Name: podcast_ownerships; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.podcast_ownerships (id, created_at, podcast_id, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: podcasts; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.podcasts (id, android_url, created_at, creator_id, description, feed_url, image, itunes_url, main_color_hex, overcast_url, pattern_image, published, reachable, slug, soundcloud_url, status_notice, title, twitter_username, "unique_website_url?", updated_at, website_url) FROM stdin;
\.


--
-- Data for Name: poll_options; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.poll_options (id, created_at, markdown, poll_id, poll_votes_count, processed_html, updated_at) FROM stdin;
\.


--
-- Data for Name: poll_skips; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.poll_skips (id, created_at, poll_id, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: poll_votes; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.poll_votes (id, created_at, poll_id, poll_option_id, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: polls; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.polls (id, article_id, created_at, poll_options_count, poll_skips_count, poll_votes_count, prompt_html, prompt_markdown, updated_at) FROM stdin;
\.


--
-- Data for Name: profile_field_groups; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.profile_field_groups (id, created_at, description, name, updated_at) FROM stdin;
1	2021-02-10 13:38:41.823269	\N	Basic	2021-02-10 13:38:41.823269
2	2021-02-10 13:38:42.028841	\N	Links	2021-02-10 13:38:42.028841
3	2021-02-10 13:38:42.452132	\N	Work	2021-02-10 13:38:42.452132
4	2021-02-10 13:38:42.631372	\N	Coding	2021-02-10 13:38:42.631372
5	2021-02-10 13:38:42.733923	\N	Branding	2021-02-10 13:38:42.733923
\.


--
-- Data for Name: profile_fields; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.profile_fields (id, attribute_name, created_at, description, display_area, input_type, label, placeholder_text, profile_field_group_id, show_in_onboarding, updated_at) FROM stdin;
1	display_email_on_profile	2021-02-10 13:38:41.884716	\N	2	2	Display email on profile	\N	1	f	2021-02-10 13:38:41.884716
2	website_url	2021-02-10 13:38:41.914716	\N	2	0	Website URL	https://yoursite.com	1	t	2021-02-10 13:38:41.914716
4	location	2021-02-10 13:38:42.008544	\N	0	0	Location	Halifax, Nova Scotia	1	t	2021-02-10 13:38:42.008544
5	facebook_url	2021-02-10 13:38:42.050925	\N	2	0	Facebook URL	https://facebook.com/...	2	f	2021-02-10 13:38:42.050925
6	youtube_url	2021-02-10 13:38:42.078469	\N	2	0	Youtube URL	https://www.youtube.com/channel/...	2	f	2021-02-10 13:38:42.078469
7	stack_overflow_url	2021-02-10 13:38:42.11135	\N	2	0	StackOverflow URL	https://stackoverflow.com/users/...	2	f	2021-02-10 13:38:42.11135
8	linked_in_url	2021-02-10 13:38:42.156161	\N	2	0	LinkedIn URL	https://www.linkedin.com/in/...	2	f	2021-02-10 13:38:42.156161
9	behance_url	2021-02-10 13:38:42.191138	\N	2	0	Behance URL	https://www.behance.net/...	2	f	2021-02-10 13:38:42.191138
10	dribbble_url	2021-02-10 13:38:42.228643	\N	2	0	Dribbble URL	https://dribbble.com/...	2	f	2021-02-10 13:38:42.228643
11	medium_url	2021-02-10 13:38:42.279944	\N	2	0	Medium URL	https://medium.com/@...	2	f	2021-02-10 13:38:42.279944
12	git_lab_url	2021-02-10 13:38:42.318951	\N	2	0	GitLab URL	https://gitlab.com/...	2	f	2021-02-10 13:38:42.318951
13	instagram_url	2021-02-10 13:38:42.357958	\N	2	0	Instagram URL	https://www.instagram.com/...	2	f	2021-02-10 13:38:42.357958
14	mastodon_url	2021-02-10 13:38:42.384523	\N	2	0	Mastodon URL	https://...	2	f	2021-02-10 13:38:42.384523
15	twitch_url	2021-02-10 13:38:42.42354	\N	2	0	Twitch URL	https://www.twitch.tv/...	2	f	2021-02-10 13:38:42.42354
16	education	2021-02-10 13:38:42.487522	\N	0	0	Education	\N	3	f	2021-02-10 13:38:42.487522
18	employer_url	2021-02-10 13:38:42.595481	\N	0	0	Employer URL	https://dev.com	3	f	2021-02-10 13:38:42.595481
20	skills_languages	2021-02-10 13:38:42.650171	What tools and languages are you most experienced with? Are you specialized or more of a generalist?	1	1	Skills/Languages	\N	4	f	2021-02-10 13:38:42.650171
21	currently_learning	2021-02-10 13:38:42.670939	What are you learning right now? What are the new tools and languages you're picking up right now?	1	1	Currently learning	\N	4	f	2021-02-10 13:38:42.670939
22	currently_hacking_on	2021-02-10 13:38:42.691118	What projects are currently occupying most of your time?	1	1	Currently hacking on	\N	4	f	2021-02-10 13:38:42.691118
23	available_for	2021-02-10 13:38:42.714832	What kinds of collaborations or discussions are you available for? What's a good reason to say Hey! to you these days?	1	1	Available for	\N	4	f	2021-02-10 13:38:42.714832
24	brand_color1	2021-02-10 13:38:42.752857	Used for backgrounds, borders etc.	2	3	Brand color 1	#000000	5	f	2021-02-10 13:38:42.752857
25	brand_color2	2021-02-10 13:38:42.776437	Used for texts (usually put on Brand color 1).	2	3	Brand color 2	#000000	5	f	2021-02-10 13:38:42.776437
3	summary	2021-02-10 13:38:41.963297	\N	2	1	Bio	A short bio...	1	t	2021-02-10 13:39:26.072301
19	employment_title	2021-02-10 13:38:42.613867	\N	0	0	Employer title	Junior Frontend Engineer	3	t	2021-02-10 13:39:26.110279
17	employer_name	2021-02-10 13:38:42.574483	\N	0	0	Employer name	Acme Inc.	3	t	2021-02-10 13:39:26.132808
26	summary	2021-02-10 13:39:31.018589	\N	0	1	Summary	A short bio...	1	t	2021-02-10 13:39:31.018589
\.


--
-- Data for Name: profile_pins; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.profile_pins (id, created_at, pinnable_id, pinnable_type, profile_id, profile_type, updated_at) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.profiles (id, created_at, data, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: rating_votes; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.rating_votes (id, article_id, context, created_at, "group", rating, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: reactions; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.reactions (id, category, created_at, points, reactable_id, reactable_type, status, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: response_templates; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.response_templates (id, content, content_type, created_at, title, type_of, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.roles (id, created_at, name, resource_id, resource_type, updated_at) FROM stdin;
1	2021-02-10 13:38:43.682384	trusted	\N	\N	2021-02-10 13:38:43.682384
2	2021-02-10 13:38:44.372007	workshop_pass	\N	\N	2021-02-10 13:38:44.372007
3	2021-02-10 13:38:45.882564	chatroom_beta_tester	\N	\N	2021-02-10 13:38:45.882564
4	2021-02-10 13:38:49.54451	super_admin	\N	\N	2021-02-10 13:38:49.54451
5	2021-02-10 13:38:49.61321	single_resource_admin	\N	Config	2021-02-10 13:38:49.61321
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.schema_migrations (version) FROM stdin;
20210121102114
20151224175814
20151224180956
20151226205806
20151231095411
20151231102537
20160101145545
20160101170140
20160104220657
20160104221355
20160104222032
20160104223954
20160104225041
20160105211934
20160111153315
20160115190444
20160120012230
20160124203153
20160124205229
20160125202948
20160126145035
20160126152212
20160128215217
20160129154529
20160131213109
20160131213110
20160131213111
20160131213112
20160131213113
20160131234917
20160201001953
20160201002243
20160201012919
20160201014516
20160202211114
20160202214951
20160203005540
20160203011021
20160203233256
20160206011647
20160211170239
20160214023247
20160226193243
20160304000325
20160304010353
20160304011144
20160309155009
20160310024038
20160317190829
20160317190838
20160318195259
20160322214055
20160323233659
20160324231938
20160329004330
20160401203746
20160418001613
20160428002923
20160503004547
20160505014825
20160510022025
20160517144259
20160517144335
20160518202957
20160525190703
20160525192526
20160602140503
20160610135858
20160610145259
20160610155109
20160703135819
20160713202608
20160726230520
20160801212954
20160809182110
20160810191937
20160819025830
20160905190604
20160908145640
20160908151357
20160926154138
20160926164412
20161013195522
20161018201530
20161124212209
20161208193428
20161211234357
20161212161130
20161213212554
20161216165302
20161219173922
20161223053926
20161226180959
20161228210927
20161229054605
20170105141344
20170110154028
20170110170105
20170119193031
20170127194840
20170206214820
20170206220334
20170208152018
20170209164016
20170213183337
20170216145500
20170228174838
20170302152930
20170303171502
20170303180353
20170309162937
20170310003608
20170317171912
20170325040822
20170330184420
20170330222954
20170403135236
20170411145225
20170502162438
20170505210243
20170517172352
20170521154826
20170523210349
20170524160535
20170531150807
20170531151548
20170602152759
20170607191629
20170610142132
20170613193616
20170615172623
20170615172941
20170616191722
20170619151747
20170620145442
20170620212740
20170622191911
20170626211738
20170627205501
20170706212815
20170711195143
20170717214026
20170718150429
20170718174233
20170719184042
20170719211212
20170725171619
20170727002902
20170727153841
20170802204604
20170804193835
20170809182148
20170821154300
20170828165505
20170829164950
20170829190632
20170831180005
20170831200650
20170905170750
20170912012249
20170920160022
20170921205230
20170921221837
20171002180944
20171002195852
20171003191547
20171003222833
20171004025750
20171012215224
20171013180013
20171019152130
20171019215638
20171020160338
20171024171916
20171024193812
20171026214850
20171030214855
20171103165851
20171104014225
20171106203902
20171110215815
20171110223810
20171116191214
20171116203319
20171204171217
20171229192205
20180103183451
20180107004333
20180110012012
20180111170406
20180115221125
20180130192627
20180131183322
20180202171402
20180208210732
20180209174729
20180210161930
20180212153228
20180213165354
20180303210932
20180304151124
20180316143921
20180316164921
20180316174324
20180321170500
20180328194237
20180328194253
20180427160903
20180502152520
20180502152621
20180502160428
20180502174301
20180502213919
20180507191509
20180508165244
20180508170132
20180508200948
20180516173047
20180516184437
20180522195341
20180531194107
20180601145801
20180601195848
20180603160906
20180604200603
20180606155327
20180608195204
20180609191539
20180612214259
20180622173538
20180624230435
20180629201047
20180703142743
20180705194536
20180707162348
20180713180709
20180716182629
20180728201801
20180806142338
20180816165158
20180821204032
20180824191849
20180826174411
20180905013458
20180924201325
20180924204406
20180928161837
20180930015157
20181001225906
20181003173949
20181005180705
20181005200827
20181008174839
20181010204910
20181016181008
20181019195746
20181020195949
20181020195954
20181026112019
20181026214021
20181111040732
20181116223239
20181117145537
20181120170350
20181127173004
20181129222416
20181130224531
20181219215401
20181227192353
20190109212351
20190115155656
20190121172642
20190121191754
20190129173611
20190129190135
20190206164319
20190206222055
20190216185753
20190227163543
20190227163803
20190305221008
20190306082543
20190315151829
20190315222044
20190318223433
20190326085046
20190327090030
20190329103059
20190401100844
20190401100850
20190401193017
20190401213605
20190402224426
20190404102732
20190405190915
20190409123750
20190410124957
20190412093614
20190415194929
20190417171019
20190417171020
20190420000607
20190425210432
20190430123156
20190501141654
20190501180125
20190501191830
20190502165056
20190504015859
20190504131412
20190521190118
20190524214445
20190525233909
20190525233918
20190525233934
20190531085252
20190531094609
20190531094926
20190603190201
20190606202826
20190607110030
20190611102309
20190611102923
20190611144112
20190611195955
20190612095748
20190612095959
20190612174127
20190614093041
20190616024727
20190616053854
20190617101811
20190617102149
20190619153428
20190624093012
20190625143841
20190626022355
20190626221336
20190628123548
20190702194019
20190703003817
20190704082551
20190704091636
20190704105143
20190705111810
20190705114625
20190708105607
20190709192214
20190710081915
20190711070019
20190711093610
20190713213412
20190713225409
20190717220437
20190717224405
20190723094834
20190801083510
20190801132654
20190818191954
20190819104106
20190822162434
20190827163358
20190906193806
20190910153845
20190918104106
20190925171050
20190925193205
20191016135034
20191025185619
20191025202354
20191031131016
20191106095242
20191106102826
20191108153914
20191203114809
20191203160028
20191203171558
20191210144342
20191215145706
20191220120243
20191223202251
20191226202114
20191227113154
20191227114543
20200106074859
20200117135558
20200117135902
20200119214529
20200120053525
20200125204226
20200205225813
20200211192415
20200212164359
20200213182938
20200221170905
20200221184007
20200222164815
20200224153122
20200225104037
20200226081611
20200226192145
20200226205549
20200226210111
20200227214321
20200303222558
20200304164719
20200304220534
20200308144606
20200311170959
20200324113133
20200324170819
20200326110404
20200326111645
20200329103305
20200331155903
20200403203054
20200405103927
20200407081312
20200407083405
20200407083732
20200407084807
20200407090218
20200407090914
20200407091449
20200409043946
20200409050122
20200411085952
20200412194408
20200420130910
20200426124118
20200427094852
20200427233631
20200501032629
20200504075409
20200511224704
20200514162708
20200514163014
20200514212601
20200515085746
20200519220213
20200520091835
20200520092247
20200520092613
20200520092938
20200520092951
20200521103848
20200521103911
20200521103935
20200521103952
20200521153435
20200525115740
20200525120420
20200525120642
20200525125611
20200526144234
20200526145731
20200526151431
20200526151807
20200527161505
20200530084533
20200601121243
20200602174329
20200604133925
20200605170430
20200605183117
20200608175130
20200609191943
20200609192545
20200609195523
20200612140153
20200615213003
20200616200005
20200617014320
20200617014509
20200617183058
20200618212422
20200702143618
20200706184804
20200707170245
20200707173316
20200707173524
20200710174257
20200712150048
20200716125857
20200717203432
20200717220654
20200719205123
20200720143134
20200720213710
20200721213341
20200723180841
20200723203155
20200725215546
20200726215928
20200727052235
20200727163200
20200731033002
20200731041554
20200803193841
20200804035648
20200805050048
20200805100552
20200805102249
20200806052718
20200806193438
20200809200631
20200811044202
20200813031851
20200813042118
20200814142425
20200814142648
20200817205048
20200818101637
20200818101700
20200818163445
20200818163834
20200818202007
20200819162917
20200820055018
20200820093731
20200820093752
20200821035520
20200822092853
20200826072259
20200826072722
20200826131359
20200826132009
20200826132639
20200827073520
20200828032013
20200828045600
20200901084210
20200902132326
20200902204028
20200904040009
20200904151734
20200910155145
20200910205316
20200911140318
20200914143753
20200914144033
20200914144157
20200914145500
20200917114525
20200917141134
20200917141154
20200917154147
20200917154234
20200917154256
20200917154306
20200918200231
20200921160153
20201001154006
20201002102257
20201002102303
20201002104711
20201005181510
20201007085440
20201007091041
20201009040438
20201012072557
20201017160628
20201019012200
20201107111600
20201114130315
20201114151157
20201119153512
20201203063435
20201208195636
20210105183127
20210108031718
20210111045049
20210111151630
\.


--
-- Data for Name: site_configs; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.site_configs (id, created_at, updated_at, value, var) FROM stdin;
1	2021-02-10 13:38:38.151507	2021-02-10 13:38:38.151507	--- true\n...\n	public
2	2021-02-10 13:38:38.167531	2021-02-10 13:38:38.167531	--- false\n...\n	waiting_on_first_user
4	2021-02-10 13:39:30.669465	2021-02-10 13:39:30.669465	--- 7e87217407a860188d5c\n...\n	health_check_token
3	2021-02-10 13:39:26.428676	2021-02-10 14:31:27.207461	--- Simple Coding\n...\n	community_name
5	2021-02-10 14:31:27.234412	2021-02-10 14:31:27.234412	--- For Developers\n...\n	community_description
6	2021-02-10 14:31:27.265368	2021-02-10 14:31:27.265368	---\n- java\n	suggested_tags
7	2021-02-10 14:31:27.294581	2021-02-10 14:32:01.63569	---\n- nilmadhab1994@gmail.com\n	suggested_users
8	2021-02-10 14:31:27.546957	2021-02-10 14:32:01.832584	--- !ruby/object:ActiveSupport::TimeWithZone\nutc: &1 2021-02-10 14:32:01.828291953 Z\nzone: !ruby/object:ActiveSupport::TimeZone\n  name: Etc/UTC\ntime: *1\n	admin_action_taken_at
\.


--
-- Data for Name: sponsorships; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.sponsorships (id, blurb_html, created_at, expires_at, featured_number, instructions, instructions_updated_at, level, organization_id, sponsorable_id, sponsorable_type, status, tagline, updated_at, url, user_id) FROM stdin;
\.


--
-- Data for Name: tag_adjustments; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.tag_adjustments (id, adjustment_type, article_id, created_at, reason_for_adjustment, status, tag_id, tag_name, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.taggings (id, context, created_at, tag_id, taggable_id, taggable_type, tagger_id, tagger_type) FROM stdin;
1	tags	2021-02-10 13:38:50.7705	13	1	Article	\N	\N
2	tags	2021-02-10 13:38:50.790734	6	1	Article	\N	\N
3	tags	2021-02-10 13:38:50.809709	2	1	Article	\N	\N
4	tags	2021-02-10 13:38:50.831371	1	1	Article	\N	\N
5	tags	2021-02-10 13:38:51.118716	2	2	Article	\N	\N
6	tags	2021-02-10 13:38:51.136712	11	2	Article	\N	\N
7	tags	2021-02-10 13:38:51.15532	1	2	Article	\N	\N
8	tags	2021-02-10 13:38:51.307912	4	3	Article	\N	\N
9	tags	2021-02-10 13:38:51.329573	13	3	Article	\N	\N
10	tags	2021-02-10 13:38:51.350297	7	3	Article	\N	\N
11	tags	2021-02-10 13:38:51.52475	13	4	Article	\N	\N
12	tags	2021-02-10 13:38:51.545815	3	4	Article	\N	\N
13	tags	2021-02-10 13:38:51.566232	1	4	Article	\N	\N
14	tags	2021-02-10 13:38:51.711526	3	5	Article	\N	\N
15	tags	2021-02-10 13:38:51.733383	13	5	Article	\N	\N
16	tags	2021-02-10 13:38:51.755547	2	5	Article	\N	\N
17	tags	2021-02-10 13:38:51.961502	2	6	Article	\N	\N
18	tags	2021-02-10 13:38:51.982436	9	6	Article	\N	\N
19	tags	2021-02-10 13:38:52.003766	12	6	Article	\N	\N
20	tags	2021-02-10 13:38:52.174142	13	7	Article	\N	\N
21	tags	2021-02-10 13:38:52.195728	3	7	Article	\N	\N
22	tags	2021-02-10 13:38:52.213493	9	7	Article	\N	\N
23	tags	2021-02-10 13:38:52.233909	8	7	Article	\N	\N
24	tags	2021-02-10 13:38:52.386179	7	8	Article	\N	\N
25	tags	2021-02-10 13:38:52.406335	6	8	Article	\N	\N
26	tags	2021-02-10 13:38:52.428092	1	8	Article	\N	\N
27	tags	2021-02-10 13:38:52.602808	9	9	Article	\N	\N
28	tags	2021-02-10 13:38:52.62523	12	9	Article	\N	\N
29	tags	2021-02-10 13:38:52.648448	11	9	Article	\N	\N
30	tags	2021-02-10 13:38:52.85698	13	10	Article	\N	\N
31	tags	2021-02-10 13:38:52.888778	3	10	Article	\N	\N
32	tags	2021-02-10 13:38:52.921937	7	10	Article	\N	\N
33	tags	2021-02-10 13:38:52.952749	2	10	Article	\N	\N
34	tags	2021-02-10 13:38:53.132573	7	11	Article	\N	\N
35	tags	2021-02-10 13:38:53.15413	13	11	Article	\N	\N
36	tags	2021-02-10 13:38:53.17594	11	11	Article	\N	\N
37	tags	2021-02-10 13:38:53.389843	7	12	Article	\N	\N
38	tags	2021-02-10 13:38:53.415885	4	12	Article	\N	\N
39	tags	2021-02-10 13:38:53.438772	11	12	Article	\N	\N
40	tags	2021-02-10 13:38:53.635	13	13	Article	\N	\N
41	tags	2021-02-10 13:38:53.660244	2	13	Article	\N	\N
42	tags	2021-02-10 13:38:53.685865	1	13	Article	\N	\N
43	tags	2021-02-10 13:38:53.709174	7	13	Article	\N	\N
44	tags	2021-02-10 13:38:53.981531	6	14	Article	\N	\N
45	tags	2021-02-10 13:38:54.001156	5	14	Article	\N	\N
46	tags	2021-02-10 13:38:54.021984	12	14	Article	\N	\N
47	tags	2021-02-10 13:38:54.169741	2	15	Article	\N	\N
48	tags	2021-02-10 13:38:54.189413	6	15	Article	\N	\N
49	tags	2021-02-10 13:38:54.209535	8	15	Article	\N	\N
50	tags	2021-02-10 13:38:54.367243	13	16	Article	\N	\N
51	tags	2021-02-10 13:38:54.387572	7	16	Article	\N	\N
52	tags	2021-02-10 13:38:54.408919	12	16	Article	\N	\N
53	tags	2021-02-10 13:38:54.560468	12	17	Article	\N	\N
54	tags	2021-02-10 13:38:54.580653	13	17	Article	\N	\N
55	tags	2021-02-10 13:38:54.601413	5	17	Article	\N	\N
56	tags	2021-02-10 13:38:54.762501	6	18	Article	\N	\N
57	tags	2021-02-10 13:38:54.78043	4	18	Article	\N	\N
58	tags	2021-02-10 13:38:54.800133	2	18	Article	\N	\N
59	tags	2021-02-10 13:38:54.945024	13	19	Article	\N	\N
60	tags	2021-02-10 13:38:54.965468	2	19	Article	\N	\N
61	tags	2021-02-10 13:38:54.986404	9	19	Article	\N	\N
62	tags	2021-02-10 13:38:55.00707	3	19	Article	\N	\N
63	tags	2021-02-10 13:38:55.171975	2	20	Article	\N	\N
64	tags	2021-02-10 13:38:55.195992	9	20	Article	\N	\N
65	tags	2021-02-10 13:38:55.215766	6	20	Article	\N	\N
66	tags	2021-02-10 13:38:55.369938	1	21	Article	\N	\N
67	tags	2021-02-10 13:38:55.393181	8	21	Article	\N	\N
68	tags	2021-02-10 13:38:55.41458	5	21	Article	\N	\N
69	tags	2021-02-10 13:38:55.596051	13	22	Article	\N	\N
70	tags	2021-02-10 13:38:55.615271	4	22	Article	\N	\N
71	tags	2021-02-10 13:38:55.634045	7	22	Article	\N	\N
72	tags	2021-02-10 13:38:55.652975	3	22	Article	\N	\N
73	tags	2021-02-10 13:38:55.786794	9	23	Article	\N	\N
74	tags	2021-02-10 13:38:55.80154	4	23	Article	\N	\N
75	tags	2021-02-10 13:38:55.816118	1	23	Article	\N	\N
76	tags	2021-02-10 13:38:55.959741	13	24	Article	\N	\N
77	tags	2021-02-10 13:38:55.97937	7	24	Article	\N	\N
78	tags	2021-02-10 13:38:55.99758	4	24	Article	\N	\N
79	tags	2021-02-10 13:38:56.146159	13	25	Article	\N	\N
80	tags	2021-02-10 13:38:56.164706	9	25	Article	\N	\N
81	tags	2021-02-10 13:38:56.184271	12	25	Article	\N	\N
82	tags	2021-02-10 13:38:56.203258	10	25	Article	\N	\N
83	tags	2021-02-10 13:39:00.52622	14	26	Article	\N	\N
84	tags	2021-02-10 13:39:03.441112	4	1	Listing	\N	\N
85	tags	2021-02-10 13:39:03.461719	8	1	Listing	\N	\N
86	tags	2021-02-10 13:39:03.538391	3	2	Listing	\N	\N
87	tags	2021-02-10 13:39:03.559699	11	2	Listing	\N	\N
88	tags	2021-02-10 13:39:03.633679	3	3	Listing	\N	\N
89	tags	2021-02-10 13:39:03.648429	12	3	Listing	\N	\N
90	tags	2021-02-10 13:39:03.713111	4	4	Listing	\N	\N
91	tags	2021-02-10 13:39:03.735625	1	4	Listing	\N	\N
92	tags	2021-02-10 13:39:03.820549	9	5	Listing	\N	\N
93	tags	2021-02-10 13:39:03.846368	10	5	Listing	\N	\N
94	tags	2021-02-10 13:39:03.925617	3	6	Listing	\N	\N
95	tags	2021-02-10 13:39:03.945256	12	6	Listing	\N	\N
96	tags	2021-02-10 13:39:04.021441	4	7	Listing	\N	\N
97	tags	2021-02-10 13:39:04.042944	5	7	Listing	\N	\N
98	tags	2021-02-10 13:39:04.12141	6	8	Listing	\N	\N
99	tags	2021-02-10 13:39:04.167847	2	8	Listing	\N	\N
100	tags	2021-02-10 13:39:04.239	13	9	Listing	\N	\N
101	tags	2021-02-10 13:39:04.259982	8	9	Listing	\N	\N
102	tags	2021-02-10 13:39:04.33418	14	10	Listing	\N	\N
103	tags	2021-02-10 13:39:04.359048	3	10	Listing	\N	\N
104	tags	2021-02-10 13:39:04.434285	10	11	Listing	\N	\N
105	tags	2021-02-10 13:39:04.455836	13	11	Listing	\N	\N
106	tags	2021-02-10 13:39:04.536062	13	12	Listing	\N	\N
107	tags	2021-02-10 13:39:04.557039	5	12	Listing	\N	\N
110	tags	2021-02-15 14:21:39.217181	17	28	Article	\N	\N
111	tags	2021-02-15 14:21:39.236403	7	28	Article	\N	\N
112	tags	2021-02-15 19:12:23.694937	2	30	Article	\N	\N
113	tags	2021-02-15 19:12:23.748712	18	30	Article	\N	\N
114	tags	2021-02-15 19:12:23.788287	19	30	Article	\N	\N
115	tags	2021-02-15 19:12:23.827184	3	30	Article	\N	\N
116	tags	2021-02-15 19:20:19.789327	18	31	Article	\N	\N
117	tags	2021-02-15 19:20:19.808731	3	31	Article	\N	\N
118	tags	2021-02-15 19:20:19.826399	19	31	Article	\N	\N
119	tags	2021-02-15 19:20:19.844889	2	31	Article	\N	\N
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.tags (id, alias_for, badge_id, bg_color_hex, buffer_profile_id_code, category, created_at, hotness_score, keywords_for_search, mod_chat_channel_id, name, pretty_name, profile_image, requires_approval, rules_html, rules_markdown, short_summary, social_image, social_preview_template, submission_template, supported, taggings_count, text_color_hex, updated_at, wiki_body_html, wiki_body_markdown) FROM stdin;
17	\N	\N	\N	\N	uncategorized	2021-02-15 14:21:39.195689	0	\N	\N	code	\N	\N	f	\N	\N	\N	\N	article	\N	f	1	\N	2021-02-15 14:21:39.195689	\N	\N
18	\N	\N	\N	\N	uncategorized	2021-02-15 19:12:23.634485	0	\N	\N	programming	\N	\N	f	\N	\N	\N	\N	article	\N	f	2	\N	2021-02-15 19:12:23.634485	\N	\N
19	\N	\N	\N	\N	uncategorized	2021-02-15 19:12:23.650066	0	\N	\N	algorithms	\N	\N	f	\N	\N	\N	\N	article	\N	f	2	\N	2021-02-15 19:12:23.650066	\N	\N
15	\N	\N	\N	\N	uncategorized	2021-02-11 04:40:48.546484	0	\N	\N	ruby	\N	\N	f	\N	\N	\N	\N	article	\N	f	0	\N	2021-02-11 04:40:48.546484	\N	\N
16	\N	\N	\N	\N	uncategorized	2021-02-11 04:40:48.559132	0	\N	\N	rails	\N	\N	f	\N	\N	\N	\N	article	\N	f	0	\N	2021-02-11 04:40:48.559132	\N	\N
1	\N	\N	#61997b	\N	uncategorized	2021-02-10 13:38:49.788005	0	\N	\N	beginners	\N	\N	f	\N	\N	\N	\N	article	\N	t	8	#8845a8	2021-02-17 00:25:07.152994	\N	\N
2	\N	\N	#a98d63	\N	uncategorized	2021-02-10 13:38:49.823055	7	\N	\N	career	\N	\N	f	\N	\N	\N	\N	article	\N	t	13	#07b782	2021-02-17 00:25:07.211928	\N	\N
3	\N	\N	#62820b	\N	uncategorized	2021-02-10 13:38:49.84671	10	\N	\N	computerscience	\N	\N	f	\N	\N	\N	\N	article	\N	t	12	#e75d45	2021-02-17 00:25:07.261364	\N	\N
13	\N	\N	\N	\N	uncategorized	2021-02-10 13:38:50.738004	346	\N	\N	discuss	\N	\N	f	\N	\N	\N	\N	article	\N	f	17	\N	2021-02-10 13:39:16.07412	\N	\N
14	\N	\N	\N	\N	uncategorized	2021-02-10 13:39:00.474006	2	\N	\N	welcome	\N	\N	f	\N	\N	\N	\N	article	\N	f	2	\N	2021-02-10 13:39:16.110599	\N	\N
4	\N	\N	#827376	\N	uncategorized	2021-02-10 13:38:49.876457	0	\N	\N	git	\N	\N	f	\N	\N	\N	\N	article	\N	t	9	#128265	2021-02-17 00:25:07.333532	\N	\N
5	\N	\N	#30c178	\N	uncategorized	2021-02-10 13:38:49.908294	0	\N	\N	go	\N	\N	f	\N	\N	\N	\N	article	\N	t	5	#d7bfd4	2021-02-17 00:25:07.382312	\N	\N
6	\N	\N	#e3cca0	\N	uncategorized	2021-02-10 13:38:49.93958	0	\N	\N	java	\N	\N	f	\N	\N	\N	\N	article	\N	t	7	#a3f13a	2021-02-17 00:25:07.437947	\N	\N
7	\N	\N	#855441	\N	uncategorized	2021-02-10 13:38:49.970174	8	\N	\N	javascript	\N	\N	f	\N	\N	\N	\N	article	\N	t	10	#2060ed	2021-02-17 00:25:07.493299	\N	\N
8	\N	\N	#395910	\N	uncategorized	2021-02-10 13:38:50.033477	0	\N	\N	linux	\N	\N	f	\N	\N	\N	\N	article	\N	t	5	#6fad55	2021-02-17 00:25:07.544885	\N	\N
9	\N	\N	#ba014a	\N	uncategorized	2021-02-10 13:38:50.066355	0	\N	\N	productivity	\N	\N	f	\N	\N	\N	\N	article	\N	t	8	#e68570	2021-02-17 00:25:07.593979	\N	\N
10	\N	\N	#3a2464	\N	uncategorized	2021-02-10 13:38:50.0979	0	\N	\N	python	\N	\N	f	\N	\N	\N	\N	article	\N	t	3	#c819b1	2021-02-17 00:25:07.64649	\N	\N
11	\N	\N	#fe92e7	\N	uncategorized	2021-02-10 13:38:50.136268	0	\N	\N	security	\N	\N	f	\N	\N	\N	\N	article	\N	t	5	#7d1f07	2021-02-17 00:25:07.700304	\N	\N
12	\N	\N	#f377ee	\N	uncategorized	2021-02-10 13:38:50.181728	0	\N	\N	webdev	\N	\N	f	\N	\N	\N	\N	article	\N	t	8	#64dc1b	2021-02-17 00:25:07.758535	\N	\N
\.


--
-- Data for Name: tweets; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.tweets (id, created_at, extended_entities_serialized, favorite_count, full_fetched_object_serialized, hashtags_serialized, in_reply_to_status_id_code, in_reply_to_user_id_code, in_reply_to_username, is_quote_status, last_fetched_at, media_serialized, mentioned_usernames_serialized, profile_image, quoted_tweet_id_code, retweet_count, source, text, tweeted_at, twitter_id_code, twitter_name, twitter_uid, twitter_user_followers_count, twitter_user_following_count, twitter_username, updated_at, urls_serialized, user_id, user_is_verified) FROM stdin;
\.


--
-- Data for Name: user_blocks; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.user_blocks (id, blocked_id, blocker_id, config, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_subscriptions; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.user_subscriptions (id, author_id, created_at, subscriber_email, subscriber_id, updated_at, user_subscription_sourceable_id, user_subscription_sourceable_type) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.users (id, apple_created_at, apple_username, articles_count, available_for, badge_achievements_count, behance_url, bg_color_hex, blocked_by_count, blocking_others_count, checked_code_of_conduct, checked_terms_and_conditions, comments_count, config_font, config_navbar, config_theme, confirmation_sent_at, confirmation_token, confirmed_at, created_at, credits_count, current_sign_in_at, current_sign_in_ip, currently_hacking_on, currently_learning, display_announcements, display_sponsors, dribbble_url, editor_version, education, email, email_badge_notifications, email_comment_notifications, email_community_mod_newsletter, email_connect_messages, email_digest_periodic, email_follower_notifications, email_membership_newsletter, email_mention_notifications, email_newsletter, email_public, email_tag_mod_newsletter, email_unread_notifications, employer_name, employer_url, employment_title, encrypted_password, experience_level, export_requested, exported_at, facebook_created_at, facebook_url, facebook_username, failed_attempts, feed_admin_publish_permission, feed_fetched_at, feed_mark_canonical, feed_referential_link, feed_url, following_orgs_count, following_tags_count, following_users_count, github_created_at, github_repos_updated_at, github_username, gitlab_url, inbox_guidelines, inbox_type, instagram_url, invitation_accepted_at, invitation_created_at, invitation_limit, invitation_sent_at, invitation_token, invitations_count, invited_by_id, invited_by_type, language_settings, last_article_at, last_comment_at, last_followed_at, last_moderation_notification, last_notification_activity, last_onboarding_page, last_reacted_at, last_sign_in_at, last_sign_in_ip, latest_article_updated_at, linkedin_url, location, locked_at, mastodon_url, medium_url, mobile_comment_notifications, mod_roundrobin_notifications, monthly_dues, mostly_work_with, name, old_old_username, old_username, onboarding_package_requested, organization_info_updated_at, payment_pointer, permit_adjacent_sponsors, profile_image, profile_updated_at, rating_votes_count, reaction_notifications, reactions_count, registered, registered_at, remember_created_at, remember_token, reputation_modifier, reset_password_sent_at, reset_password_token, saw_onboarding, score, secret, sign_in_count, signup_cta_variant, spent_credits_count, stackoverflow_url, stripe_id_code, subscribed_to_user_subscriptions_count, summary, text_color_hex, twitch_url, twitter_created_at, twitter_followers_count, twitter_following_count, twitter_username, unconfirmed_email, unlock_token, unspent_credits_count, updated_at, username, website_url, welcome_notifications, workshop_expiration, youtube_url) FROM stdin;
2	\N	\N	0	\N	0	\N	\N	0	0	f	f	0	default	default	default	\N	\N	2021-01-30 13:09:29.300645	2021-01-30 13:09:29.368505	0	\N	\N	\N	\N	t	t	\N	v1	\N	mascot@forem.com	t	t	f	t	f	t	f	t	f	f	f	t	\N	\N	\N	$2a$10$nWGOUn.VSyPNhA21WDn1EO2RwwEdCaKoJOyhBfEzeCeNp0vA5DuY.	\N	f	\N	\N	\N	\N	0	t	2017-01-01 05:00:00	f	t	\N	0	0	0	\N	2017-01-01 05:00:00	\N	\N	\N	private	\N	\N	\N	\N	\N	\N	0	\N	\N	{"preferred_languages": ["en"], "estimated_default_language": null}	2017-01-01 05:00:00	2017-01-01 05:00:00	\N	2017-01-01 00:00:00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	t	0	\N	Mascot	\N	\N	f	\N	\N	t	\N	2017-01-01 05:00:00	0	t	0	t	2021-01-30 13:09:29.300654	\N	\N	1	\N	\N	t	0	\N	0	\N	0	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2021-01-30 13:09:29.368505	mascot	\N	t	\N	\N
1	\N	\N	5	\N	0	\N	\N	0	0	t	t	0	default	default	default	2021-01-30 13:09:27.483255	oie39erEEkLxc_Qc9SNH	2021-01-30 13:09:27.483255	2021-01-30 13:09:27.482885	0	\N	\N	\N	\N	t	t	\N	v2	\N	nilmadhab1994@gmail.com	t	t	f	t	f	t	f	t	f	f	f	t	\N	\N	\N	$2a$10$r/s7jFbQ5khd6cfULVmdM.HdWd8xqxuUisxYAWGE6Gj1t7hQtaTmy	\N	f	\N	\N	\N	\N	0	t	2017-01-01 05:00:00	f	t	\N	0	0	1	\N	2017-01-01 05:00:00	\N	\N	\N	private	\N	\N	\N	\N	\N	\N	0	\N	\N	{"preferred_languages": ["en"], "estimated_default_language": null}	2021-02-16 06:01:37.945368	2017-01-01 05:00:00	2021-01-30 13:13:09.876199	2017-01-01 00:00:00	\N	v2: email preferences form	\N	\N	\N	2021-02-16 12:01:06.360762	\N	\N	\N	\N	\N	t	t	0	\N	nilmadhab mondal	\N	\N	f	\N	\N	t	d9b0e3b7-ad59-45d5-b516-4e8ffd0a6958.jpeg	2021-01-30 13:13:09.781449	0	t	0	t	2021-01-30 13:09:27.312823	2021-02-17 11:03:01.060129	v-VVX4JfTxkySkKz31-8	1	\N	\N	t	0	\N	0	\N	0	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2021-02-17 11:03:01.061264	nilmadhab	\N	t	\N	\N
\.


--
-- Data for Name: users_gdpr_delete_requests; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.users_gdpr_delete_requests (id, created_at, email, updated_at, user_id, username) FROM stdin;
\.


--
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.users_roles (role_id, user_id) FROM stdin;
4	1
\.


--
-- Data for Name: webhook_endpoints; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.webhook_endpoints (id, created_at, events, oauth_application_id, source, target_url, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: welcome_notifications; Type: TABLE DATA; Schema: public; Owner: contact_webtutsplus
--

COPY public.welcome_notifications (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: ahoy_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.ahoy_events_id_seq', 1, false);


--
-- Name: ahoy_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.ahoy_messages_id_seq', 10, true);


--
-- Name: ahoy_visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.ahoy_visits_id_seq', 1, false);


--
-- Name: announcements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.announcements_id_seq', 1, false);


--
-- Name: api_secrets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.api_secrets_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.articles_id_seq', 32, true);


--
-- Name: audit_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.audit_logs_id_seq', 10, true);


--
-- Name: badge_achievements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.badge_achievements_id_seq', 10, true);


--
-- Name: badges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.badges_id_seq', 5, true);


--
-- Name: banished_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.banished_users_id_seq', 1, false);


--
-- Name: blazer_audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.blazer_audits_id_seq', 1, false);


--
-- Name: blazer_checks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.blazer_checks_id_seq', 1, false);


--
-- Name: blazer_dashboard_queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.blazer_dashboard_queries_id_seq', 1, false);


--
-- Name: blazer_dashboards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.blazer_dashboards_id_seq', 1, false);


--
-- Name: blazer_queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.blazer_queries_id_seq', 1, false);


--
-- Name: broadcasts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.broadcasts_id_seq', 11, true);


--
-- Name: buffer_updates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.buffer_updates_id_seq', 1, false);


--
-- Name: chat_channel_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.chat_channel_memberships_id_seq', 9, true);


--
-- Name: chat_channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.chat_channels_id_seq', 3, true);


--
-- Name: classified_listing_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.classified_listing_categories_id_seq', 6, true);


--
-- Name: classified_listings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.classified_listings_id_seq', 12, true);


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.collections_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.comments_id_seq', 30, true);


--
-- Name: credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.credits_id_seq', 827, true);


--
-- Name: custom_profile_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.custom_profile_fields_id_seq', 1, false);


--
-- Name: data_update_scripts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.data_update_scripts_id_seq', 106, true);


--
-- Name: display_ad_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.display_ad_events_id_seq', 1, false);


--
-- Name: display_ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.display_ads_id_seq', 1, false);


--
-- Name: email_authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.email_authorizations_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.events_id_seq', 1, false);


--
-- Name: feedback_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.feedback_messages_id_seq', 2, true);


--
-- Name: field_test_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.field_test_events_id_seq', 1, false);


--
-- Name: field_test_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.field_test_memberships_id_seq', 1, false);


--
-- Name: flipper_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.flipper_features_id_seq', 1, false);


--
-- Name: flipper_gates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.flipper_gates_id_seq', 1, false);


--
-- Name: follows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.follows_id_seq', 1, false);


--
-- Name: github_issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.github_issues_id_seq', 1, false);


--
-- Name: github_repos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.github_repos_id_seq', 1, false);


--
-- Name: html_variant_successes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.html_variant_successes_id_seq', 1, false);


--
-- Name: html_variant_trials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.html_variant_trials_id_seq', 1, false);


--
-- Name: html_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.html_variants_id_seq', 1, true);


--
-- Name: identities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.identities_id_seq', 9, true);


--
-- Name: mentions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.mentions_id_seq', 1, false);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.messages_id_seq', 1, false);


--
-- Name: navigation_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.navigation_links_id_seq', 14, true);


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.notes_id_seq', 1, false);


--
-- Name: notification_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.notification_subscriptions_id_seq', 6, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.notifications_id_seq', 12, true);


--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.oauth_access_grants_id_seq', 1, false);


--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.oauth_access_tokens_id_seq', 1, false);


--
-- Name: oauth_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.oauth_applications_id_seq', 1, false);


--
-- Name: organization_memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.organization_memberships_id_seq', 9, true);


--
-- Name: organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.organizations_id_seq', 3, true);


--
-- Name: page_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.page_views_id_seq', 44, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.pages_id_seq', 5, true);


--
-- Name: podcast_episode_appearances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.podcast_episode_appearances_id_seq', 1, false);


--
-- Name: podcast_episodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.podcast_episodes_id_seq', 1, false);


--
-- Name: podcast_ownerships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.podcast_ownerships_id_seq', 1, false);


--
-- Name: podcasts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.podcasts_id_seq', 4, true);


--
-- Name: poll_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.poll_options_id_seq', 1, false);


--
-- Name: poll_skips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.poll_skips_id_seq', 1, false);


--
-- Name: poll_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.poll_votes_id_seq', 1, false);


--
-- Name: polls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.polls_id_seq', 1, false);


--
-- Name: profile_field_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.profile_field_groups_id_seq', 5, true);


--
-- Name: profile_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.profile_fields_id_seq', 26, true);


--
-- Name: profile_pins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.profile_pins_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.profiles_id_seq', 11, true);


--
-- Name: rating_votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.rating_votes_id_seq', 1, false);


--
-- Name: reactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.reactions_id_seq', 34, true);


--
-- Name: response_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.response_templates_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.roles_id_seq', 5, true);


--
-- Name: site_configs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.site_configs_id_seq', 8, true);


--
-- Name: sponsorships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.sponsorships_id_seq', 3, true);


--
-- Name: tag_adjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.tag_adjustments_id_seq', 1, false);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.taggings_id_seq', 119, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.tags_id_seq', 19, true);


--
-- Name: tweets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.tweets_id_seq', 1, false);


--
-- Name: user_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.user_blocks_id_seq', 1, false);


--
-- Name: user_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.user_subscriptions_id_seq', 1, false);


--
-- Name: users_gdpr_delete_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.users_gdpr_delete_requests_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- Name: webhook_endpoints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.webhook_endpoints_id_seq', 1, false);


--
-- Name: welcome_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: contact_webtutsplus
--

SELECT pg_catalog.setval('public.welcome_notifications_id_seq', 1, false);


--
-- Name: ahoy_events ahoy_events_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_events
    ADD CONSTRAINT ahoy_events_pkey PRIMARY KEY (id);


--
-- Name: ahoy_messages ahoy_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_messages
    ADD CONSTRAINT ahoy_messages_pkey PRIMARY KEY (id);


--
-- Name: ahoy_visits ahoy_visits_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_visits
    ADD CONSTRAINT ahoy_visits_pkey PRIMARY KEY (id);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: api_secrets api_secrets_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.api_secrets
    ADD CONSTRAINT api_secrets_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: audit_logs audit_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);


--
-- Name: badge_achievements badge_achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badge_achievements
    ADD CONSTRAINT badge_achievements_pkey PRIMARY KEY (id);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT badges_pkey PRIMARY KEY (id);


--
-- Name: banished_users banished_users_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.banished_users
    ADD CONSTRAINT banished_users_pkey PRIMARY KEY (id);


--
-- Name: blazer_audits blazer_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_audits
    ADD CONSTRAINT blazer_audits_pkey PRIMARY KEY (id);


--
-- Name: blazer_checks blazer_checks_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_checks
    ADD CONSTRAINT blazer_checks_pkey PRIMARY KEY (id);


--
-- Name: blazer_dashboard_queries blazer_dashboard_queries_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_dashboard_queries
    ADD CONSTRAINT blazer_dashboard_queries_pkey PRIMARY KEY (id);


--
-- Name: blazer_dashboards blazer_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_dashboards
    ADD CONSTRAINT blazer_dashboards_pkey PRIMARY KEY (id);


--
-- Name: blazer_queries blazer_queries_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.blazer_queries
    ADD CONSTRAINT blazer_queries_pkey PRIMARY KEY (id);


--
-- Name: broadcasts broadcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.broadcasts
    ADD CONSTRAINT broadcasts_pkey PRIMARY KEY (id);


--
-- Name: buffer_updates buffer_updates_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates
    ADD CONSTRAINT buffer_updates_pkey PRIMARY KEY (id);


--
-- Name: chat_channel_memberships chat_channel_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channel_memberships
    ADD CONSTRAINT chat_channel_memberships_pkey PRIMARY KEY (id);


--
-- Name: chat_channels chat_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channels
    ADD CONSTRAINT chat_channels_pkey PRIMARY KEY (id);


--
-- Name: classified_listing_categories classified_listing_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listing_categories
    ADD CONSTRAINT classified_listing_categories_pkey PRIMARY KEY (id);


--
-- Name: classified_listings classified_listings_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listings
    ADD CONSTRAINT classified_listings_pkey PRIMARY KEY (id);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: credits credits_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.credits
    ADD CONSTRAINT credits_pkey PRIMARY KEY (id);


--
-- Name: custom_profile_fields custom_profile_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.custom_profile_fields
    ADD CONSTRAINT custom_profile_fields_pkey PRIMARY KEY (id);


--
-- Name: data_update_scripts data_update_scripts_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.data_update_scripts
    ADD CONSTRAINT data_update_scripts_pkey PRIMARY KEY (id);


--
-- Name: display_ad_events display_ad_events_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ad_events
    ADD CONSTRAINT display_ad_events_pkey PRIMARY KEY (id);


--
-- Name: display_ads display_ads_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ads
    ADD CONSTRAINT display_ads_pkey PRIMARY KEY (id);


--
-- Name: email_authorizations email_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.email_authorizations
    ADD CONSTRAINT email_authorizations_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: feedback_messages feedback_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.feedback_messages
    ADD CONSTRAINT feedback_messages_pkey PRIMARY KEY (id);


--
-- Name: field_test_events field_test_events_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.field_test_events
    ADD CONSTRAINT field_test_events_pkey PRIMARY KEY (id);


--
-- Name: field_test_memberships field_test_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.field_test_memberships
    ADD CONSTRAINT field_test_memberships_pkey PRIMARY KEY (id);


--
-- Name: flipper_features flipper_features_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.flipper_features
    ADD CONSTRAINT flipper_features_pkey PRIMARY KEY (id);


--
-- Name: flipper_gates flipper_gates_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.flipper_gates
    ADD CONSTRAINT flipper_gates_pkey PRIMARY KEY (id);


--
-- Name: follows follows_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- Name: github_issues github_issues_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.github_issues
    ADD CONSTRAINT github_issues_pkey PRIMARY KEY (id);


--
-- Name: github_repos github_repos_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.github_repos
    ADD CONSTRAINT github_repos_pkey PRIMARY KEY (id);


--
-- Name: html_variant_successes html_variant_successes_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_successes
    ADD CONSTRAINT html_variant_successes_pkey PRIMARY KEY (id);


--
-- Name: html_variant_trials html_variant_trials_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_trials
    ADD CONSTRAINT html_variant_trials_pkey PRIMARY KEY (id);


--
-- Name: html_variants html_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variants
    ADD CONSTRAINT html_variants_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: mentions mentions_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.mentions
    ADD CONSTRAINT mentions_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: navigation_links navigation_links_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.navigation_links
    ADD CONSTRAINT navigation_links_pkey PRIMARY KEY (id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: notification_subscriptions notification_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notification_subscriptions
    ADD CONSTRAINT notification_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_grants oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_applications oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: organization_memberships organization_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organization_memberships
    ADD CONSTRAINT organization_memberships_pkey PRIMARY KEY (id);


--
-- Name: organizations organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (id);


--
-- Name: page_views page_views_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.page_views
    ADD CONSTRAINT page_views_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: podcast_episode_appearances podcast_episode_appearances_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episode_appearances
    ADD CONSTRAINT podcast_episode_appearances_pkey PRIMARY KEY (id);


--
-- Name: podcast_episodes podcast_episodes_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episodes
    ADD CONSTRAINT podcast_episodes_pkey PRIMARY KEY (id);


--
-- Name: podcast_ownerships podcast_ownerships_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_ownerships
    ADD CONSTRAINT podcast_ownerships_pkey PRIMARY KEY (id);


--
-- Name: podcasts podcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcasts
    ADD CONSTRAINT podcasts_pkey PRIMARY KEY (id);


--
-- Name: poll_options poll_options_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_options
    ADD CONSTRAINT poll_options_pkey PRIMARY KEY (id);


--
-- Name: poll_skips poll_skips_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_skips
    ADD CONSTRAINT poll_skips_pkey PRIMARY KEY (id);


--
-- Name: poll_votes poll_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (id);


--
-- Name: polls polls_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);


--
-- Name: profile_field_groups profile_field_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_field_groups
    ADD CONSTRAINT profile_field_groups_pkey PRIMARY KEY (id);


--
-- Name: profile_fields profile_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_fields
    ADD CONSTRAINT profile_fields_pkey PRIMARY KEY (id);


--
-- Name: profile_pins profile_pins_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_pins
    ADD CONSTRAINT profile_pins_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: rating_votes rating_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.rating_votes
    ADD CONSTRAINT rating_votes_pkey PRIMARY KEY (id);


--
-- Name: reactions reactions_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);


--
-- Name: response_templates response_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.response_templates
    ADD CONSTRAINT response_templates_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: site_configs site_configs_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.site_configs
    ADD CONSTRAINT site_configs_pkey PRIMARY KEY (id);


--
-- Name: sponsorships sponsorships_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.sponsorships
    ADD CONSTRAINT sponsorships_pkey PRIMARY KEY (id);


--
-- Name: tag_adjustments tag_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tag_adjustments
    ADD CONSTRAINT tag_adjustments_pkey PRIMARY KEY (id);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: tweets tweets_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tweets
    ADD CONSTRAINT tweets_pkey PRIMARY KEY (id);


--
-- Name: user_blocks user_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT user_blocks_pkey PRIMARY KEY (id);


--
-- Name: user_subscriptions user_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: users_gdpr_delete_requests users_gdpr_delete_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users_gdpr_delete_requests
    ADD CONSTRAINT users_gdpr_delete_requests_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: webhook_endpoints webhook_endpoints_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.webhook_endpoints
    ADD CONSTRAINT webhook_endpoints_pkey PRIMARY KEY (id);


--
-- Name: welcome_notifications welcome_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.welcome_notifications
    ADD CONSTRAINT welcome_notifications_pkey PRIMARY KEY (id);


--
-- Name: fk_followables; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX fk_followables ON public.follows USING btree (followable_id, followable_type);


--
-- Name: fk_follows; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX fk_follows ON public.follows USING btree (follower_id, follower_type);


--
-- Name: idx_notification_subs_on_user_id_notifiable_type_notifiable_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX idx_notification_subs_on_user_id_notifiable_type_notifiable_id ON public.notification_subscriptions USING btree (user_id, notifiable_type, notifiable_id);


--
-- Name: idx_pins_on_pinnable_id_profile_id_profile_type_pinnable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX idx_pins_on_pinnable_id_profile_id_profile_type_pinnable_type ON public.profile_pins USING btree (pinnable_id, profile_id, profile_type, pinnable_type);


--
-- Name: idx_response_templates_on_content_user_id_type_of_content_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX idx_response_templates_on_content_user_id_type_of_content_type ON public.response_templates USING btree (content, user_id, type_of, content_type);


--
-- Name: index_ahoy_events_on_name_and_time; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_events_on_name_and_time ON public.ahoy_events USING btree (name, "time");


--
-- Name: index_ahoy_events_on_properties; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_events_on_properties ON public.ahoy_events USING gin (properties jsonb_path_ops);


--
-- Name: index_ahoy_events_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_events_on_user_id ON public.ahoy_events USING btree (user_id);


--
-- Name: index_ahoy_events_on_visit_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_events_on_visit_id ON public.ahoy_events USING btree (visit_id);


--
-- Name: index_ahoy_messages_on_to; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_messages_on_to ON public.ahoy_messages USING btree ("to");


--
-- Name: index_ahoy_messages_on_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_messages_on_token ON public.ahoy_messages USING btree (token);


--
-- Name: index_ahoy_messages_on_user_id_and_mailer; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_messages_on_user_id_and_mailer ON public.ahoy_messages USING btree (user_id, mailer);


--
-- Name: index_ahoy_messages_on_user_id_and_user_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_messages_on_user_id_and_user_type ON public.ahoy_messages USING btree (user_id, user_type);


--
-- Name: index_ahoy_visits_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_ahoy_visits_on_user_id ON public.ahoy_visits USING btree (user_id);


--
-- Name: index_ahoy_visits_on_visit_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_ahoy_visits_on_visit_token ON public.ahoy_visits USING btree (visit_token);


--
-- Name: index_api_secrets_on_secret; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_api_secrets_on_secret ON public.api_secrets USING btree (secret);


--
-- Name: index_api_secrets_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_api_secrets_on_user_id ON public.api_secrets USING btree (user_id);


--
-- Name: index_articles_on_boost_states; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_boost_states ON public.articles USING gin (boost_states);


--
-- Name: index_articles_on_canonical_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_articles_on_canonical_url ON public.articles USING btree (canonical_url);


--
-- Name: index_articles_on_comment_score; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_comment_score ON public.articles USING btree (comment_score);


--
-- Name: index_articles_on_featured_number; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_featured_number ON public.articles USING btree (featured_number);


--
-- Name: index_articles_on_feed_source_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_articles_on_feed_source_url ON public.articles USING btree (feed_source_url);


--
-- Name: index_articles_on_hotness_score; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_hotness_score ON public.articles USING btree (hotness_score);


--
-- Name: index_articles_on_path; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_path ON public.articles USING btree (path);


--
-- Name: index_articles_on_public_reactions_count; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_public_reactions_count ON public.articles USING btree (public_reactions_count DESC);


--
-- Name: index_articles_on_published; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_published ON public.articles USING btree (published);


--
-- Name: index_articles_on_published_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_published_at ON public.articles USING btree (published_at);


--
-- Name: index_articles_on_slug_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_articles_on_slug_and_user_id ON public.articles USING btree (slug, user_id);


--
-- Name: index_articles_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_articles_on_user_id ON public.articles USING btree (user_id);


--
-- Name: index_articles_on_user_id_and_title_and_digest_body_markdown; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_articles_on_user_id_and_title_and_digest_body_markdown ON public.articles USING btree (user_id, title, public.digest(body_markdown, 'sha512'::text));


--
-- Name: index_audit_logs_on_data; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_audit_logs_on_data ON public.audit_logs USING gin (data);


--
-- Name: index_audit_logs_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_audit_logs_on_user_id ON public.audit_logs USING btree (user_id);


--
-- Name: index_badge_achievements_on_badge_id_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_badge_achievements_on_badge_id_and_user_id ON public.badge_achievements USING btree (badge_id, user_id);


--
-- Name: index_badge_achievements_on_user_id_and_badge_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_badge_achievements_on_user_id_and_badge_id ON public.badge_achievements USING btree (user_id, badge_id);


--
-- Name: index_badges_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_badges_on_slug ON public.badges USING btree (slug);


--
-- Name: index_badges_on_title; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_badges_on_title ON public.badges USING btree (title);


--
-- Name: index_banished_users_on_banished_by_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_banished_users_on_banished_by_id ON public.banished_users USING btree (banished_by_id);


--
-- Name: index_banished_users_on_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_banished_users_on_username ON public.banished_users USING btree (username);


--
-- Name: index_blazer_audits_on_query_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_audits_on_query_id ON public.blazer_audits USING btree (query_id);


--
-- Name: index_blazer_audits_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_audits_on_user_id ON public.blazer_audits USING btree (user_id);


--
-- Name: index_blazer_checks_on_creator_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_checks_on_creator_id ON public.blazer_checks USING btree (creator_id);


--
-- Name: index_blazer_checks_on_query_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_checks_on_query_id ON public.blazer_checks USING btree (query_id);


--
-- Name: index_blazer_dashboard_queries_on_dashboard_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_dashboard_queries_on_dashboard_id ON public.blazer_dashboard_queries USING btree (dashboard_id);


--
-- Name: index_blazer_dashboard_queries_on_query_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_dashboard_queries_on_query_id ON public.blazer_dashboard_queries USING btree (query_id);


--
-- Name: index_blazer_dashboards_on_creator_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_dashboards_on_creator_id ON public.blazer_dashboards USING btree (creator_id);


--
-- Name: index_blazer_queries_on_creator_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_blazer_queries_on_creator_id ON public.blazer_queries USING btree (creator_id);


--
-- Name: index_broadcasts_on_broadcastable_type_and_broadcastable_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_broadcasts_on_broadcastable_type_and_broadcastable_id ON public.broadcasts USING btree (broadcastable_type, broadcastable_id);


--
-- Name: index_broadcasts_on_title_and_type_of; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_broadcasts_on_title_and_type_of ON public.broadcasts USING btree (title, type_of);


--
-- Name: index_chat_channel_memberships_on_chat_channel_id_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_chat_channel_memberships_on_chat_channel_id_and_user_id ON public.chat_channel_memberships USING btree (chat_channel_id, user_id);


--
-- Name: index_chat_channel_memberships_on_user_id_and_chat_channel_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_chat_channel_memberships_on_user_id_and_chat_channel_id ON public.chat_channel_memberships USING btree (user_id, chat_channel_id);


--
-- Name: index_chat_channels_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_chat_channels_on_slug ON public.chat_channels USING btree (slug);


--
-- Name: index_classified_listing_categories_on_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_classified_listing_categories_on_name ON public.classified_listing_categories USING btree (name);


--
-- Name: index_classified_listing_categories_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_classified_listing_categories_on_slug ON public.classified_listing_categories USING btree (slug);


--
-- Name: index_classified_listings_on_classified_listing_category_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_classified_listings_on_classified_listing_category_id ON public.classified_listings USING btree (classified_listing_category_id);


--
-- Name: index_classified_listings_on_organization_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_classified_listings_on_organization_id ON public.classified_listings USING btree (organization_id);


--
-- Name: index_classified_listings_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_classified_listings_on_user_id ON public.classified_listings USING btree (user_id);


--
-- Name: index_collections_on_organization_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_collections_on_organization_id ON public.collections USING btree (organization_id);


--
-- Name: index_collections_on_slug_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_collections_on_slug_and_user_id ON public.collections USING btree (slug, user_id);


--
-- Name: index_collections_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_collections_on_user_id ON public.collections USING btree (user_id);


--
-- Name: index_comments_on_ancestry; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_comments_on_ancestry ON public.comments USING btree (ancestry);


--
-- Name: index_comments_on_body_markdown_user_ancestry_commentable; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_comments_on_body_markdown_user_ancestry_commentable ON public.comments USING btree (public.digest(body_markdown, 'sha512'::text), user_id, ancestry, commentable_id, commentable_type);


--
-- Name: index_comments_on_commentable_id_and_commentable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_comments_on_commentable_id_and_commentable_type ON public.comments USING btree (commentable_id, commentable_type);


--
-- Name: index_comments_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_comments_on_created_at ON public.comments USING btree (created_at);


--
-- Name: index_comments_on_score; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_comments_on_score ON public.comments USING btree (score);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_credits_on_purchase_id_and_purchase_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_credits_on_purchase_id_and_purchase_type ON public.credits USING btree (purchase_id, purchase_type);


--
-- Name: index_credits_on_spent; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_credits_on_spent ON public.credits USING btree (spent);


--
-- Name: index_custom_profile_fields_on_label_and_profile_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_custom_profile_fields_on_label_and_profile_id ON public.custom_profile_fields USING btree (label, profile_id);


--
-- Name: index_custom_profile_fields_on_profile_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_custom_profile_fields_on_profile_id ON public.custom_profile_fields USING btree (profile_id);


--
-- Name: index_data_update_scripts_on_file_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_data_update_scripts_on_file_name ON public.data_update_scripts USING btree (file_name);


--
-- Name: index_display_ad_events_on_display_ad_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_display_ad_events_on_display_ad_id ON public.display_ad_events USING btree (display_ad_id);


--
-- Name: index_display_ad_events_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_display_ad_events_on_user_id ON public.display_ad_events USING btree (user_id);


--
-- Name: index_email_authorizations_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_email_authorizations_on_user_id ON public.email_authorizations USING btree (user_id);


--
-- Name: index_feedback_messages_on_affected_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_feedback_messages_on_affected_id ON public.feedback_messages USING btree (affected_id);


--
-- Name: index_feedback_messages_on_offender_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_feedback_messages_on_offender_id ON public.feedback_messages USING btree (offender_id);


--
-- Name: index_feedback_messages_on_reporter_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_feedback_messages_on_reporter_id ON public.feedback_messages USING btree (reporter_id);


--
-- Name: index_field_test_events_on_field_test_membership_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_field_test_events_on_field_test_membership_id ON public.field_test_events USING btree (field_test_membership_id);


--
-- Name: index_field_test_memberships_on_experiment_and_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_field_test_memberships_on_experiment_and_created_at ON public.field_test_memberships USING btree (experiment, created_at);


--
-- Name: index_field_test_memberships_on_participant; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_field_test_memberships_on_participant ON public.field_test_memberships USING btree (participant_type, participant_id, experiment);


--
-- Name: index_flipper_features_on_key; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_flipper_features_on_key ON public.flipper_features USING btree (key);


--
-- Name: index_flipper_gates_on_feature_key_and_key_and_value; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_flipper_gates_on_feature_key_and_key_and_value ON public.flipper_gates USING btree (feature_key, key, value);


--
-- Name: index_follows_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_follows_on_created_at ON public.follows USING btree (created_at);


--
-- Name: index_follows_on_followable_and_follower; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_follows_on_followable_and_follower ON public.follows USING btree (followable_id, followable_type, follower_id, follower_type);


--
-- Name: index_github_issues_on_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_github_issues_on_url ON public.github_issues USING btree (url);


--
-- Name: index_github_repos_on_github_id_code; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_github_repos_on_github_id_code ON public.github_repos USING btree (github_id_code);


--
-- Name: index_github_repos_on_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_github_repos_on_url ON public.github_repos USING btree (url);


--
-- Name: index_html_variant_successes_on_html_variant_id_and_article_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_html_variant_successes_on_html_variant_id_and_article_id ON public.html_variant_successes USING btree (html_variant_id, article_id);


--
-- Name: index_html_variant_trials_on_html_variant_id_and_article_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_html_variant_trials_on_html_variant_id_and_article_id ON public.html_variant_trials USING btree (html_variant_id, article_id);


--
-- Name: index_html_variants_on_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_html_variants_on_name ON public.html_variants USING btree (name);


--
-- Name: index_identities_on_provider_and_uid; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_identities_on_provider_and_uid ON public.identities USING btree (provider, uid);


--
-- Name: index_identities_on_provider_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_identities_on_provider_and_user_id ON public.identities USING btree (provider, user_id);


--
-- Name: index_mentions_on_user_id_and_mentionable_id_mentionable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_mentions_on_user_id_and_mentionable_id_mentionable_type ON public.mentions USING btree (user_id, mentionable_id, mentionable_type);


--
-- Name: index_messages_on_chat_channel_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_messages_on_chat_channel_id ON public.messages USING btree (chat_channel_id);


--
-- Name: index_messages_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_messages_on_user_id ON public.messages USING btree (user_id);


--
-- Name: index_navigation_links_on_url_and_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_navigation_links_on_url_and_name ON public.navigation_links USING btree (url, name);


--
-- Name: index_notification_subscriptions_on_notifiable_and_config; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_notification_subscriptions_on_notifiable_and_config ON public.notification_subscriptions USING btree (notifiable_id, notifiable_type, config);


--
-- Name: index_notifications_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_notifications_on_created_at ON public.notifications USING btree (created_at);


--
-- Name: index_notifications_on_notifiable_id_notifiable_type_and_action; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_notifications_on_notifiable_id_notifiable_type_and_action ON public.notifications USING btree (notifiable_id, notifiable_type, action);


--
-- Name: index_notifications_on_notifiable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_notifications_on_notifiable_type ON public.notifications USING btree (notifiable_type);


--
-- Name: index_notifications_on_notified_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_notifications_on_notified_at ON public.notifications USING btree (notified_at);


--
-- Name: index_notifications_on_org_notifiable_action_is_null; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_notifications_on_org_notifiable_action_is_null ON public.notifications USING btree (organization_id, notifiable_id, notifiable_type) WHERE (action IS NULL);


--
-- Name: index_notifications_on_org_notifiable_and_action_not_null; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_notifications_on_org_notifiable_and_action_not_null ON public.notifications USING btree (organization_id, notifiable_id, notifiable_type, action) WHERE (action IS NOT NULL);


--
-- Name: index_notifications_on_user_notifiable_action_is_null; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_notifications_on_user_notifiable_action_is_null ON public.notifications USING btree (user_id, notifiable_id, notifiable_type) WHERE (action IS NULL);


--
-- Name: index_notifications_on_user_notifiable_and_action_not_null; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_notifications_on_user_notifiable_and_action_not_null ON public.notifications USING btree (user_id, notifiable_id, notifiable_type, action) WHERE (action IS NOT NULL);


--
-- Name: index_notifications_user_id_organization_id_notifiable_action; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_notifications_user_id_organization_id_notifiable_action ON public.notifications USING btree (user_id, organization_id, notifiable_id, notifiable_type, action);


--
-- Name: index_oauth_access_grants_on_application_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_oauth_access_grants_on_application_id ON public.oauth_access_grants USING btree (application_id);


--
-- Name: index_oauth_access_grants_on_resource_owner_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_oauth_access_grants_on_resource_owner_id ON public.oauth_access_grants USING btree (resource_owner_id);


--
-- Name: index_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_oauth_access_grants_on_token ON public.oauth_access_grants USING btree (token);


--
-- Name: index_oauth_access_tokens_on_application_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_oauth_access_tokens_on_application_id ON public.oauth_access_tokens USING btree (application_id);


--
-- Name: index_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token ON public.oauth_access_tokens USING btree (refresh_token);


--
-- Name: index_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_oauth_access_tokens_on_resource_owner_id ON public.oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: index_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_token ON public.oauth_access_tokens USING btree (token);


--
-- Name: index_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_oauth_applications_on_uid ON public.oauth_applications USING btree (uid);


--
-- Name: index_on_user_subscription_sourcebable_type_and_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_on_user_subscription_sourcebable_type_and_id ON public.user_subscriptions USING btree (user_subscription_sourceable_type, user_subscription_sourceable_id);


--
-- Name: index_organization_memberships_on_user_id_and_organization_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_organization_memberships_on_user_id_and_organization_id ON public.organization_memberships USING btree (user_id, organization_id);


--
-- Name: index_organizations_on_secret; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_organizations_on_secret ON public.organizations USING btree (secret);


--
-- Name: index_organizations_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_organizations_on_slug ON public.organizations USING btree (slug);


--
-- Name: index_page_views_on_article_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_page_views_on_article_id ON public.page_views USING btree (article_id);


--
-- Name: index_page_views_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_page_views_on_created_at ON public.page_views USING btree (created_at);


--
-- Name: index_page_views_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_page_views_on_user_id ON public.page_views USING btree (user_id);


--
-- Name: index_pages_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_pages_on_slug ON public.pages USING btree (slug);


--
-- Name: index_pod_episode_appearances_on_podcast_episode_id_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_pod_episode_appearances_on_podcast_episode_id_and_user_id ON public.podcast_episode_appearances USING btree (podcast_episode_id, user_id);


--
-- Name: index_podcast_episodes_on_guid; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_podcast_episodes_on_guid ON public.podcast_episodes USING btree (guid);


--
-- Name: index_podcast_episodes_on_media_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_podcast_episodes_on_media_url ON public.podcast_episodes USING btree (media_url);


--
-- Name: index_podcast_episodes_on_podcast_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_podcast_episodes_on_podcast_id ON public.podcast_episodes USING btree (podcast_id);


--
-- Name: index_podcast_episodes_on_title; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_podcast_episodes_on_title ON public.podcast_episodes USING btree (title);


--
-- Name: index_podcast_episodes_on_website_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_podcast_episodes_on_website_url ON public.podcast_episodes USING btree (website_url);


--
-- Name: index_podcast_ownerships_on_podcast_id_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_podcast_ownerships_on_podcast_id_and_user_id ON public.podcast_ownerships USING btree (podcast_id, user_id);


--
-- Name: index_podcasts_on_creator_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_podcasts_on_creator_id ON public.podcasts USING btree (creator_id);


--
-- Name: index_podcasts_on_feed_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_podcasts_on_feed_url ON public.podcasts USING btree (feed_url);


--
-- Name: index_podcasts_on_slug; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_podcasts_on_slug ON public.podcasts USING btree (slug);


--
-- Name: index_poll_skips_on_poll_and_user; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_poll_skips_on_poll_and_user ON public.poll_skips USING btree (poll_id, user_id);


--
-- Name: index_poll_votes_on_poll_id_and_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_poll_votes_on_poll_id_and_user_id ON public.poll_votes USING btree (poll_id, user_id);


--
-- Name: index_poll_votes_on_poll_option_and_user; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_poll_votes_on_poll_option_and_user ON public.poll_votes USING btree (poll_option_id, user_id);


--
-- Name: index_profile_field_groups_on_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_profile_field_groups_on_name ON public.profile_field_groups USING btree (name);


--
-- Name: index_profile_fields_on_label; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_profile_fields_on_label ON public.profile_fields USING btree (label);


--
-- Name: index_profile_fields_on_profile_field_group_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_profile_fields_on_profile_field_group_id ON public.profile_fields USING btree (profile_field_group_id);


--
-- Name: index_profile_pins_on_profile_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_profile_pins_on_profile_id ON public.profile_pins USING btree (profile_id);


--
-- Name: index_profiles_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_profiles_on_user_id ON public.profiles USING btree (user_id);


--
-- Name: index_rating_votes_on_article_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_rating_votes_on_article_id ON public.rating_votes USING btree (article_id);


--
-- Name: index_rating_votes_on_user_id_and_article_id_and_context; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_rating_votes_on_user_id_and_article_id_and_context ON public.rating_votes USING btree (user_id, article_id, context);


--
-- Name: index_reactions_on_category; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_reactions_on_category ON public.reactions USING btree (category);


--
-- Name: index_reactions_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_reactions_on_created_at ON public.reactions USING btree (created_at);


--
-- Name: index_reactions_on_points; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_reactions_on_points ON public.reactions USING btree (points);


--
-- Name: index_reactions_on_reactable_id_and_reactable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_reactions_on_reactable_id_and_reactable_type ON public.reactions USING btree (reactable_id, reactable_type);


--
-- Name: index_reactions_on_reactable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_reactions_on_reactable_type ON public.reactions USING btree (reactable_type);


--
-- Name: index_reactions_on_user_id_reactable_id_reactable_type_category; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_reactions_on_user_id_reactable_id_reactable_type_category ON public.reactions USING btree (user_id, reactable_id, reactable_type, category);


--
-- Name: index_response_templates_on_type_of; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_response_templates_on_type_of ON public.response_templates USING btree (type_of);


--
-- Name: index_response_templates_on_user_id_and_type_of; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_response_templates_on_user_id_and_type_of ON public.response_templates USING btree (user_id, type_of);


--
-- Name: index_roles_on_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_roles_on_name ON public.roles USING btree (name);


--
-- Name: index_roles_on_name_and_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_roles_on_name_and_resource_type_and_resource_id ON public.roles USING btree (name, resource_type, resource_id);


--
-- Name: index_site_configs_on_var; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_site_configs_on_var ON public.site_configs USING btree (var);


--
-- Name: index_sponsorships_on_level; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_sponsorships_on_level ON public.sponsorships USING btree (level);


--
-- Name: index_sponsorships_on_organization_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_sponsorships_on_organization_id ON public.sponsorships USING btree (organization_id);


--
-- Name: index_sponsorships_on_sponsorable_id_and_sponsorable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_sponsorships_on_sponsorable_id_and_sponsorable_type ON public.sponsorships USING btree (sponsorable_id, sponsorable_type);


--
-- Name: index_sponsorships_on_status; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_sponsorships_on_status ON public.sponsorships USING btree (status);


--
-- Name: index_sponsorships_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_sponsorships_on_user_id ON public.sponsorships USING btree (user_id);


--
-- Name: index_subscriber_id_and_email_with_user_subscription_source; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_subscriber_id_and_email_with_user_subscription_source ON public.user_subscriptions USING btree (subscriber_id, subscriber_email, user_subscription_sourceable_type, user_subscription_sourceable_id);


--
-- Name: index_tag_adjustments_on_tag_name_and_article_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_tag_adjustments_on_tag_name_and_article_id ON public.tag_adjustments USING btree (tag_name, article_id);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_tags_on_social_preview_template; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_tags_on_social_preview_template ON public.tags USING btree (social_preview_template);


--
-- Name: index_user_blocks_on_blocked_id_and_blocker_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_user_blocks_on_blocked_id_and_blocker_id ON public.user_blocks USING btree (blocked_id, blocker_id);


--
-- Name: index_user_subscriptions_on_author_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_user_subscriptions_on_author_id ON public.user_subscriptions USING btree (author_id);


--
-- Name: index_user_subscriptions_on_subscriber_email; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_user_subscriptions_on_subscriber_email ON public.user_subscriptions USING btree (subscriber_email);


--
-- Name: index_users_on_apple_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_apple_username ON public.users USING btree (apple_username);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_created_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_created_at ON public.users USING btree (created_at);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_facebook_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_facebook_username ON public.users USING btree (facebook_username);


--
-- Name: index_users_on_feed_fetched_at; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_feed_fetched_at ON public.users USING btree (feed_fetched_at);


--
-- Name: index_users_on_feed_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_feed_url ON public.users USING btree (feed_url) WHERE ((COALESCE(feed_url, ''::character varying))::text <> ''::text);


--
-- Name: index_users_on_github_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_github_username ON public.users USING btree (github_username);


--
-- Name: index_users_on_invitation_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_invitation_token ON public.users USING btree (invitation_token);


--
-- Name: index_users_on_invitations_count; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_invitations_count ON public.users USING btree (invitations_count);


--
-- Name: index_users_on_invited_by_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_invited_by_id ON public.users USING btree (invited_by_id);


--
-- Name: index_users_on_invited_by_type_and_invited_by_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_invited_by_type_and_invited_by_id ON public.users USING btree (invited_by_type, invited_by_id);


--
-- Name: index_users_on_language_settings; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_language_settings ON public.users USING gin (language_settings);


--
-- Name: index_users_on_old_old_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_on_old_old_username ON public.users USING btree (old_old_username);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_twitter_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_twitter_username ON public.users USING btree (twitter_username);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_users_on_username ON public.users USING btree (username);


--
-- Name: index_users_roles_on_user_id_and_role_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_users_roles_on_user_id_and_role_id ON public.users_roles USING btree (user_id, role_id);


--
-- Name: index_webhook_endpoints_on_events; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_webhook_endpoints_on_events ON public.webhook_endpoints USING btree (events);


--
-- Name: index_webhook_endpoints_on_oauth_application_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_webhook_endpoints_on_oauth_application_id ON public.webhook_endpoints USING btree (oauth_application_id);


--
-- Name: index_webhook_endpoints_on_target_url; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX index_webhook_endpoints_on_target_url ON public.webhook_endpoints USING btree (target_url);


--
-- Name: index_webhook_endpoints_on_user_id; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX index_webhook_endpoints_on_user_id ON public.webhook_endpoints USING btree (user_id);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: contact_webtutsplus
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: tweets fk_rails_003928b7f5; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tweets
    ADD CONSTRAINT fk_rails_003928b7f5 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: page_views fk_rails_00f38b1a99; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.page_views
    ADD CONSTRAINT fk_rails_00f38b1a99 FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: webhook_endpoints fk_rails_083276d374; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.webhook_endpoints
    ADD CONSTRAINT fk_rails_083276d374 FOREIGN KEY (oauth_application_id) REFERENCES public.oauth_applications(id);


--
-- Name: podcast_episode_appearances fk_rails_09327c8b91; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episode_appearances
    ADD CONSTRAINT fk_rails_09327c8b91 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: buffer_updates fk_rails_0b84f8076f; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates
    ADD CONSTRAINT fk_rails_0b84f8076f FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE SET NULL;


--
-- Name: messages fk_rails_1321992401; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_1321992401 FOREIGN KEY (chat_channel_id) REFERENCES public.chat_channels(id);


--
-- Name: page_views fk_rails_13a4e75c00; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.page_views
    ADD CONSTRAINT fk_rails_13a4e75c00 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: banished_users fk_rails_153ba6df7a; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.banished_users
    ADD CONSTRAINT fk_rails_153ba6df7a FOREIGN KEY (banished_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: display_ad_events fk_rails_1821fcc2c7; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ad_events
    ADD CONSTRAINT fk_rails_1821fcc2c7 FOREIGN KEY (display_ad_id) REFERENCES public.display_ads(id) ON DELETE CASCADE;


--
-- Name: mentions fk_rails_1b711e94aa; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.mentions
    ADD CONSTRAINT fk_rails_1b711e94aa FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_subscriptions fk_rails_1ed776f5d9; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT fk_rails_1ed776f5d9 FOREIGN KEY (subscriber_id) REFERENCES public.users(id);


--
-- Name: audit_logs fk_rails_1f26bc34ae; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT fk_rails_1f26bc34ae FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: collections fk_rails_217eef6689; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT fk_rails_217eef6689 FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE SET NULL;


--
-- Name: podcasts fk_rails_23fc7f8ed6; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcasts
    ADD CONSTRAINT fk_rails_23fc7f8ed6 FOREIGN KEY (creator_id) REFERENCES public.users(id);


--
-- Name: classified_listings fk_rails_2571500d9c; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listings
    ADD CONSTRAINT fk_rails_2571500d9c FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE CASCADE;


--
-- Name: messages fk_rails_273a25a7a6; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_273a25a7a6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: badge_achievements fk_rails_27820f58ce; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badge_achievements
    ADD CONSTRAINT fk_rails_27820f58ce FOREIGN KEY (badge_id) REFERENCES public.badges(id);


--
-- Name: articles fk_rails_2b371e3029; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_2b371e3029 FOREIGN KEY (collection_id) REFERENCES public.collections(id) ON DELETE SET NULL;


--
-- Name: notification_subscriptions fk_rails_2bf71acda7; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notification_subscriptions
    ADD CONSTRAINT fk_rails_2bf71acda7 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: oauth_access_grants fk_rails_330c32d8d9; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT fk_rails_330c32d8d9 FOREIGN KEY (resource_owner_id) REFERENCES public.users(id);


--
-- Name: notes fk_rails_36c9deba43; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT fk_rails_36c9deba43 FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: podcast_ownerships fk_rails_3710d65292; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_ownerships
    ADD CONSTRAINT fk_rails_3710d65292 FOREIGN KEY (podcast_id) REFERENCES public.podcasts(id);


--
-- Name: notifications fk_rails_394d9847aa; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_394d9847aa FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE CASCADE;


--
-- Name: articles fk_rails_3d31dad1cc; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_3d31dad1cc FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: poll_skips fk_rails_4046c49c05; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_skips
    ADD CONSTRAINT fk_rails_4046c49c05 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: polls fk_rails_48d9b585ee; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT fk_rails_48d9b585ee FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: badge_achievements fk_rails_4a2e48ca67; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badge_achievements
    ADD CONSTRAINT fk_rails_4a2e48ca67 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: users_roles fk_rails_4a41696df6; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk_rails_4a41696df6 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: chat_channel_memberships fk_rails_4ba367990a; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channel_memberships
    ADD CONSTRAINT fk_rails_4ba367990a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: html_variants fk_rails_4bb9f66719; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variants
    ADD CONSTRAINT fk_rails_4bb9f66719 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: identities fk_rails_5373344100; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.identities
    ADD CONSTRAINT fk_rails_5373344100 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: credits fk_rails_5628a713de; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.credits
    ADD CONSTRAINT fk_rails_5628a713de FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE RESTRICT;


--
-- Name: podcast_ownerships fk_rails_574aee0ec6; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_ownerships
    ADD CONSTRAINT fk_rails_574aee0ec6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: organization_memberships fk_rails_57cf70d280; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organization_memberships
    ADD CONSTRAINT fk_rails_57cf70d280 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ahoy_messages fk_rails_5894d6c55a; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_messages
    ADD CONSTRAINT fk_rails_5894d6c55a FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: html_variant_successes fk_rails_58c8775ab2; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_successes
    ADD CONSTRAINT fk_rails_58c8775ab2 FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE SET NULL;


--
-- Name: user_subscriptions fk_rails_59b0197af7; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT fk_rails_59b0197af7 FOREIGN KEY (author_id) REFERENCES public.users(id);


--
-- Name: html_variant_successes fk_rails_5b92043d3f; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_successes
    ADD CONSTRAINT fk_rails_5b92043d3f FOREIGN KEY (html_variant_id) REFERENCES public.html_variants(id) ON DELETE CASCADE;


--
-- Name: custom_profile_fields fk_rails_701e08633d; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.custom_profile_fields
    ADD CONSTRAINT fk_rails_701e08633d FOREIGN KEY (profile_id) REFERENCES public.profiles(id) ON DELETE CASCADE;


--
-- Name: organization_memberships fk_rails_715ab7f4fe; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.organization_memberships
    ADD CONSTRAINT fk_rails_715ab7f4fe FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE CASCADE;


--
-- Name: oauth_access_tokens fk_rails_732cb83ab7; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT fk_rails_732cb83ab7 FOREIGN KEY (application_id) REFERENCES public.oauth_applications(id);


--
-- Name: sponsorships fk_rails_778bb453b1; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.sponsorships
    ADD CONSTRAINT fk_rails_778bb453b1 FOREIGN KEY (organization_id) REFERENCES public.organizations(id);


--
-- Name: articles fk_rails_7809a1a57d; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_7809a1a57d FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE SET NULL;


--
-- Name: webhook_endpoints fk_rails_819fdd0983; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.webhook_endpoints
    ADD CONSTRAINT fk_rails_819fdd0983 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: html_variant_trials fk_rails_823a31b2cf; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_trials
    ADD CONSTRAINT fk_rails_823a31b2cf FOREIGN KEY (html_variant_id) REFERENCES public.html_variants(id) ON DELETE CASCADE;


--
-- Name: poll_votes fk_rails_848ece0184; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT fk_rails_848ece0184 FOREIGN KEY (poll_option_id) REFERENCES public.poll_options(id) ON DELETE CASCADE;


--
-- Name: feedback_messages fk_rails_887c5f31ff; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.feedback_messages
    ADD CONSTRAINT fk_rails_887c5f31ff FOREIGN KEY (reporter_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: podcast_episodes fk_rails_893fc9044f; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episodes
    ADD CONSTRAINT fk_rails_893fc9044f FOREIGN KEY (podcast_id) REFERENCES public.podcasts(id) ON DELETE CASCADE;


--
-- Name: classified_listings fk_rails_8ec4e83da0; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listings
    ADD CONSTRAINT fk_rails_8ec4e83da0 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: credits fk_rails_9001739776; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.credits
    ADD CONSTRAINT fk_rails_9001739776 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: user_blocks fk_rails_9457ce6a10; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT fk_rails_9457ce6a10 FOREIGN KEY (blocked_id) REFERENCES public.users(id);


--
-- Name: poll_skips fk_rails_97ff88c452; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_skips
    ADD CONSTRAINT fk_rails_97ff88c452 FOREIGN KEY (poll_id) REFERENCES public.polls(id) ON DELETE CASCADE;


--
-- Name: api_secrets fk_rails_9aaa384ac8; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.api_secrets
    ADD CONSTRAINT fk_rails_9aaa384ac8 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: collections fk_rails_9b33697360; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT fk_rails_9b33697360 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reactions fk_rails_9f02fc96a0; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT fk_rails_9f02fc96a0 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: taggings fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: ahoy_events fk_rails_a0df956a8d; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_events
    ADD CONSTRAINT fk_rails_a0df956a8d FOREIGN KEY (visit_id) REFERENCES public.ahoy_visits(id) ON DELETE CASCADE;


--
-- Name: rating_votes fk_rails_a3fec5b316; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.rating_votes
    ADD CONSTRAINT fk_rails_a3fec5b316 FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: rating_votes fk_rails_a47bf2c1e2; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.rating_votes
    ADD CONSTRAINT fk_rails_a47bf2c1e2 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tag_adjustments fk_rails_a49150b7b2; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tag_adjustments
    ADD CONSTRAINT fk_rails_a49150b7b2 FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: buffer_updates fk_rails_a4b9858400; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates
    ADD CONSTRAINT fk_rails_a4b9858400 FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: poll_votes fk_rails_a6e6974b7e; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT fk_rails_a6e6974b7e FOREIGN KEY (poll_id) REFERENCES public.polls(id) ON DELETE CASCADE;


--
-- Name: response_templates fk_rails_a8702c6917; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.response_templates
    ADD CONSTRAINT fk_rails_a8702c6917 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tags fk_rails_a9dc141dc9; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT fk_rails_a9dc141dc9 FOREIGN KEY (mod_chat_channel_id) REFERENCES public.chat_channels(id) ON DELETE SET NULL;


--
-- Name: poll_options fk_rails_aa85becb42; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_options
    ADD CONSTRAINT fk_rails_aa85becb42 FOREIGN KEY (poll_id) REFERENCES public.polls(id) ON DELETE CASCADE;


--
-- Name: notifications fk_rails_b080fb4855; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_rails_b080fb4855 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: chat_channel_memberships fk_rails_b2bb73e339; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.chat_channel_memberships
    ADD CONSTRAINT fk_rails_b2bb73e339 FOREIGN KEY (chat_channel_id) REFERENCES public.chat_channels(id);


--
-- Name: sponsorships fk_rails_b3190c5fc6; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.sponsorships
    ADD CONSTRAINT fk_rails_b3190c5fc6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: oauth_access_grants fk_rails_b4b53e07b8; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT fk_rails_b4b53e07b8 FOREIGN KEY (application_id) REFERENCES public.oauth_applications(id);


--
-- Name: poll_votes fk_rails_b64de9b025; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT fk_rails_b64de9b025 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: html_variant_trials fk_rails_ba2bd12f4d; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.html_variant_trials
    ADD CONSTRAINT fk_rails_ba2bd12f4d FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE SET NULL;


--
-- Name: github_repos fk_rails_bbb82bb7f1; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.github_repos
    ADD CONSTRAINT fk_rails_bbb82bb7f1 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: feedback_messages fk_rails_c15ceb2839; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.feedback_messages
    ADD CONSTRAINT fk_rails_c15ceb2839 FOREIGN KEY (offender_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tag_adjustments fk_rails_c4e50e84fd; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tag_adjustments
    ADD CONSTRAINT fk_rails_c4e50e84fd FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: display_ad_events fk_rails_c692cbd6e1; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ad_events
    ADD CONSTRAINT fk_rails_c692cbd6e1 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: buffer_updates fk_rails_c8c6d97c30; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates
    ADD CONSTRAINT fk_rails_c8c6d97c30 FOREIGN KEY (composer_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: display_ads fk_rails_ca571cb23e; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.display_ads
    ADD CONSTRAINT fk_rails_ca571cb23e FOREIGN KEY (organization_id) REFERENCES public.organizations(id) ON DELETE CASCADE;


--
-- Name: tags fk_rails_d11c10a859; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT fk_rails_d11c10a859 FOREIGN KEY (badge_id) REFERENCES public.badges(id) ON DELETE SET NULL;


--
-- Name: user_blocks fk_rails_d1bf232861; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.user_blocks
    ADD CONSTRAINT fk_rails_d1bf232861 FOREIGN KEY (blocker_id) REFERENCES public.users(id);


--
-- Name: podcast_episode_appearances fk_rails_d9250101ef; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.podcast_episode_appearances
    ADD CONSTRAINT fk_rails_d9250101ef FOREIGN KEY (podcast_episode_id) REFERENCES public.podcast_episodes(id);


--
-- Name: badge_achievements fk_rails_da1af2d63c; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.badge_achievements
    ADD CONSTRAINT fk_rails_da1af2d63c FOREIGN KEY (rewarder_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: ahoy_visits fk_rails_db648022ad; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_visits
    ADD CONSTRAINT fk_rails_db648022ad FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: profile_fields fk_rails_df1b1bea83; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profile_fields
    ADD CONSTRAINT fk_rails_df1b1bea83 FOREIGN KEY (profile_field_group_id) REFERENCES public.profile_field_groups(id);


--
-- Name: buffer_updates fk_rails_dfc43a0422; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.buffer_updates
    ADD CONSTRAINT fk_rails_dfc43a0422 FOREIGN KEY (approver_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: profiles fk_rails_e424190865; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT fk_rails_e424190865 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: feedback_messages fk_rails_e81fc50c33; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.feedback_messages
    ADD CONSTRAINT fk_rails_e81fc50c33 FOREIGN KEY (affected_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: tag_adjustments fk_rails_e8f5a32807; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.tag_adjustments
    ADD CONSTRAINT fk_rails_e8f5a32807 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ahoy_messages fk_rails_eb7709e291; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_messages
    ADD CONSTRAINT fk_rails_eb7709e291 FOREIGN KEY (feedback_message_id) REFERENCES public.feedback_messages(id) ON DELETE SET NULL;


--
-- Name: users_roles fk_rails_eb7b4658f8; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk_rails_eb7b4658f8 FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: oauth_access_tokens fk_rails_ee63f25419; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT fk_rails_ee63f25419 FOREIGN KEY (resource_owner_id) REFERENCES public.users(id);


--
-- Name: ahoy_events fk_rails_f1ed9fc4a0; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.ahoy_events
    ADD CONSTRAINT fk_rails_f1ed9fc4a0 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: email_authorizations fk_rails_faf7e663d1; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.email_authorizations
    ADD CONSTRAINT fk_rails_faf7e663d1 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: classified_listings fk_rails_fd32b9b45f; Type: FK CONSTRAINT; Schema: public; Owner: contact_webtutsplus
--

ALTER TABLE ONLY public.classified_listings
    ADD CONSTRAINT fk_rails_fd32b9b45f FOREIGN KEY (classified_listing_category_id) REFERENCES public.classified_listing_categories(id);


--
-- PostgreSQL database dump complete
--

