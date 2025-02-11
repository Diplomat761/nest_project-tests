PGDMP                         {            nest_project_db    15.2    15.2 {    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16671    nest_project_db    DATABASE     {   CREATE DATABASE nest_project_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE nest_project_db;
                postgres    false            �            1259    42374    comments    TABLE     �   CREATE TABLE public.comments (
    id integer NOT NULL,
    content character varying(255) NOT NULL,
    "userId" integer,
    "postId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    42373    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    235            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    234            �            1259    42224    country    TABLE     �   CREATE TABLE public.country (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "value_EN" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    42223    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    229            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    228            �            1259    42233    genre    TABLE     �   CREATE TABLE public.genre (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "value_EN" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    42232    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    231            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    230            �            1259    41115    google-users    TABLE     N  CREATE TABLE public."google-users" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    "displayName" character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."google-users";
       public         heap    postgres    false            �            1259    41114    google-users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."google-users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."google-users_id_seq";
       public          postgres    false    227            �           0    0    google-users_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."google-users_id_seq" OWNED BY public."google-users".id;
          public          postgres    false    226            �            1259    25208    groups    TABLE     �   CREATE TABLE public.groups (
    id integer NOT NULL,
    keyword character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    25207    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    219            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    218            �            1259    32998    images    TABLE       CREATE TABLE public.images (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    "tableName" character varying(255),
    "recordId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    32997    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    225            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    224            �            1259    42618    movie_person    TABLE     d   CREATE TABLE public.movie_person (
    movie_id integer NOT NULL,
    person_id integer NOT NULL
);
     DROP TABLE public.movie_person;
       public         heap    postgres    false            �            1259    42591    movies    TABLE     �  CREATE TABLE public.movies (
    id integer NOT NULL,
    avatars character varying(255) NOT NULL,
    promo character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    original_name character varying(255) NOT NULL,
    rating double precision NOT NULL,
    count_rating integer NOT NULL,
    "ageLimit" double precision NOT NULL,
    years character varying(255) NOT NULL,
    durations character varying(255) NOT NULL,
    country_id integer NOT NULL,
    genre_id integer NOT NULL,
    description text NOT NULL,
    "description_EN" text,
    director_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    42590    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    241            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    240            �            1259    42409    person    TABLE     �  CREATE TABLE public.person (
    id integer NOT NULL,
    avatar character varying(255) NOT NULL,
    full_name character varying(255) NOT NULL,
    "full_name_EN" character varying(255),
    description text NOT NULL,
    "description_EN" text,
    "DOB" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    42408    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    239            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    238            �            1259    25243    post_groups    TABLE     j   CREATE TABLE public.post_groups (
    id integer NOT NULL,
    "groupId" integer,
    "postId" integer
);
    DROP TABLE public.post_groups;
       public         heap    postgres    false            �            1259    25242    post_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.post_groups_id_seq;
       public          postgres    false    221            �           0    0    post_groups_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.post_groups_id_seq OWNED BY public.post_groups.id;
          public          postgres    false    220            �            1259    42348    posts    TABLE     Y  CREATE TABLE public.posts (
    id integer NOT NULL,
    "uniqueName" character varying(255),
    title character varying(255),
    content character varying(255) NOT NULL,
    "userId" integer,
    "movieId" integer,
    "imageId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    42347    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    233            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    232            �            1259    32951    profiles    TABLE     m  CREATE TABLE public.profiles (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    age integer NOT NULL,
    "phoneNumber" character varying(255) NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    32950    profiles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    223            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    222            �            1259    16685    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16684    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    215            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    214            �            1259    16696 
   user_roles    TABLE     h   CREATE TABLE public.user_roles (
    id integer NOT NULL,
    "roleId" integer,
    "userId" integer
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16695    user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_roles_id_seq;
       public          postgres    false    217            �           0    0    user_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
          public          postgres    false    216            �            1259    42391    users    TABLE     @  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    42390    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    236            �           2604    42377    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    42227 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    42236    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    41118    google-users id    DEFAULT     v   ALTER TABLE ONLY public."google-users" ALTER COLUMN id SET DEFAULT nextval('public."google-users_id_seq"'::regclass);
 @   ALTER TABLE public."google-users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    25211 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    33001 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    42594 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    42412 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    25246    post_groups id    DEFAULT     p   ALTER TABLE ONLY public.post_groups ALTER COLUMN id SET DEFAULT nextval('public.post_groups_id_seq'::regclass);
 =   ALTER TABLE public.post_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    42351    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    32954    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16688    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16699    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    42394    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �          0    42374    comments 
   TABLE DATA           ]   COPY public.comments (id, content, "userId", "postId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   ��       �          0    42224    country 
   TABLE DATA           R   COPY public.country (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �       �          0    42233    genre 
   TABLE DATA           P   COPY public.genre (id, value, "value_EN", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   0�       �          0    41115    google-users 
   TABLE DATA           q   COPY public."google-users" (id, email, "displayName", banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   Z�       �          0    25208    groups 
   TABLE DATA           G   COPY public.groups (id, keyword, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �       �          0    32998    images 
   TABLE DATA           \   COPY public.images (id, url, "tableName", "recordId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   ��       �          0    42618    movie_person 
   TABLE DATA           ;   COPY public.movie_person (movie_id, person_id) FROM stdin;
    public          postgres    false    242   C�       �          0    42591    movies 
   TABLE DATA           �   COPY public.movies (id, avatars, promo, name, original_name, rating, count_rating, "ageLimit", years, durations, country_id, genre_id, description, "description_EN", director_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    241   g�       �          0    42409    person 
   TABLE DATA           �   COPY public.person (id, avatar, full_name, "full_name_EN", description, "description_EN", "DOB", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    239   Lp      �          0    25243    post_groups 
   TABLE DATA           >   COPY public.post_groups (id, "groupId", "postId") FROM stdin;
    public          postgres    false    221   �      �          0    42348    posts 
   TABLE DATA           {   COPY public.posts (id, "uniqueName", title, content, "userId", "movieId", "imageId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233   ��      �          0    32951    profiles 
   TABLE DATA           w   COPY public.profiles (id, "firstName", "lastName", age, "phoneNumber", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   �      �          0    16685    roles 
   TABLE DATA           Q   COPY public.roles (id, value, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   ~�      �          0    16696 
   user_roles 
   TABLE DATA           <   COPY public.user_roles (id, "roleId", "userId") FROM stdin;
    public          postgres    false    217   �      �          0    42391    users 
   TABLE DATA           c   COPY public.users (id, email, password, banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   ��      �           0    0    comments_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comments_id_seq', 4, true);
          public          postgres    false    234            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 29, true);
          public          postgres    false    228            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 22, true);
          public          postgres    false    230            �           0    0    google-users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."google-users_id_seq"', 2, true);
          public          postgres    false    226            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 9, true);
          public          postgres    false    218            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 21, true);
          public          postgres    false    224            �           0    0    movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_id_seq', 453, true);
          public          postgres    false    240            �           0    0    person_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.person_id_seq', 200, true);
          public          postgres    false    238            �           0    0    post_groups_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.post_groups_id_seq', 65, true);
          public          postgres    false    220            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 2, true);
          public          postgres    false    232            �           0    0    profiles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profiles_id_seq', 25, true);
          public          postgres    false    222            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 6, true);
          public          postgres    false    214            �           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 37, true);
          public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    236            �           2606    42379    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    235            �           2606    42231    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    229            �           2606    42240    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    231            �           2606    41125 #   google-users google-users_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_email_key" UNIQUE (email);
 Q   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_email_key";
       public            postgres    false    227            �           2606    41123    google-users google-users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_pkey";
       public            postgres    false    227            �           2606    25215    groups groups_keyword_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_keyword_key UNIQUE (keyword);
 C   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_keyword_key;
       public            postgres    false    219            �           2606    25213    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    219            �           2606    33005    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    225            �           2606    33007    images images_url_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_url_key UNIQUE (url);
 ?   ALTER TABLE ONLY public.images DROP CONSTRAINT images_url_key;
       public            postgres    false    225            �           2606    42622    movie_person movie_person_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movie_id, person_id);
 H   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_pkey;
       public            postgres    false    242    242            �           2606    42598    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    241            �           2606    42416    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    239            �           2606    25250 *   post_groups post_groups_groupId_postId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_postId_key" UNIQUE ("groupId", "postId");
 V   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_postId_key";
       public            postgres    false    221    221            �           2606    25248    post_groups post_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT post_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT post_groups_pkey;
       public            postgres    false    221            �           2606    42355    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    233            �           2606    42357    posts posts_uniqueName_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_uniqueName_key" UNIQUE ("uniqueName");
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_uniqueName_key";
       public            postgres    false    233            �           2606    32958    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    223            �           2606    32960    profiles profiles_userId_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_key" UNIQUE ("userId");
 H   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_key";
       public            postgres    false    223            �           2606    16692    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    215            �           2606    16694    roles roles_value_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_value_key UNIQUE (value);
 ?   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_value_key;
       public            postgres    false    215            �           2606    16701    user_roles user_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    217            �           2606    16703 '   user_roles user_roles_roleId_userId_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_userId_key" UNIQUE ("roleId", "userId");
 S   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_userId_key";
       public            postgres    false    217    217            �           2606    42401    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    237            �           2606    42399    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    237            �           2606    42385    comments comments_postId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_postId_fkey" FOREIGN KEY ("postId") REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_postId_fkey";
       public          postgres    false    235    3557    233            �           2606    42623 '   movie_person movie_person_movie_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_movie_id_fkey;
       public          postgres    false    3569    242    241            �           2606    42628 (   movie_person movie_person_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_person_id_fkey;
       public          postgres    false    239    3567    242            �           2606    42599    movies movies_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_country_id_fkey;
       public          postgres    false    241    3553    229            �           2606    42609    movies movies_director_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_director_id_fkey;
       public          postgres    false    3567    239    241            �           2606    42604    movies movies_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_genre_id_fkey;
       public          postgres    false    3555    231    241            �           2606    25251 $   post_groups post_groups_groupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_fkey";
       public          postgres    false    219    221    3535            �           2606    42368    posts posts_imageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES public.images(id) ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_imageId_fkey";
       public          postgres    false    233    225    3545            �           2606    16704 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    215    217    3525            �   T   x�3��xa߅�v_� dm��W�ӈ3Ə����X��T��B��������H���L����	V�0���X`7.����� -�/      �   ;  x���MkQ������K�̝�d�]���ࢱqsi�:$���	���W��P!~,���5b[��3��s�DE��B�����x��	�U>̇0͏�F��K�P���pI��V�h%����o��k$�|�8��z�9߭r�B�����>�������^�y�%YE>�]��	u��t+fn(f%
x	[��
�"yJe^���u欚$�I�p�/�$+vx�7��56ʏ����$��c�g0ΏxC5�*�Q��]�q��:m�C~�$�H�+�`����MG�̖~�$ɚ���A>�o�ѯ�J��=�Iz��/�'P��@�hf!����	x��`�8�S��P�X�⺝F��=c�<:$4&��0u������~/3����*<�BT�.Ƕ>�ﹸ�M��u�,J�}��8�݋͖A�s���M��0G���N�v�i-ʪ��X��=�u�����ؐ$=��	�f2�ac7nƜqn�E����5_��O�Sr��	r�Sj�-�כ`
3�x0vh�C��ՙ~���f2����ΩY�m'��b4e�7���Ic�}TC��"I>Y�R��p�      �     x�}�Mn�@�לSt_$��Ȳs�n��R��`4I�]��"mzՍŶ�+pn��@7�a�0���{䄀/��cs�JQ�gAr�Oatɋ$9���� =!�pK��@��A��2��	����w��]�_��LiSU+�r�C�$$��ޮ�����ƾT+�jSdL��:I$���-nTf
�E�C���L$ҞX/��ߐUe>�c*"�$�Ҹ����W쎃r���9ILiU�����n���4���O�Kb��[�}Z{f���2�L�	��a���¿n��␉_��VWn𔧦���dG���R������|:^!]̆�v{H�c�ymr�lN�Ϟ�O��>��.�kf�%G��#�\s]\4�_m*=��$�q����t�����{����+s��z�>Y��DH��8�Ԋ{l��Ir ѥ<�?�(<��Һ�@)�#$N]
�����C
jɔ�I�!��ۑ����\ߠ,��Q\	��D�}�w�]C}Ui3��	D:R����ܥ������j�ės!�T��2      �   �   x�3�,N-KN���O�I�K44�tH�M���K���0���/콰A�[/l��$�^�uagg���������������������������9).#�s3Kcs4�����$w*\�a����`z;���Ns+c=SKS,v"Iq��qqq ��S�      �   �   x�}̻
A��z��˄\�ɳ�X������8#B��|�p�/AH4�F��͙�M��)��k��,��J��y����H��P}R�U�JP^Z��sE�i�m�y����I�XF�&���u%�sq1�d_�[�;#\K�      �   �   x�}ɻ�0 Й~�io��l&�nn$��	mhCį7����V�m	���tD�h��C;\(�r�p�Q�!�+����>eHy�ށ�F9���'�U-�\Knp��H1�g�_Pbͥ�J�N�N�hLs��O�^0ƾU�0�      �   
  x�=�Kv� D��b� ��d���%'��m�� �(���c���S&�z��b����!q���%}��	}(�������=�N�uޫ�%;�~��È�F<;�1���6�O6l�����8��Ѐ����z&fȪ�s�&�'/6����G6�}���i��������,����zO���tK`������z������h��������>g`��w�Gm�F���*K[C$v�w��
g���|� `�������̃U�CcW�ગ���z��f<�c��T��U���`"dc�|��qj�9�b�L�24�܏:��= �۷�Ϛ�lx([Y�J �|a�0�c�Vgz���kN�����ŰdiU�+�=�y3��e��X���{dչ�,(���a5�K���8�J�M���c��/w�~�f�W������wA�l�@bqv����~+��%�{8F�K/�<�������N���En�ޭlX&b�g_lh
Nsc��<�˲���q3ޣ�c��C�ÐGgz|����t�U6�2PkP8��,e�{~Y}p�rp�n��H =?��8���*�1D��myt+��R���2�2<�.�i�Ar��(�s
��h��46�{�:@qZZY��<ʏ0�>M>�Ơ�]�mO�t��1y�^�E�(MD��F�Uܧ�LQ|�΋�� @Ї��D$��d]�J\_�˪���N��u��|u� ��(���lt<� B-�Լ�8<��Zzٷ��R�] �LM$|�j�0.��U���Y���V���`]������(s���G �((s�#�4�` �)��)�%���;�ԔMQ^BU|���MZ�M���<JU?0?�U?�6Ғb��D@��_`i+{�@@���ȏ�#� ��Vټ�
K�EmJ�����>k�,���_��1���%u�TFl�;(7��=�z鲆ê�~W�6 �?�{�I��.����"@�%�_��D�*�` ��� n����j�[�$)&���-)f���$�Qf��2���4�|*�r�scY.�$��r��&�ڜ�{�� ���:k�*ͪ�I
��pbX���0�7q�IG�q�H5rf�VǨ5a��֏�2��2PZ- ��`�C���x\��UCBB+�FPsFu��C�	�D7�[x"~-���~��*�Z��P�ߥ�T�����uh����s�Mz�6U�I���t�����2?��a���>CRХ�iKQ(!�����QH8\�������+�Ԋ]N����Mc�����S�E�z��͏�����m�u�E�-�b^�^��+��R(�-��{e�������7RX.�;�����)Jc����I!MY�\@�Gq�)9�1�/w�ĳ�}� �n��-i�6M�:����d@�P�NU�u���d���� Q@ͻ���˫�:u�J�!"����RQ��|X	`�t}H2U&wD��g�:��뢚r��$�T}�vD�l�yRQ
�.Q'���4!o�ᓏEp�����VG�iO$��&�o,���a���d_��MxW|�*�!�����e��lAޔ%٤�o
m�t]��s��7���P���K��Y�w�9KQpC��+$���]��9�+��{�9���?��S�	��S��iC�{�P}8�g�9�~^�a�k��n�Y��$��L�t�!aB�[�3][�IRZ��$q�t��B�C���t�*���7�N, 	����_o� �I���L�ι9�N̄�� :�"���+uf�	��l���c�j�N���bC~i��-�c9�GE��˨�MS�Fߦ�:������#����~G��Dɂ���S�抃�/���I:w.���$�t�0p��g|w&wYc�>`i���7�t|E�5��F��Q�h��[��UZi�� a��e=d �����`���!Q�F
�i�f�k�ev.J� nư�M{��Ň����9�s�f�ٗQ��ዡ�z@ѵ���tb
��P�o���Kԝ��� �sF�������Q��c��d��9���&+_|A"g-����Yű�?�-}�M�(��G	��K��r�<$�L���1)���s�K5'=ip�3$�\m�([�Zb��O�q+5�z �
�-���P��_�K��@�E馆�k� ���W��8nR��R���x��)gE��Z%$�(чA%0$�h����q�
U��YI-��%�dj��P�[@d�Iv�N��� {�����g9g\��[@�a�:jA�I*�t�Zyq�X !��Ӗȸ�7�u�
�z�T�9���*\������D�^-�V)n�(� V٘4,%tJƹ�D�'M�W�O�.감ͳ�Vs}f�����
~��e�B/�;�D��.�{q+z���t_��:Õ'ߵn˟���X�<ߺ^�%���5�r	2,��T�gw	
�i?��^Zϱ��֙���+t�b*�ex|�u��r�0��J�\Ŧ)�+�G��EB)%�a�z��3:1���|l}�+b��rڷ.��6҄��U�dօrQ]�U��*��t��vZ����*Sj�i�|�}�����5;�ޯ�[s���Ku��k�1���\��P�sh�|���}����      �      x��ks�y��z�)�rvm60���V�J�bI��m��ĕ���&"� ����ź�PMI'��]���S������*�/����N?O���I�	w��ǒEb������s�7O��ܖ��\�Ro.������������{su}ru���&[���hV�ȸ��
7B�.�&gҕ%3�gL�m�墩WT�}�fY�u�ڕrs�n7�W����qmesk��wW�T���f}ks�]Q+�uE�mV��V�����B�y�d�p�s��.��~!�ʟ���i�d���O�O����{���O~`�y�2�p��L�	2�M��ǉHx2���ӛ�����;������`�t����x'ͳ����eoz��V����d�;�^N�O��������l�#��/��?��:<��q;=���w��xz �����<N�?���^?� �~�wp��g���
' '�;�}�����n��O���Nz����-��#��.��a��t��1=���+9�x��؛��>}ߟ|����$ܣ�@7�7��������N�t���}z�?�?������q�����w�N�>���y"޼�[˰�=��#�7���'�������	\�n<$�����[����!�L������_����?�۲�|c=u�[���:}�r�Ѥu������l�����߿���Vכ:��~�\�l�N�7Ӎ�U�ӭ���U�;i5�Xo66�I�oN��]�6߯V��H�~;���N��M����5�{p���x3���o^n��V�w�^m֫f9��l�����[JW�YoL��7��[_mW+?X�M���	����Ս�^��\�֤[�6�q���`T]�ݴ�kW�u��.���f�����>�;鯠�pW��j�ec��k��^iҫ���6�k���$�������ƚ�i�m�7�t�yn������-��67�M�/��ֆ{��[�6�^�Սۺ|�߾�ko��>��\�
�������ڟ�k���Z�l�ol�Հ����Z����j�^�{�ܵMx�����6W�����ߖƟ~��z�YOY�殽qٿ�j���w���jwv�W���sw%�^^ze���	���L�T�������L����/ش$汼Rk�)�RT�i
Y����B̸�e�U�V��_ny���6+�J�mlS�&��*��y�U����չ��#?��N���@�[��D-��_������op�p?9}���`�`�*����V`;|� ��A0Lh��+}L���oq�����7�E+�ng`�O�,��_y�����G~G�ш�+�-�����C��;`��Py��6��3���ا���p��U�6E�z�?�)����{�:�������,��/�胥��z?���No�ќ�;�w�3�Z?�l�38Y����_��G����o<J�<n��u��k�p^��������y:���)������	�I�� {���W�+�ׇ�wП�s߅����k����y-�Kp�p��F�ӹ���=�����>>����p�a�����������v�C�����o��p��~��Cx��˰@����8�C�zb���q
�R������ӌXC�yƬ1����Q�থ|�pc��vE[��+�ʘlu�'��b�QMS6E����Y����uQ�&Ӷ�yc��2s�*Z��=�5?���m�;0��Ϧ�_��,��;(��_�C<ɿҴ?L��		&���Qd}o�.�����T�	ٙM\O������,Bh�!�T��s�<�z?L�S=`��3��8�7tg	��c���	N�ў��ݾ _8�&�0݆�+�XB���"�����T#&��^�iI>�D�-e!���UgRچ�s�d%��~z+�WQ����pk�����'ou�z����hK?�vչ��8%��6��0I^rk�\�i���X���<�"*2�Y�<����G���Ao�lh!�wТS6��D��h-`���o�6���&�׃Ml��-��qz���8ӆ38����U71��w{#�F?�|^܄�؛09{�^{��c��f�����`��A�f�G�r�>�*�rB?pC�3k��a��u~>�ŝ�����g�)������#�W�t�8�_
S���7x���71 s#޿�w�0�}�����t�� ��%���<�}8^Z��=���d7Ёbdɟ�%������6-Ol.�����̕�f2�%+K)X.��\��V�l�W*�E��Z���
c3��V�e{~�9x�hx��G��M
�K�a'���>8��o�M��Z�GS���by2��wϯc(���Ô�>��`jv���&	��`B`�|!�w�PB7 C�?�3�m������m+��_0���G��@7�)�3�O�v~��!����w��sop�_��3��x��9ΏOf�AP!0��n�=���u����7�@�c7
;���0��[���������/!�Д�#ވ3'O���M�F�y�� ��ˀ��é���Kߏ���p#���L�i'8�Ї�@{��`-��!�܊����}(� ~Ի�Ӆt��;��O�=�Lw�I�~�]���YE�A��lZRsEE�T��+ek�R�R��I^��5gUi۲�J^�Ŋ��I�_� [�k�ex?6�A7I^�0͇�>��*�t�mz�.!������G��{b�`b���Ä[������VYBN�~���Q}���!����`�[3L3�����w��,�A�>�t������&��Cs��I�ht\G;v��V���/��{t9�D�o;�^���'�*o�����8�qs���̒���a�w�Q��*1Q����}��Af� ����a��c��V��]�<��V����(&£G�l�s���ot�(�l ����h	�;�S�95�"���M71ݖ��nܴ��2݅��0+*�B�`����F*�*�3UgZZYio�{��gZ��Pm���o'����eך+ͺ7�E"��yn��9�Y����b̏��1(���0R�q�vf�{�z�i�`��7���8�f]af�'��B�"�ף%��'�m
Z�A#��ap��|'Ni�h�1�9����0�����s���`�/?��̽1͊��
Ӹ����������Y|��{2ª��Ŭ�{a����2� 	q-0�=�Җ���K���'�j���>�Tj�1�bc�g|�(�����hX��q@�Ǟ��b)�g؂���.�{s�[!��w�� 0�J��~x^:��z�r�g�($�q��Xt��}q�F��8[d��wn���nO|w���c��q|�x�<�������~fX?���<��8�;8�ُ�˲���s:�q���S�pY
�v��좃������?�|3��w$	��gF=��b���i�<�KST�0�ʘvE�d�e�Y�2^6�d.�-g\��h��	�~Ȣ��%򻓵ޘﺵ����F�l%&QBc �瞗Y�I����X�1��Т�y�]��� ۴��9�q��EC���gŷB�&R�0��(X�������Ca��7��?z7g�+!�p�.�����5Ü;��.��������-.�d�/�}��&� LDnc""����Mh����d����^�L�t��	�\?�	 ���.�ЬÝ�}���;ӣ}t���g������C
a�q�)����о���v8�~����=��O	�g`~�0�)�.�<�ͬd@|Gtᰐ��'D���
�0U�7�#i����$�*����'^@�'|_�O�w��ԙ�j�z�ށ�ҙg�V����n8 _�[Ĩ�~(:���������p�!�y�����{�zC���,4��V�m�g^��1��}C�& a6�  ��8�yN�آ\?�7�F�F>�[��)"<�G���>���x�~6���1��af��>?�k;����*.���3���̣����3���|1����x�ݓH�c=a���4�8�Q�    fJ!���O���
�mT��é�|��3��Q��ŗ�V(F����a ü�����P�%f��g��G1��g��m�)f7�~�h���n�
?�Z48�X����Op���m��ꏂW 1��UGt(uy��N�c��<�U6N��s0g0��e�������2��hN���tL���9lZ�O�4�Y]h�s���t���������2�$�s�ٜ�������ά��a������[O��Jr�!�m��"�:�[1����`1��Yp{'�a�v�=#I��g�����dÿ{?�kp{�0�Lڍ�|���ά"���9��|/Z�8��q2p���ßҽ�``� ]y�~�8�fu��na66����~�I�����yW��Qw�h�Obg��0G�1���Pꎙ��oC�x�n��G� ����^e?4����R�6�t!*��������	�ӣ���	BQ�A��CO�;��+��c8���߷.��`�D������ch�t�9Ӏ3��`vf���.|��'0Ky�?���Y�ƼL���ޗŁ����Y�R���2�x�0po�N��1�����\�cߍC�a���!6�:ְ1 � a#����l���w�������A��үp9��~�� �ְ�뤛����=�O�g���Ɖp��q��p=^k���x6WFg�Jh~�2ӈ��<���+mi�h�i�T��`�9��/f9O�- �̭�	�f��$�ߋ)�.Nx�nC?�'��a��.̒C�{,�����.�*�:�~DؚL��!8@����Y:2�27Ά�ł��X�+7��ښ���)���-�}P��lʿ�ۋ��^��*�.D���9�
]�*u��{OΤaN���*��ag����=�ˏ��c��ك�M�Uo^l/����l�g��)6E�6����ݙ���D�/��~����%{���d��9^4���8(�AK++�e�C�h[�cض�K�e�ޠvyڮ�&yer�I�[��7h[����mͼm���J�?z,���^�
�O�`.
'�I��I�UC���O���A8ƽh{wb�c,��x^(��>6��Z~l7�Co񲗗�g�-<	,���/��#�MF:��1؆3��y�nf��[�=�9�]1�-��Bd;}/��c�0�������qC�0������Li'��by��Z�p? #}G�,X��{1���Y�]l�{׃����#�P��B��~ Y2�Ϻ0l�:^
����\b]A�tu��s,�J�'��3+d�
�[͛������� ,̋���`�I�6!��ل+10�f���5�����N�s��S��.�yK��j�b4%T=�DӰg������韅_�cuu᳌X�p.��3���Nu�(<�, ���G�s�h��BT?�+�I�A�<��^��q9��",8�eO ���� ɣ�}��h�g�����ab�:��`�O��X����X�^L���C�h��0�O���󇀭�C܏�����eP�� �ǐq&�����7����X����ݏ�9+�*��敆�ɜ0���mu駿�əe��4�ݏ���CYB����(�t\���ڼ���L�����.�P��X&\������P�JB� B`;k�����Yx��=X'��]�qg�S�g3�!pЗG@����Ljg�E�H�!���슼��������2�3�$JSE�
#Έ��H��+V�����C��X��pb�1��6�(�.�򑾇+*�p����}�v�:���=S��	��1�7��HT��b�-&S�1���y�W�c���0vf�?�� y8�*"%���0�叕M�B�SH+zqC�������'�1��ٍ�0�ӝ�6����w�^ܽ�t��!��@�BǳF��1Ƴqvd�si'�	��m�b\i�յ�Lz|��5��vm�4y�g��9��0@�GB�4�e�X����f�.��-~\��J��n�z�Y66�^H�Ը��Q�'0hwB��6�����7zz����y�{�н�NX]�b�uT5:�C�l<�}8xh��,S��Ģ�8�fuC���R��\{�Վ�ec�{����NH����~N����L�!��Ђ��$9ƪg׋5��c)e,��Z��D��������XL��1��!��⒇=���CY:��j��V,>����P��������cU8���n,1���������f[��w���wC�8��HƝ��3������j�i�ϥ��Gm�BW�4̈�0�oPre�Pe��E��3�����#&�Bp�N��h��ku�	�@�b�j��5A<��0K��P�r/d��;|`<w?D$C�{�cQ/6���T������N�>�x�!)����0g��N�/�_��rb�ϙ"Ɛi�MI�t�&�[�[���q��3a�u��J�f��<�yO��vu������\�]���������2�g��E��43���~9���iW�������|�u�D;]��������",P��RwS�i0����xgV"��	��k���_2�d���i�v��l�MK|.i��2:_16/K�s�s�[i�d�憹ܴV�V���N����eo$�}2ٚ\]u��4B�~o������'��p/�M̲Zy������z/����I�k@��~�'�q���a��iV=!rO(��C�hbUc�����X.?�aҹ��(�]G<�nw��m>}b,���0|��:֧މэ�4�z����(d�ɘ�e$cQ��{M4r�{� �?�iDi���!^�����49�l�v(��C(S������u�~�-�16���-K�h�G;(�	a�'��c���i_�E����u�+��;l�3Gax?E�?��c�m��n�E��^��⇏�<����kq��#����܋�5ݴc�l�(��������b{]��~�49��N&.܍�X���s�+�W�d�{�`P��i;�<҃�yܿ��T��L�#X�8{|^�묈�^x±�v�Qw/&�ovW9|��I�Ǯ��icay h�7�;C>���:�,������g�:͞P��ti��^^u8s��ػs#f��f����G8:�8�nФ�&�>ؗ�L-F+Oæ%>�*FW(�t�Jp���\��cY�Tk�C��٬��]j��(��ޡZ=�t��G� 6z�~�o�m�N�V�d���ٜFA֏�}Ay?j�X�4�b��;4�܈���r?�Fg��L������"�l���aV�;�Тb�2k7&a[mڧ�ѱ�d���
K`�Yh>}��w!�o;�Nc���(b��Iiw��l>�Mѿ\��W���g�F!o�U茿���[��t�;����Ρ���g~���:k$�nS�jNq�����Y�48�Z��)Yf���:R7��.�6-��t���*V�Z��nk�o�4�b�����Y�In��a��I^vWxU^��1Yo6�X�I�yW���b����'}�۲f	ب
�G�b�7��5�z�KB�J#����#xf{3���B�,x;wb�Kv����>�a>��9�ճ��I��1�r�iր��A�#bZO����X�''����<���s�^�4�v+���U,����?th~t�c�j������F��[�Fro�?&v����X��i(����y�Y�Vh)��k?qgu'z�}�@H��w���5���B��^�H�^�bޏ*�Ó7!�+���N��ǊfD셁�۩F�Ī���7�K7]�5�O;���3�ofqv0��3���E���~�E�O/<�#"l� �M���Ah<���<$"6���)�~��Ö�p绬z�
�� [���{��?{ �~�$J�=���߱��ю��i��ղ�q�+�Vj��uY+�Hg���`�.8�3�JkD��֬���ğDY�{��Σ���NSڇ�.{];����;>C3t;ymu�m5�����X-�ƭ_L!��µ�ͦ���������]C�n�ł��ct�)�g�6}�)�X���}�ä9��b�i��9K��BdԿ�(��{��:_�kr+�    >�t�1$uz��煨9L��3}��V�����;��,��u.��[�1�6�}L�lfrp�������c��
�)�M|��?k�� %5�<����-�a���������Br+.1z�����%�Vn�ƛ`���\��~��:#6ٌ�k�Q�ٱ���4�s]٪fR�Y�X��M�
��ҵC5��1��M��o���{��k[�T��z���gÂ1�/��:��4. xrF��Q��9�����z�t�E��%��w6��ѫy�����2Q�E�v���_����$�~<�nb�?�f������@�'������lT�ü��/6�m#��VL�teU�L����Z�O��6,��	��:������
��������̟v&��'��Ց�yP���\��O��x/<�3k�<��'�����>��:�;A$
Zֱ�L\��(�O��&�L������Buv\�_��0���[�3�sߤ���A�e;&7��x�j��x�]��)�(�x9�'�N��H��>��>�q��w��b.,,C5K�Ď��oE��w!�{Q�����ǖ-L�%��m�����AW��w-��&���k��I]�B):�׻�@0i�=�'�?��?}�e�aȡ�=�+�xcu�1���.�>��6-����%>�n�▹LB�I]3��dE����ڪ&��AlT�q
}���ُ������d���@O^q�־6��otM6*�T7���^���5�Pp#2��/��z�A�0<�O�k�D��N�A_�3
��l\|�o[W��,�n w���u�C���W
1ۑ�����A��(��O�Lz'��x�
�!	rc���6���셧��xa ��;�� ��j�Y�@j�l*��Wn�k�9s�!�z�	gq9*��gV*t#�'��}���K(`���vu�����:�֏Bs̇.��Ga*W������Ru�3��+��x*�^�ꊫ$�J�������c��]�m��^���i�L����~�N��AW��w����y� �p�4T�y���!2���y%�0�Ns u{�>������ZvCh����Rd���9��03��>~)�̆�]�gOeo6�a�ĝaܴ[@=�ꨛ�[ r0݊�gG<)���7���}��[��|�*˔�+2�2)��5��L(/mꌁʻ�2'T�s��������kZ�y�Y[�e�(�Ä�L���E=2�UdQe�����q����owBt����
��l5��g~���4��tRY�1:,W��%��Q É3}�ޭ��}֌�3�P>V���/��S$,����3Kb�7�g��+}�լ�_z�9�?��hb3n�3�S��v�;[�r3gu�;��t����}b��Q<�v�>w�0��섂X�~`����pЫ=`'5��)W?y�O�P�wMtG�i[Ă�A�{؆W(;�����(*K�Č��Ƅ/bF��|jQ��d�+!��KU�
ꖕ\֌����OaZ��8e*�5�"Ʌ����;=(������p������A8
��JV��������~�@�+��4�4�b0S��V�^��]l4�����hh��yb��N�"F�PL�6H�ͤEw#�%�̷C�j_��̳�\��{�H��� ���uIC<��B���*��q���&�'�n��Љ��y�.��}�X����uH����-��`y8���֠ꮈ�(��gp3�@��x�nZ�)+Ā�i�Lg�e����̘-M�j]5��U��@��.Γޝ�̪\�{�-K�Ҫ���k%j-�ͷ�cͷ_͸��u��f6~@��	SƔ�,�Y2�_��	1�Ÿ�-��>��A^��ԅ�����6s���]J�묵����ˁb�4PaH%/M66��~�ڕ���ڤP��<!t�r|
&�R�i����:!�9=����G���r$!�~+�w?�R�Q>+��pC�7w;��mt���c1oH?cJz���`���Ɠ�)��az!2\��Fl�{8h���>�^�@��S#[C��YO��_<���.ܴ$����2S|��je�����M)93����Vu%\�4C���ƻ�q>���?���uG�"���!B��������k:q��-���}:X����W������>!W�9�-�b�d�g�3*�����ӨP�p����sX[/�ɇ%!�6��Ba�L�oi�9=�zx ��]'@�I,�|�3��X�����'V�
��sD��8Q�S��E�&i�i?(Vu����
��EG��~�ʀ(xZw�u��֓e%���gqcQ��S
L�jL�u�J��)�y�Z��Y�%+t�2����zT�� G�7IP�z~2y��U&�&�9SbjqwN��L2 T΅�ȣ�C�U^�6TaF�N�a��=0����I'�V=�5Ae�B�+��<�{�ǖ�{�e�g���&gkw�(맣}j���'��e �N�ab<��?�*�h���1ew��� ��Ӱp��3Z$�j/LFoaM��.8��N��6f�;����(Tb<�O���bP!J�A��&x�$�*vB5k��Q��-c/�I~x������p�� u��Y,\�g�$�4�dY��Ҡve��Q�s���.ڬ^�+�h��a/��+ƌi5b}L/��e��<.-ҩe����u/\$oڭ�X62$I����v���ʣ�"p��`����m?:?��i;�Q
eм�?�5������ď:��E񟠯�=���Op���.�y!t(��?��>.�2A�CY�T���Q*F��I�y�+XV)��n[VR��|�o���:��vjP1���.�g��j��|g�z/�[����=wԌ`�H����Z�b�6����De�2Q����TWtFAg;WyN��F�Ҽe�s�3�)XY
���T
��k�~��2wU�{��^�*�(�p��Ө��ϯN6��e���w��3�;�m݆o�ZT<��d�m�t�Dw�;ѝ�Nt'�/
���F1Jwܲ$�����U�\S�̶����<�y]0�5��:˹���gmK�[(��⍸�1,��{�>�$L�	ӄi�4az10�Ɯ��.ܴ��%�Թ�k��R��u�I�sVּf*�Z��2V�տ���dV�ݫ����\�|�������\$F����>��e�	τg�3��8x.FZ����i)�O�(�˺֊:����r2�X)EŊ��r�U�Q�:ݟ���.J�C1�~\�n��-�<�_�7��~1��z�����DO�N��3i)N�&v�����Ed�XC�o��MK�\�E]�M�e��EÄG6�W�lچ�.Z�i7�4��:XJ�;�����I��Dǂ��� ��i2��L@& ��vd�1�h$nZ��T�
δU�ܱ͛�.[&Kղ25me+��qå�~=��=H^_�r�vcZ���#Ϫ��	�a�0A� ���X|j�WL�MK�|jbQ���҈<Ӭ���Sؖ�yo��˴ּ�s7,���%լO�$j٢�C�悢��_�/��K�]D��蓈�Vhܴ�ϧ2��]#Dˋ�Y�&y��[�����-��͊/J(�f5�Y㯯�o�+M��M"3��L�3El&6������d����j�<T{=�*cc��U9�+ÙtN3[�k��l
.ri� ��`�n�%9�#�:%"v���(iLL&&�����Ed2�F<�b�E��\����̵��-S�i���c�yF��7e��B���0�O��k�WXG�Ȣ��<�|�Z���Db"1��H�8$�#���E(��KƓ�,�Ƭ]��5s��L
!�-Q��5Ϭ+��O�TM��S\�=4��%�][����_!?qEX)EXM VK)��]� M�&@�	��E��)�뫋P_=��W���r��J���3i�J�
Vz@k^�u��ϟ[�l��`e�`��[����F������e���6&�u���	�d&J���Di��BR�#mP��B��iI>��mJ�D����I%[fm��u�Y�����?��ŏ���k��E7��o�C��?3���1[|�g	��2��HL$&���Ř�<�/nZ�s�{u .K�T�-+JP�2E͌�5kK��ֶ�    �����������I������o ��Diק����Df"3���Ld^D2�|��8�%9�tW��6[��sQC���dv5�����ۊ��R�b��Q�S������O^]�����ln&&��x��5�1јhL4&���fDHs�M^�|EvMQ-�:++���a���2��ߖ��r�t���_[	�E���s�>Jhj��`1
E&
���Da��"R��1�7B�%9�pW\��)��;֖&g��s�d#X�2i�V�R�~~z�B0�0н-�?��Z�"�X5�������I�e�us�3љ�Lt&:��ι!�xonZ���zE8g�+ʶȠ�fR��9���Bՙ�*SZ;Զ�&8ୟ7$��% ��N~s}�_;z�ʪ���w��M�-�Hd&2���D�"3c���V��z.U�Nr�(�2����\�Lj�x*��)m�([a�����}4~%�6o4�u��E��"v=	�]O���&����a���pX�į�xQ�E]s	yu����V7yŪ��n��Y���3oں����+4
0�nM&��Gۚ\[][k��Hb���H,)RM&��������X��8�����2�kW�wyu+sf��LfUÜ-+�	g��s�m=�����u'�Sl��D� }�k��"���Db"�"���1�qs��]a)�&7u�Z��P�:c���+i
�U�*��F�0G`3D{8Ԣ�	C����ܖ�դ�hӿ�\K_p�!���19�Ȗ�$6	لlB6!����ȶ#e^f�7-siwq�kY��y�]e������3����n�6�U높!�!�oS����$�
� ds���)�#�ٴj��M�&b��أ>�xa6nZ*����2�ҍdE&5���(e�kj���¶g��퇃�4��p������ſq�oLҿ\�.;
����Pd��kM�&P�	��5�#�__N��D��o��w��3Lr����l�x\붩
ǵh�K��7�K�7�7=y��(����f�RUї�K�%�}��c�R��ţp�R1�̗�e�2�¥),���UL�d.oJf��Ң�eS�E~�8�
C���;��Y�m��*��+/S�љ�Lt&:������{�q�R1��W�S�sܕ+u��\3WۊeeU;)���344�`���p��o�'�Id.����!w��L@& �	�	d=�V��MK�|z_QT�Ink��L�Vr����Y������m�̀|M�!�a˽N�Z���[`��wPC�G�N�X�#j���Dm��bR[=5��J
L�Y&ES��Q�h�˘˹�Y�*�`?F
�A���L]���_��gkkn�3Y%B�X�Zj�&*���De��bRY��W�SY#����=��U��@.�l�Ԫf�h*&�VX�De�A�'~� �&/6��:��%�S:U\q93a�0A� L&/$��1��t�P��O,V_��s�U�*�h&-o���fϬq�6u}f�mo��a��Aw��0�&����y���Ŗ���2��HL$&���f���KA<�(XlX�7�d5�8,�;�L^f��Uf<����/M6�8�n�/5nc5l�^�#4(�G�N{f%)AE�f3���L`^ 0�7(�q2æ%5�����SŊ��Fj�J5_*cF��岪]�����������o����H.��6��L_��]i6�s٪"���,��kCX&,�	˄e���`Y�`y���O��UT�Е���+�$��*U3W֕�E�29�[��#���c�"Ba��E���Nl'�-�?\�xyy9�z��L��j5��@M�^P��:�/�|�^���0+�ʥ��ʻ˲f2�[f��X�MmTer�+O}��`�4xS�����U�_�PrmM\�"�fl�e����bb1�x1Ylǈ;��nZRs�}u�^\������%�%��l*�ںޣ����"M4�����?��8��s������{
�كR��&�����B/b01�L&/�����ZR�iIͥ��)n:Qe�渳LJ�bn���]Q:��!��%�l8N;<��{1E��m�[h�BY6�'�� ��`�E���o�S���fmm����իÍ���cV�'\�Ҽ �݉�Dw�;�}Q��=ާ��|
a�dg[�ҿ�L�ǻ3�-3�8o*�/l5�����v��Y?� .���R�(`��!a} �	 ~�NP�����Q��� %�Tb���D�&
4Q��Mq�0�_x7-��4ɺ�x^�D�ںLj'�m�bZ�L�*�F���9�k; ś�[����e/y޿^p��y�u��5σd����	��	τg�3�y�Fڱ����iI�'Nf3�^��x�sik,�mtͬ���e�L[�A}���p��m����c����ߪ[O��Ix�:����Dc�1јhL4&/"��A�T(nZRs���<�0_���kY[Z�d�+�m��Zh#�BVjXD4���8~P�G�-?2a�����a����N^q���6����^�Xݜ�w^����M먩bxW�.=�g��pN8'��	���9󮿠',4��'v�u��Z)k^We]0W����Jf��Y-�"S�)E�g<��,=�W���;YG��B��7�a�󼧯���K�%�}��D�E���O	_=����Zf��T�m�,�E˙4Y�lQe�;��0mSy�{���x��(S,;D�7=H���o��+�~�	:��ƜB�De�2Q��LT^D*��|�x�l���|jf�L�ƪR�,����p�2�p�[�Y)j�t1C�/��%h��F�y/���v�����t��7*��<yG6�^[�p[M�ƾ�6V˲q�SXa������~��^)�"����ְ?}���c�/Q�(�L)^3"=��?��z�٨Kش��SD�ҥu�ʂ�	�/�1��U�d^657�����jԇhe�,o��T`���M�J�zrͿuM���J��!/��|��g4���4M^8�pb�$�yv����l���K ���m��j&��,���9,�\)�w�,JG�-9ݠ�C�$0������k����,��/N���R*ù�:13qqK�&`�	�l�"��/���=��Z���&WMɄ��{ӢdV��U����FZ]�Np�� *��Ӛ��T�� �Z�X��a��l �B'����Dp"�<�t>N�	>�b�6��J+L�"(eƤ��r�Y�-e돗���f���g�Mױ������]��,ZT�XL,�ceq� �����ǕO��Qa��iI�%L�9ԼiUQ���0�f	�+�c�0�-D��}�^���Xy���N-?�n��Z�p�])C�����h��*�B��j-<�9�Zщ�@t��D��j-�Q!��iI�'d[����F���\i&��1�5�-���8�|���%�
����P�� o4���AKT�
pQV�"�ob1��XL,&/�=Ǟ��sɘyk����	���f�X����jgX#
k��wr��ߢq��y�W�Z����m�3;��&�	�a�0Axq ���o�L�CX!�������n�\V,�گʖ�VftS6YY�pC�1o(C	�#4�8Α;�?~d���p ��Sva�����ks\Z�n6�����5?t�&}�q��@]p�Kd9h�tD��X����!�K<'����c��/��y*13��d�Y�l&yc���1mdn#\Y>���A\���h���)X���v���-���o��Z�7�7����mE��G�X3�	ل��<�&��pM�^t\�1(���6-����b�wU�yV	�����v:c��S� ���f���7
⣷� ��w'yy�ޤ/�Gs�B�Bv���pL8&�	Ǆ�E�1/���A�'Ff���])U׍5LKg��2��,���4Mfy&ʣwq�¸�#�z`wv�x��ƚ�C���w�>nԛ@ck0ΝA�t>��*n�4a�0M�&L/���G�����\�d���}�F��b.�8�J4�xO�5�qۖMQ�jX�}��3�#��7�����v�r���抿�A�[)��F2.-�Al&6�����Ed�:��bި�m�R���    Rz��2ZJ9&�b�Ԏղ�yS�B�f�,=s�����!�0yi�iҗ����e�����oZf�xL<&��ǋ��Q_�����ә�R�4�˥pS�,�Ԛ3�b��Y%�J�v�b�Ǿ�L4عC�Z�h4�8�pP'�������n��������[��fUaP�M*�Dm�6Q��M�^j�12����%�T�cU#��̌����T%g�lx]K��z �Ob��%��� ��2�����w���QU6ї�K�%�}��j,�=������\"a}��Zԭ�X�K�dUXV�� NI[Q��Hp�f��P���q��#��0Tn��U��'V�Hq���///'��48Ut����V�&��	��8�v���M�<4Eϧ3�u�ƈV���!+�J�L�c�j�7%o�P�MX���[)M��ã`E;+��aL&�i\�v�ښ{�ߓo���I�H�،e.�a�R���&7��M�&n�ir[������h����&�y������U�����L�\2'��銷yQUʕg�ɂ*�N��,�����߾�����d��vPL�тXDd"2��LD^"ۑ��/��K^�󤍴�,d�
k!0nsfuS��)7��փ��>�7oQ�����lx�y'P��������_�/������:��>	nZ����b�ܺ�����q�07�*�0�U�n���-�ua��&6��6\������{�k�w��zY'J�5`U���s��m�4A� M�&H/������8	nZ�si�uQk#ʢ��c�T�In2�q,��*��U^�_i��Op�'꧝ř�_L���-�7�q���/��Z{;}ŭ�M�ڼ���V*P���&�y��֏&�ۉ��vb�"�]�,Y)F�.��sɛ���L����0R�<��5Ȏ�ư�:޶UmK5X+�0��>�b2z;qi�@xG���۽���!��?h��{�+�+M��h{��{u��J[���=�x"�Ry/�[?I���RY�q�8q�8N_D�s9R�BeA��Υ��9�,�V���h�T�0˫�Ս4�l�-�����X z8�N^ظ֬�A�\%Vf݂�<��X�w�	Äa�0a�0L^��~�C<�tN�ֹ�j�n����X^i�d�ZfK^3muUJ��t�֬}4F7��?��:��p�c?Xg�Z_8����a0�������/�nc�,�~1}n+�.��m�__����r�\Y�%�݉�Dw��b�},��t*��(��ir�$/@z���HYɬU<k�����~{�^rkk�Z�g$t�=q3=�yb���_�/��K�]��!v\C7-ٹdO�wnl���0[�I�8�7m��MV謬��u��Z�o8����E��[�䒿��=��~�]=}��*��J�No��?�h��5W[JI���Dk�5�zqh��Xmٸ�(nZ�s��t�gi-2�7��V&�s��ZR��5�PC���`�"�ӎ��^�����H�����d������[�y1��_k���ЦG�g�)�
��֖�	�s�9��`��0��)Yγ9�R�L�"��J�Ш](&�G�ʺ�LpΫLm���?$����G�^g
a���`-����������������Z��Ebl\iU8�	�j5��@����|��8��@��$U"��2/$W-�ˬf���ԕ*X�	-��6��C����h"?�K���&܉���yː��F�y�HMMZ�fb3���Ll^D6�cN����ɣy.%�."^�&㍨�-r�h�0gd�l�j-=�k1�`���	���f�	�k�c���=dޗ��Έ�Dg�3љ�Lt^:C��i�?M�Y��6e�2�[�}�YQ�#��m˺�33�f��� �g�*(�>@�a���IY�n]L�[O�r���զ���/���4#�ԩE,'�ˉ����e����8n�,�Kڬgy^\Hǚ�:&�w�L]Y���u�U�A��?��f`�AY������h�Eb�Be���*�	�f3���L`^0�����<`y.�2��LI��D튼����R��V�F���m-�X�A�t���X�z-���`��N��Ao���꺉��c�1�x��<�#A�|\�7y"ϥX�9�R��4�bmˡ��s�hY��l�P�����, X���K�n�����"��.��;�r@c8!���Dc����x�_�G�x.��nE�&�ڂ��x�Z1�b��r#Zŵ8�"�q7��8�����N?F����N��o�70�˫���W��\^�O����ߚLj���[�Z��"G��M�&t�	݋��|d���'���ѹk��e�UsmѰ63Y�ԅ�k3X���6 ��؏fY&
tJ ͬ��,���hL4&��ƋHc�G�;.W�G�����:��(��59ȕhi�1�f9W���֜鴂���gh�@��Mz9�U��i�����d �MaDj"5��HM�^R�	���r%y�+��	�ňw&m!�,S�1��bN��D�u��2+��?FK��6��ߠ�}����W ml&6�*.t�EP+���6���Ld�#!�>:�����D�/���W��\bb�b�k�RYXϲ.5��z:eYnKų�mt6h��'4�7N�Bt@�#��������57��|����t}��鮬��޼�yy��x�cu�V��SB7����G�nr�	ۄ����Vc]V�R&y�2�s)�u��2/xΛ�e��L6e�\k3�y&[���>LF�%��&��'��h���v+`%����! �	�`0xQ ����q���߹�ĸ��X�bjǕ�$+*�[#Y�d�x������î*�7M���I.]vW��f֮҉R��q,
�&$�	ɄdB�""���qI�<H��$��Ls�:+��1�e��N[V�²\��PJ�g�=�'�9�U���6&׬{?�&y�i��Q���LP&(�	ʋ	���<� X�nD���<k�,��2�kV[��mrU��������8"�.���yr���a��샀�y��O���*W����rS4ќh����&��ND'���^�Pێ��ϥ'�)|6�w�ef�ɵd2�J椔����[;aꡂ	�?
�	�����o��n�������$&�3�5�|eh�6��o�5�z1a-�S�z>�1�I+�Ja]�TM��eLZ.�sƱ�*Z�����w_�Ⱦ���m������,�O�L66&oal�����2�<'mn�3љ�Lt&:/"��Hk���I�0�s�q�eY�ťk�nAO�d�t��
�\�Eex�L5@��|\L���������'���w�mL�J�&�y8�A��LP&(�	�	呄���T���)�I�KY�TM)-!W�{,�e˜��i��փٵ��a��~$�J���V�ΰ:t�c��q튿�.{W�,�T*�}ZO�l�*s�2Q��LT&*���\��Ų�KF��#SZe]˚��X�U�LQJ�ت1���g|���u?����:���t��C<��;�+n����&[���/���nm�k���F��n�GՒ"��L	� ϚN'�É��p3�Y"�W��a%J1��X_9�d��L2�R�+�Gx�s�\e��ݟc�Ұ��m,�N�{���R���kn�^u�����[s�;���ڲ߬�MR(>�+
��	�o�7�{ᝏz|�+V�s	�u�����4�U�3�6��p�ɒۦ�,�j���_���w�5�nנ�֞�����C & �	�
 �#��_�s)��V�*��dɲ�m��E͜��FH�;[�M3P���C0��M��y���!O�߸V5�skW���m����Y�XM�c������F`�3��L|���P�,�!���;�s���S�
U�-�.�̌f�ׂ5�vZ�\�z���O0C}��c?<��p���3E�N^�To^H/m�?�B_k�^�2y���nc�YQ�(��̆�ni�8�؄pB8!|an�>����j���ʸ��S�J[�Feɜj&U�2���e��Y�˶*�&�"�>CS�a=LqXb��l����X����.f1qE.7��XM�&V���r��㺢2芊�d�l�i޶京sfrS��IƜm%��6U    �ٺP�b��!Npx0?����8 ��h�ı
.n�\��o���[��~:�G�ÿ�c�� �IaT�嶹��2�8q��������rb9��+.B�G�=.R&�H��O�L	��l�-l#�EIQΤP3Y-�Gj#ʺ�E5X��G~��=�&#y�o�����e�X��$��F�H$��aD�?i�WM$&ϓĶ#�Z�$.��$� 6�5N�s2�L�\0�f-����F5��b���vl�:����h	����7�[�_��W/�ϥ/N���f��[k�0J���3�K�(mr�	�l6{��Y��Ky=�VY�k[U���՘�n%gN�����V�����r�o����l�6ړ��d�b���@��]{;�z�6Ֆ��H��ѥ�r�&:���Dg��ҙ�1wz\���e�\�e]���\]S2k������j��J:W��+d�?�q���%�XIv&A���Hۍɕ����+��.��k�4�o�7���M�&x/"�����ʊ W��'Wٝ��Jc�.@�i3u���,[�uQeJ���	����v'yiÿh�fb�]([����i�A�ՄbB1��PL(^D��~ϥ=�`aɌ�HQf���:/��-+sݰ��Ue��d>���"?`v#��� �y~�nr��j�olz�o��:Q��C6y��=��!/��Lh&4�	���16�˒A�,�O�L%���W\8�K.A��ee�x@g\�����P���!ڪP�{|���pљ�������o9{��"��E8�i��5��M�&b��؋Bl=��V1�SV��|>���䭍+����\0Y�3�6L�̪��ɚ�Ӡ�)�x�0���'Ȕbњ�8���J`eً��~s�F��n6���,��TPT1XM��Zq�ߕ��XN,'�˟a���j�_�O'Yfk�e6c�v9��-��]�LdmY�&kY��?�ȏ��a*�W_�L�p�,��l�H�r1�1�ՄbB1�x1Q\���z�B3V>�"Y����*���L���(��Y�kmc�i�m��?�
�&��h%�O��D�����|�����Rnb��1Аŭ��VS�(M�&J���Di3�Z�k|A�;�Kk�_F�5��<fJ��ɲ��u�d\Ya��m��ҿ�`7l�������7�����HL�C���V� ��z	јhL4&����Ȣ�_���	��5��2�%s�ʙ̕`&�j�8��o��P��1?0E� 
��8*oz�oA�X����j���Qb�'v�|��	�i�4A� �(�.�4L�8�u`�\"c]\�7�U���R�a�-Zf��*3YY��66�����g\:�=XO?���m'�*/�f�k�髫� 1�g�c�t�P�xo�3��L|&>���\�Qx|)�",�%��B�&k�fMS�LVu��YU)Se�n��co'�{p�y�Bbϥ�7���*���у�H
 0,/H���L\&.����e1�h��\�O@,6Z�uVJg,sUa�b���&���$/�;#���q0�08��3Y��o���\��W�,ά�A^2јhL4&��ƣ^��"�EXdR�%"֥�3Q�.s�l@�S���*���6�ʡP�G8,�N��Hx}��P]���3�AX&Ա���฾$q�8L&�g%_c�_����b��W��މe"��e[2Ws�T��T�+8h�t�
��^�J�0x��x��H:�M�&�7��O^q���6������Q������I���}�u�<r�_1��@��|�?n��oML'�Ӊ�CБ
��"�P�-�����(���lY�k@�YYy��RYQU��@�%�����g����H�Y�6O��PL(&�	ŋ�b�=�K��'UXqR�'��n\f\}T�Y&Uc���`���1���qg��6!�����]=������z��C%yy���k��W���V�4��J4�l�խ���lb61���0̶���5<U��s	�q�s%Պ����X]�@�EɌ�kM���6+İ�
l�ɥF7��1�,��fn-����%�y�ߐ �	��`B�1��7;�q�N�;�\�`]�vQfR�`N׆�"��,늉��
S���=T����0��0t�E~ͿZ�Mn�Ntf�-��ߣE��-&&�����Ed��S_�V�y��kj�ڬ*7ښ�}Jr�*�����m� ɟ���u#=D� ��?yycrm��<y#}ѽ�B`҈�S�� Ȃ:���Dd"2���0D棑�q)0���\R`]rY;���V��eˤ,���4��m�����G�7��n^q�S�Y� ����������K_4Ն/5��/:ҹб�Hx���T�m�6q��M�^Hn�����
J$�S)�U��E�,˄�`�g���VԍG7oڶ����'��_q�v�����ҵ��ƺ�o�[�՜e��]������D�P�ѬN�-L�&X�	�k��;�cq�/��|�a:�V�նU+��&�{g��\ʶ�5E1��?���t���9\J�wі����x�.қH�m�]�pmcu��n�|�Y�w����mmM�C]��)m�i��	�w�;�}�.G�OԸ��
�'�\"d�#n3��E!�u�@kΌ�8�3�;����`-���;���e�����=l���TTF & �	�������
 ~*�1]�B�J1��9��R�l��ey�Z;ݚr�z��n��n�0;�+g$_���kx^ϭ��[�~{��"�Z�Y�2���Dl"6��M�^Db�#X/9g�\�bRk�)�����Y�XV*�$�*���ww[vU׽�g�b�㛌����;	�!A6��w�Ƨ��Z�>Lȕ�'���N��v|���|"�0B �5�(�/�_a�1�\Z����,;��f#U��T����s���^YA�3&�l	�3����j�����V쫄�ڊ}���o^��~��{�UZ<u��=��t��:�.�B�s�=G���m�\N�=Pf��25/�ljh*�f³ѓ��KH�2Ř�ތ�u�n�9��_��y��K��+x��xqq�ѝ6K5�,��3�O�=�G��2��.����ָ����� ��u� ά�&\rG$O�X�(1����ʎ�[��ߍ��5��_��K�9�����d�����k�h�����b8�E��V��E�F��id�F��4��n�4ӼgzfRY[(��L�0Q�XJɈ�5�[D�DPZz>�*}�G�x�g�.��$����n%���?�[�{�������?ʋ�|�Wxۄ�ٺ���h3DG�qD|+w��?�g�6�	��6r"��M�������a���
{+�u�����V�kmx������.�y^��UznWC��l��Y=�f�F�QiT�F��F��V[L+-z��ŝ�ObS�x����i�����I���B��h���/>��梭��N��׻'�.�̗�~�'e�#�M�F��>�F�QdEF��Gd=����,�O�ҳr�t-I�nq�h�F&")��f��VD[�l�6�5T��EXn����i5�e�"��~�ѹ�����Һ.� �z���J��|>��5lupt���-��/uʋo烃�1�u�ھ���w�M��4�;ꎺ��;�%�3>S�x��|�>���:�B���oK������������$n��_�϶O�݋���*l�s��W�KW��e�ȕ��}s��f�����G��N	3:��ǢCˎ�#�H:���#��B�nO��4�\M=+��9���]_�-�*X"MT�rg�Q^k�Mbf��Z��6����?|:g�x<c��OM�½fH0�#�H��l'"�>��"�6{�J�.j���D�l�3�N��A������Sm�'��X���i;3�.�v�AkL�et]F��ety[\����f}��>[�Y��MU&Z��eb3g$�Baγ8�[�/�^wS�q)��{�խk�}�5L�Z��ss�k���?��¸�����*<۾��x�^�x_�x����>u�cΐw�yGޑ�-�Ot��C��^zV��z���Vq��	L�*e|fD��Ѵ�?Sl��C �;�"Vn�[�c�}�z��ѥ��/�ދ5�    to���9��-Xۃ>�6�I����_n����h;ڎ�9m����tR���������0��V�;�/DZ��5�N#t��P��F���:7����Yp0���jE��ƺ�n����|pu���2���O����z{Կ�����^�f��ig� �_n��)G��/+�rb����]�}슞����`.�p��BX)�Ȣ	~Fy��3Y���|��ު���v�ߍ���|E�/ç�̕�k���NR��x3��9U�]kς��(5J�R���#5�S=�t����W�������(/1���KCl6�hW���PkF���iK��ԏZ��Sk�w[!���~�-�w��{�8>����W����� 7�Gk�K5��-m8B�F�mD��&����y� �p�L��+$7��M"��9ۡ8❑�k�B���^��@,N~^i��due��2>W7��!J�}����F�Qb�%F��Gb� m�������]k��<bl�DҨ�W��l��!$��h��ۭ��UU��KS;��(���K���Y]]�^�̎�4�~Ն���~il��g�yF�����щY�v�L���d�YIg�!^�&Q|a$�%Jd��XG-	���1�h��A��m)Ԛq��p��9?WaN�݁�=�բ����g&�d4MF��d4y{L>����4�)�.7��q!"�w�fʉ�&xMQf���->�o��b����ɭ��8��"��\9�5\uκ�*2W�w}F��g�}�F�����3���ֽ��r̆�9't������?��ģ�E����y�Y*�9���eӹ?�B�П��ÉtT������lm�s�l�kf��G�tL�E�HtT	�&VxN4-�E!�S�-`?�ˤ�Z��G�
6o���^����t_�c��-.��˕����WG{��pq���턴���Ԏ�ss�%��@[n� :�܈��q����|V���Z�v�TZK��%�$�[K��Y��*q���k����lB�|�{tu:l�	Ç��x ƈ1b�#�ۊ1�S�> R��5�RǆQZ���m���!ReK�󅰬8��x�=ݿ��&���C���]z^�r�﷍�B�UB+�oz#�H2��$#��I���<+Ol�HZQmRȂM�4�\'R8�FY$Im8����V~�v�������]X��}ayyq���o����:���kӒŘ�8G�mD{���#�7����n�m׻=+\�Z�]���J;�D�?��+
u���<����Z�����zk�ָ�����Ëta����!YÜj�9�,#��򶱌�4��$W��D4�����Æ{�Vx�l�$	�XZ�I0�%h	���E<�W��Z�� �n��>�?�ov���v�_X<�L�34��hѧ|�������I#�5B�P#�[�Ħ��Amg��c�SbN��Բ�3�� �V�h}(��b�Qkv?�����mX��G[�;�bT��ޏ�BX�[��&��=�^a��.]�:l��pF����F�Qn���J��zzn���V�Y�c�I5�U�[m�!Ag^�RGb��$
[�����O���ot/x��yu���I�Ξi_�y�?؇߽��Sk��#�s�����mF��f�mF�v�jb'�g�yV����40�c�D���
7$)�t�T�2�I�ϰ"`�B�|�/�]�S��V�n�2�i��g�>|%��h��&�ґ��!6vҨ5j�Z�֨�g�"� yz����H�YQd���+%K`�Fƈt��#���Ӂ���oյ�=qԙ�+���u��8ށ�(/ʋ�["��N��v�Xh;+^�*�ԻTp���$���΃�1E%�������Yբ�D��yT����kX+�P�~���_nwL��{ɘ����M��5G�Qs�5GͷE�{��fOϩt��J;+al�Dڄ�����2�9j�
SD;*w���6��S�D������j-����
3x�=���+��\��4�v��o�ڱi�;�1~���v$ ��5r�\��k1qn�M�r��,{�2�h��&��"R��8�,j���
s:�{��f��o��������o��r���?:/vf�u���|,)Ʒ�h{i�qF��g6uk|:���i�v^���X�k-�!qK�ЌH��c��y�Ʋ������|����s��_��8�~+D/�U
k�;��e���-�_n�6�l��`��fg���
��YH6��d#�H�V����ŞC���m���ECt��?��jɉ	�H��I>��C��@�: {Y���e�E{�^��E{��m��M�;�����n;/rL9G��5֥�%�ZId=l�3$c�*49�I�CX��w��q�m��.�k��Uʀ��xm��������&�2y}&]F��et��겝:[����>a��J�7t2	-R���d���/o#:X�����Q���a��ۘ�^W%,qX?}��S���^�}�pq>}{�Q������#��}����v��+f5���4:�N��V��L��c�R-�n2Jx�)�9f")5�����x�n�>C��6���*,:�]x�2�7Aܶ���v	F��`$	����;�ɓ��9h7//l88%��QJ�q)�X"�Kl.�G�ePv��;��Ò�M[����]������~:l]�2��k�o�L�b�H���1z�������i懁|�H0�M2��D��HM�PL�DYIe�����ZD�R���_K��Z�\WRM�\�����x��:,��4����{@G}��载��pu�����^|=x9�xqqy�`َB�����r3�g�>G���<*�ʣ���Ʒ��I��� �3%�EFM*\JM$2FBΒ����d������f؝VH^����ӫ�:j{ń�},	��,�&�b�����0:�5��g�xVvغ�!0�5#���h4	�gR�s!�`�q��S��5a��hO���W��~�o�)�p�7����F��c�9F���c1E��H��C��h�a?X��{�� �p���?A
]��`�(}V��/rq��}�5nMC[L��B�_��E��_&���~�L�г�����\J�9aB2"�,$d	�SN�$u��(��[q�A]6��/�빪��3��Y#FO��h��e{x�t#�H7ҍt1��N��0f��v)�,e��4)�'6SO"|��`|�#�?m�]�Y��J���`��������kX��ǎ����*-�x���������u�e��]n<s�m6Z�V��h�Y��?C�ɉU����3ņe�����]&�HE���f�/�:�G�����Q/^]��s�[�S�?����|%���e����G`�'Ui:2�J"�H4�D#�[C���69����q:/@lR�=�)� F1VS����VUr�:k�e�ԍ𺢆n�mX���݅�C����˝��S��������h�(#ʈ2��(#�ۃ2�
+�*��[��,-�i��&{Da$�(�S�X�����2�ޞ5�B�Zw�'���?�I������j�,��ƨ1j�o��l"���i�u�����f���LZR���#葹4���5��Y�ƃ��7)kż^k��Z�Zef�f0X�U�E�*�[}~��s����������å��\Y�;-����=���L ��^2�Q�Ix������:���o��{������@I�+!ZM�N;A�r�$j]��*c򩁒uo~Rvb8�Y��8�m$	F��`$	��';�ə�����y�`��*yr&b��Κ)A,4ۄZ��b��4�������n���ÖJ�t�:��������ݸ_9F��c�9����0wr�s�!��L!a&1ZՄ%�LFg3%�6�bV'Fs2�l��Ów�G�߮#�E��1Ltft��S��� #�0� o��Om�~������m����B%�!�{ҚX�᜖�+N%�����ZE�N�˺dO�[C�̌�w�ڍ�e�@�uF�Qg�y�t�|b<9ƹ��<+5l}��&�r�hj�1%��$ϕ��e���m��;ݟ=�Utհ	�u�M#��/��"�[���h��X���y�_���@��D�L�\$Qp.B�15�5ݯ�$��H���l    �!'o��V]owu��)��]>�����㫫p5����xo��\Y��˲���Y9���3��$nL��#��:���o�|���>�>/!l)yI�)GhvZ��I�2���AƠ(߸��u���Vd�W�`_�n�;ntOļ89wu/��m�Y�g��edYF���md����·��f傭��e�C�֒��'RYDk����&K�����E�����:�G�Wvu��W����A'jv3��p�b�#ƈ1b�5�	o��E�ų����"���ꢉ7(�)Y&Z�d��ҍ[�V�j�����@#,�f�����m�x�F�`�����NϜj�ϔ ƒ�!�B�����S�-���m(:��7�s=��X����0���+m]۷����r/��IW���
���q�C�QmT�F�Q�-U����çڇ �Y�^Ls'ݵR2����h��H����u*<Y^��4�/���v���u�X[�P��{uL�S~.��N��NQ7�؎	9�Y��(3ʌ2��(��̦�����o�f�~�{�,y�4DBM����e!�3[r(N�Q;��V�nU(^n��z_�K�e��-���s/���em�M��p�s!wv�;����F��h$�F����Tl:����lV�:�EFy*�����$4�1������S'�۪����V��|vyk��2����`n�x4����g�=F��c�x�<f�A�>X�Y�`�ٜU���[V��g$H�Hf5;,�gs��?e��>S�����eǘOff����0:����㰚�!�Y���l^�p`�o3�� ��:㢋M�C�(��mޮ ���k)��.�wmս�*Y]������=�k��;mtm��k�"7w�5�B�{��G�{:������K�"�%J�B�g��ZS�V��I�0Aq�<�/vz�t���η��w����/����ۨ��ڿ==���0ؼh���s6zʊ� �v0���b��,�(ى�oA���U��v��V�[~^��@,�b�1�I �OՑb�)F��b�x[(fjj?����O�������d}�U!��:��q�E�$樄���:>�t��0 �t>��=��/�p�N9K�H�Уma���.���2��.o��S1�wyV6������Y��D���. 2+�I6ڧ�v�D/�e���^�|5��e��[��%�G�C���0U�M���1z�����x���ѝ���:���0f��v����HvN	�1	4
�<U�����h��N�ͫe��\P=~\U^|�_͇����ST@��8?iF��f�i�N��D��Ci�椖����t��J���<��P�N=L�I+Q��b��q���]�{���Z��̽�T�>"��1r�#��ɱ��ZͧL�~���v��u1���	�I���`�:��$��w�k�>~ܖ��u�8�8y{(�7[���W���������`���#�o/����6�3���S}5n�F��qtGǷ��3+~��0Ŭ��蒙 �9C�e����gB�F�?�ZQ��P��a�c��Q[��CR)�ޛ�b��G�5B�P#���@-�8~��������u�uT����K"�g�j��p]�^
�Ƨ�n�*��V �U�={e���?��4�Jn�T�Q���;�2�� #���������</I�:k�ە)�,%>0Od6�X�9IIS�|�ڨ�Z���۷ď.�e�\�F׬��a�5���H*l�Qc�5F�Q��XN�Ȟ����	�|V�׺=ֆ�o 8\��$u�뚶������_�w�=����a𡻰�_��Q^쯖�3;����)���3��8��(�������?�aF���0���`�ϔV�U�sM��� q)'B���*R���Z4{꺀�Z�Y���n��z��]�X=�܇�z���6��u��j�#Y=;��v�F�l�k�z[�v1a\Nc-��L1a�Ra-$DE��I��#�s�Qz%(�`��Zpa]݀?��i?&�b�	�\�0���H�Fw�9Z���h1Z�o����Y1���~�,D
�C8������h�/��s⣽ٯâ�J��e���w��R�b�N��.���O��5ѿ���β�i�O�%&� �5B�P#��	������V=��bÆ[�:�b���쉌\�����O_�$G�a?k˰Ņ}�>��P�]��߶[�w>�/�@��Μ����(8
����(8
�5���χ>+]l}�;p�5����D��բ�b��D��o�E꣓>��V�p�����|_O�od��{{�pq���z�?�w�k���{Ï�ރ�����(7��)���e�7�z!��
"��v�����(���p�)��D��$�`��R�8zf�vs㥆�{�F������E�v�?���#��`!ƈ1��1B�=����fZb�K<+Ll�ѭ���8G��H�	�sbL���D��zg����'�Z�=1��\{�������+�5F�Qc�x�4fvb�$��۞�Y�a���s/�K���j>	��jʉ֙;�X�\|j�,�[݅��e����h>t�n��[�Fn�!F�b�x!�SO�x���g1+'�^r�T�É5NIS"�:C��^HˣP����������U(�'�ʓU8ꊯ�
�f5H��ߘ�����7�!��:���#��Ⱥp��{:פ�5��Ƙr�r�km��Il��H�<	5���`C.<p9B�}%oMD-�0���N��G�O/���8�*/���Ch�E��n֩�3�(2�Pk��F�Qk�z[�fz
��IW��t%f����-EVu�����  9�?��T,xM�h~F�F�dn��ʨ�A�����O�Q����/�:ٲ���t����/.��OC������g�8��F�o���J�� zz҆�'m�Y�d�;�Y�s��
+�LR/�'��Rt�0�5}�����?������a9�WsQ>n%�s'C��%4���J֛���Z��|��}�,C�~���[��K�ݿ��3��:���n��qz��W,M�?��ޣ�_Xdh>���?����k����`���όZ�]n��QbrD�(�6h�-Lf��y��T<��ێ�-�-�qύ���`4�a0���/���n���s�b�\���U�y�f�n�"�
�9Cӭ�&�1C�1^�0e�.���l����m+�Y ?7�vn�v��68��$#�H2���$�����E�Z�J)[��^E��:�2{I|*�x����G���T��� �;��ju��{���������pKF7���(C�Qc�5F��H㩉�b�x��W�Y�c��\42�}T��'.�DM�P���n��/��w_kj}�j@[����W/�-�W�?��z�xq	�����[��^�:Mk�o_�Ψ�J��)0
�B���ɏ�'�`��-߲��-g呭������#�#R��Z�)R\�Y��%����p�-�[��w�rr��V�+mm�"��V�ݥ���> �^�o��«���jn���.���[Z�����{(�(�W]p�Qo��?_rzӷ6}ϋ/3L[#v����HP�����X��Z�U�I��?���w�bm���:�Q�J�e�=	W����r_�U)�<H-%k'�X���j����g�Ҩ4*�Jo�����)�R-�!�rV�ٽ]b,��$�j=6��in�3�虎*��z�}Pk���ֵd�ծ=v\]��3;�s�n�W��6
����(8
���36E���K�����4w��������^K4q))�r�.Hgie�z[P��Rj�	��[w_���|=6���������E��_�[<v���+� n�)��[u�S�G�?'��g	�7�x#޿א�	�����aK��T3�)����̸�g�u��&yL���I�8K���uگk��ݗ���[-x�����/�Kp-�m1��1W!,��-��/�K�����cK���?��l�'����;�cR~U�O��ϟs�Ñr�)��(j����P�f���J�^��%�0}��$�$��&���!�N9��V�?j����;�q^�w����WT#�H2��$#�H�l��E��    A&��R�]n8��1"�VD�X�+Q����Y��h�?��|���vg����~X߀f�Wuy�zc!�\{��8(\}I٠6u��oYS�-����p���'�����z�]��~_Z]��ی�
��mtD�G�yD�������9e?�S͋9��Z�v��J2�=�H��o�!<In
&�Q��;��۵&�������N�ap6�\{�m/�8a�,��uF�Qg�u��+>�;mzsZ�7M͋<s�kw)M9H��VTYJ$���LK��I�Gs���}߫�P�Z����P��T����?=��\w��+�L�۫��{��M����ԝ���#�/�7ت�7�� ~3��Lg�O4��f`^⚁�ڍ���"��B�r�nT��h+�*6h�ǉ���[���ݗ�g�A<�娵玮%� ��{�1B�#��VB,'�Y�t����Ԭh����ȘV<[��E �DFl6�0��p��F9T�E[�Ù�;m���6�c�
������"�����@SlԸEF�f�aF�歁YLu��yVj�=�S��KL�H�3q��4x�E���`�I�$*[���¹���N��װl�C`~�2|A�s^\�s^�un<�Ko?�C�("�H#҈4"��@ZO=ҞN6U}�����6��fV]!�O�⎄��Ա�4����߂�Q��K��a�ׯ뺩w8����e��z��S�ņg�e��g�iF���
͌O���yV�zfH4^Y��ͦ�T!>eG|a�8͌7q��*n]��:��*�ᚲ�vx����;o�ӻ�adF���mbx�Z1����k6t�<Q��DR�N��'9�b�,Y�tj�W-��XםZ?O���>����a��;k���ӣ>p�5��(#ʈ2��E(O��z(�zV>���t����l�u%Bk��5V�e�-��$�5~�U�w���n����v�����V��:��;]���k��U��<�#a�3�8#Έ3�|�g�S���p�~��U���et*F�@X���9�sR����y���E����T�V�ke��=���C��,�j�Vp�@l�IY[i�,����[�Sf��F�k�z{��������9�~Ȝ�Ȭ8MBЀ��x����⸎��q�I�q��'�>n+��Jt����r[������s:[��w�Ņ��CE?��u�9��^���5z�^o��v�����#z^
�zöP��	��ir NpF��1ͣ�����m� ���ONjI�������Ȭ:�\/��T	ʌ2��(3ʌ2o��n궷��Y�2ύZ�]n���:��D�"����"r�d�p#�B���'���t� ??�c�U?$��΍ƭ�(0
���(���?3�g���娃�g�=����P�q�E��CX�u��p�G����;��f0�vLn��ǉ#0"�o{��4¦GxV��zR%+A�"9�Jj"�a�r�b�q�h�v���`Iܪ�{��ղ�zie���j�Ȉ_�υ�"��/��n�����J�Zo�2�+�#%��1U�rR�H)�1c�e���˦��oAem���׺��g���PS��4s5KD�S!"���*�ʨ2��*o��\M�k�U��ʳ���1�j���"�@���δ��[��ҒQQ����o�� �j��q���h/�;՜r퍝����;#�H3Ҍ4#�H���|v���{9��r���̍��X�	4МX����Rg���vm��N�X߅�����$�K˿:����a��fG�;����dL�B��f�iF���f�& v�6�f����5�N�H��#�YNI�U!6�C��6z��*�mX��y_\��=s�����*\�-|SY1�o�S�p�2��*�ʨ2��E*swf���{*�iޥ�j[b!�	PY�Dl�x�L�F
[F��߇U�эF��=��r��}�f;ml�9F��adF���ahZ���Y�������%�2��D�'�kJdM	\8�Xk!��b4\������PC��*;~b��"�/�"�[���a�ٴ���wfW� �,�1��&�I���(��c��4�����f$�kb�%Tkuw�]�W�B�W\;�T�j�G�AhI1�eF�Qf�e�F����b==0Y��ͬ�{=��.IM�ԑ�\{�d�	�eosrtg�(���:�=��ro	�j��v��af2�F��atF���a�&�0��xFݏg4�r��񌹨���$;UC�='�Û�1����=}��f+���'x��V`������X-�P̜>�\�h��(5J�R��(��H=����'�2����w�3́*Ɖb���Ik�%��dL0NQ6��շ�7�¿ݗ�� ��w� ������2��-W�r�Ojt�S��p�b�X#ֈ5b�EXOu�ӣ�t?���J�Zk-��F%J����"�^Ib8��j���~��rݯ�&I+JP`��|�s�V�����ݷb��_;\|}�^B 6��'5Қ%�G^c'r�\#��5r�5\On{8׳"���N8�ky1.�H�3�HI5��G"-gL�k��=}N��뭶�ӗ��E��QWqw~.���=������E:Pk%�݌v��ag�T#�H5R�To%�FLx���T�a�y!`�э^Ѩ'L�Fu"^2G|0���r����aM�j����z�.�[5�wO�<^櫋���}�h�;����P)��Q��ю(4
�%���6��F��dJO�<\i;/l�U�5��rG���Fsm�Q��KqZ��(��*���On��7ZM�5T�Z�n=�c��4������7o*�n�F���Vc7�Nٜ�SNOO���*;+ l=�JS�́0:K�3qQB�g�8��Ej����aި�J�r�o�[���.�@o,��ko.Nށ�r�U�*T�-c��%��.������ן_�R^</^M�~ꊇK���b��1���Ƙa;Z=x�1�G�QyT��F�?���Ȇ�V� �����D*���Œ��"i�h��/���v��ڜI(V݅=���.���Eǌ��y�箑d$IF���m$YM=ƞ�e��YV�L�d��� 9H 9 Ρ�HT�Fp�y���?mv]�Eiw��k+����.T��%���c�p�@���'�h����m��s�c�"�H5R=Mu��F���/*�LO���g�+�P�C!��B$����(���&��L~��엵Ú�U�o��߻�`!i�^Ɓh&��5ڌ6c=�CC���-��O���r��)Wv^�ٰ%<K�O�8���
�b�ڢ���$�F���buo��2��Z�j��\�ղN�h���'��hǵN͟D��g����3��h�6ڬ�b�N��2'�Tn7P�UԚ�$�1��Y)"KJǘ�����J����.N�nu奺^��o��K�n[9��{�`	Wc�����}�ϵd��/׮�g�Ws�5w�S�L���8:������V:θ����;Ȇd�����ĭ	Z'�H��ƙ�@��$��w�i'N�j�𣺲߻Wԡ"�������Z|�pq����z�Z��v|���g�qF�����6��.[ۜ��sY� -�0ħ"��1����Ǔ�j��M���,~�^���#�N�6t��9J��YӨ0*�_��D���(���d9���Lϛ6��i;/�l��m�Ҕ�m���$�
M�
�J�ѣmb?���,��ݓ�˾WXk�+\�dܫ�#��
#��V�'8?`7/xl XC;���D�
pf�8�=��Yy�T�o�K�&w7�Z?����/�0�)���Ҕ�w�!XL�Sc�5F�Qc�x�46jB\>�1�1>S���F�JQ"�4r���x%�*����_@���g�çުI��j�:c{*����i��?	�{wadAF��� Ou�yVӔjivS��H�!�#�s���/�I��9W'���s���
y������/�W���۝o�~���.��˃���+h��S���i*Z�ll��P���P����{4Gÿ��˩�ZL.z��%��*s4���H6����u �hj����t*9lp�5��7k!���|�H-��v��ţ�(ǣ�s�q:�Ȯ\���t��E[��F���F���mq�}f�gE���~� ��J�D��g�%	4b]Α�dK�~����,��Ǧ������9�    �|OkOM�иg�F�j������r�i�;=+>l=Û䃇6Z
���x�9��x��bU2�g`�u��.,��ۢ���MXWw'��r��'�����?Y�E���\}p�b�m�q�i�1�N��B��j��F��ꡩfSM�ñ�(F��v7-��(�)�6;K�'&dVo�s��C�غ�z�;p����k��Z����ӸǱ����1v�(1J����'�f5-��%>S&-���a�n��T�����k%(�H�f�u]�j30������œ�bT�Y���>�~x���?AF�dA���Tg�p�g倭��E�sR�(j�v4�xn�4��1,����Z�ޅ����bo��Ĺ�ɛP]�z��V$�����u�85,㐶�l[+�Kpu/�A�ۖ��]�=���%G�Qr�|�$�n�k=-��%�"6Hn�gNIC�)�H!)�B9�i�{�3K��q�9i۹�������h�E~z
����᝿�h�/75E��9��^p�	eз;4MG��t4M�ә��{z�t��	z�`2/CL�D��HD&k`w"ƆP�M�S�A����/���J��'���|�.��Ph���j4������T�����$0��>�������fzPe��<+�l��"J)L�@�w�Ȩ	\(�0"2�=��Y- ~nq���ʹ�.<��8j���P���u� ���1}J�o�9��6�F���/;��N��Lw�C=+�l}T+�U��D&
�\�B������kU�Ѭ���Bx����Q���:���n��.��b�wT��z;���x�@��et]F���q����y�dá,�X�RG��v�<�L��a�6E�xP���C��S-0TZ�h��)4ﾹza�?V�p������;�s|�4k�эN�:�Ψ3�:o��nbC����>>�)����pA�g�=��9"���j�|����ޠ��;5����Y+��>��ۦ1�)>z �5��{�=<F�mD�F���Zj5E�����!P{V.S�Qnw���fVH��dԓ�&�;'��A��,����U%�ѪUն��>9���|��d?ͦ���Lu���Nnxi�^YF��edykX|���X���?�%�l�tR�
�YȒ*4�VK��DjN;�
��>����a]�*V	��v�uYעr������~^<�_�o�+�.�G��s������pj��>�f���B�X#��82��#����0��n�?\�Y�e��qV�Po����q,E<�%��T0��d?jk彺B��kX<���s�:��޲E��ؓ�J�֛Md��A,DQF�eDy{Pv��t�w��</���kkm���k��D��c#It���8�2,��@�|m�S��;#�$Q�fMW���b�R�#�H1R�o	����� ���Y,Jh"|*DR蔭�(e�-���Ԇ���
~���Ont����r���ՐjO�zk�F��adF����ɝ�ӡ��C$ؼ԰�a��E��)�'"��$�:���B���qh-��'�Խ`u��j�=D|����Ҷlm�����^۰-��X�Sbu�E��j��F���m�z"@�3H=+@l}��Kg�K�x�<�Y	bE��1]�1r3n�?�U�̋�|8���5,�E��������[��Sp-�u���)3D|Ϝcn�8#Έ3⼍8O�ٞ���>8��[��4r˥�1Z�4:��!T8{&�hj�/N������?6���;X�5�O<}3|���fl���0t]F��ety]�gvyVpغi�[�"#�Cd�\f�&��1zmGM�?BA�G�<�F�mx���cͣU�#�1B�o�lj|�5����Ya��?Z�j�B��I�"R	E�Z����Q6���o��y�1�Q]e�]/¶��rߪ�ݿ���|~��ţ~/�[<��q^<��/õ�6mkj����}r���N��F�QqTG�Q�Q\O�p?�y�aÐIUDLb���$Fo'\W\��:B���.�b������\]�K/�񒦃�AO��u�3��=*��CQf�eF���2+1��&d�#2ؙRÜ�h�H�k��m���*R������VZ�˿lF�i+���}�F��ٞW�_�W����B�:Z�T��`�SlK���F��8�LL�z�Գ����BS�kt1�3K�5�Hn	Z%�9+:e���{����u,��f�e�����S3��D��adF���a6u��M3�z�ϔ�K��IO���H�q>"h��6m�?��_���l�*�^�zw��Մ���f���ex*�D��V�~��3��n���6���n����g{Vn�4FR�v%S��BI0��#t�
~�t	B[f�(���V�a%�5�7�d��j��/��_�j^���/VW�2��_���VvC���PL-����3`4�F��l4��g���y��^l>/blH�T6��M"^JAd�xG�x�w�|��������K|]d?�5��N�|����M��Af���;i3�ˍ�4��*�ʨ�6�����臲<+O�iJ�4�&�⭂�9X�?�v����v�w�7,�3,�����^&�P����4�C�'��w�N�B�aDF���9�M+�z�g%�Ii��|�����iB�D��	���p��y)Q_6�d@jJ[D��k����N{��������Z\��������h�U��c��NGP���4:�N�����8-d񃙞$Ƭ�ֹݘ���Ǭ l&A3ED0E��J⣃�?3?���z��V[��=��_�zu\\���`�,V#G�̭����cnm�<F��g�}F��r>O����>���y�b��Zs)�f$DU�>�&>YF2�Bx�MУt�wZ�������ܙ�Hڟi6`��M٨/������6����a*'��=��r��p�d|�.��~y��i�Hd�3o9Wnt��uXP)� �l���]�{�[�]�r����:/�>އ���;�3t@��	���H#҈4"�Ho#�f�E~����NǢ��*b�,D*��M4�D��S�����v&��u�i�<w`5�^/�[��Z�j���.$xE�K�[�z�}���j;<l�aB�M�-G��y*TG�QqT|{WTO��v�h>+=l}������d5�9�z���X�%�@�h��[�:~۬�޺�m����z�{��~���h/�ͪSf�,�unĭ��<< F��g�}F�����V���trDF�! zV��z�$u���$���4RKy �2��ֳѓ��%q�n��{u������x��!��@y'�(t���O���5z�^�ן����%�L��?\��c�;��
^Q21"y"Y6$8c7�ke�d,���~S}X���ʰ�ݟ���/�]���-��~�ϼ�jA�R��h��9>�F�f�aF��f~�1�NƓ��#!�ņ�$.����$eˉ�6Ϙ$�/��%?�߽�:��m���}����qnq򫺼�������6 �����.��s�oC�Yg��F�j8κB��p4G÷�pf���#>/dl�sf���gM���H%�DB�R�l��t�~��ik�����a��4?�H_�n�・�����;�3�v���q����8CyGޑw�y����gq��L�G��Y�e�h9Qc�ND+o��t�
��kaE�����~��F���H['߭�����݅쏏�+�^/���8-:WnT�������F�j�������x2��P=/�lh�t�TIT(�H�9�Y�x�\8�����n���F%����W��ag:�հC��%fxK)F��b�)����v�v�!�x^P��4�uF/c$L3�X�@\ᅔ�5e6	�Gc7~�J�k�3�;�q5Ϫ���@|_�����;��D����}eS7��4��xnT�� 07A�2�����������"� ����ՙѷ'�h���/�[��j�j�˭��>�|��V��㫽��������j��ӥ+>�^8lc+���y-Ơ�������h86���6�����	(�� �y9f�sg�M��(�M�DzaH`���gY2g�h��/�
w���E����j�M���G��oǵ|;��k+L     G�QeTUF��UeMό�b�J���B�O�iK"�'Ag�Q�S��Z�4"�5��%�r]��^��׻��o������⢬߂�r1W�mgEÚ~�h�vN�B�Qk��F���Z35q.��i�u�����5׆���爤�W�#�
�Y�����i�U�����W����ߡ�r��[�*�
��[��:�%F��r�����x^��:�[FMsݏ�����:�C��j�3ϭ�I\��������}���*.�����s-��cS�q3�7g�9�f�F���il���$тM8<���@o9/��Qj���.J�l"�b"K��j.��J�H]1%��9���=r�o8y���+����"<v��~�{�g��=l۹q��@�eDQF��mAyz��U��,&��]g�W�g�SD��Aeʈ��Da3�|t�������������Ww�߾1�YW��kF��`$	F���m!XN	<=9���3��P���-D:�IH!蚓�By�F�(�nŵ&�_�J�j����n�}t�uX���9��vr=�Rw���+G�Qp|�#6�t:7�ӹ�X��(�>��Q�Q"y�ih�U2Ԕ�=��I*X���
P߸��֝��\_��˃��AgwT',f_�O����S�;�k�*�yF���<�LC����-b{*.��Dϋ[v��Y��x"��4�#��d���s69�R�o<����)�C��;����I��T	?
��*�it��6��F�����p�>[[����qh�!2�L���gKH�'3�Sq$����J$}�yxEj	�avD7����H�(#ʈ2��(o%�f��CQ���޳�F��OD�b����4Y��v��m��_��Oeەr1���J�>�vN�Vm�%F�Qb�x%S����H�ω�����ֹ]��VX�iVDJ
ra��Y.EKGO�����jL�4���w/����ܢM�j+z\]*Ro�b{���H���+���z����z���������#˫�]��8�+$���R�wL�v�َ�M����G�~����9����K����3��='��D<���Ȃ3�G�(e�)y�����v��X�R�\{��5�{���f ƈ1b�#�[�1s1&�wć[��Ɔ6\�`R1@pt�H	�bU`�+ibH�6D��?�u���xZ:��t��G$�q$IF��d$y{H6SwƧgA�~���,�)���f�Q�|&R�B�V��T�*RXOé�ma�a�ݥ+�|�-�����|=C��mt��v�?k���h1Z�9X,�l�<1f�tR����< �1�e$![Ch�L�?�*3N���������/���2/������mx�	��.c���<F��et�s�T5�2��˲wy^���r��jej{\�%0�,$f�l�,q1�m����}Ma9��yx�r}�v���I2ec��AF�dl�c�x�0����
��H�ٮtF���&�xGX����b�$�<�}�/��̉���	���]l�;�F6�4I�qF�g�y{p�
�j�f��</(lx�\\�4I�
�H=q%SBJ"K���������_�X՝�<`)/��z�W�z]Z]͋'����G��WG-ݓ�I�1���nt_c��dR��Z�֨5j�%��Mœ<��Y�a��UY0-b=�b$R�B�ʚx���g	��S�Z��n�\�)�~����([&�;�3���_f�����4ºGxVJ�4L[#vi�J	e΀�F�,�Dc�����M[���2�y]������ڇk�*\���ַ34�@�Y�R��9�[�4"�H#҈4"�5H���Aϼ��fŇ�;嘌P�yb��D��H��$"/98�h��[P;�2�%����׺'���rs�Q�NK�'��x838�
aF�f�a�&������ϼ����{۪d�D��D��U��4�D�r���,�*��޼:������h.��7�_<�t���a�3c���7i���2��.���㲜�>�<c���外���Ȃ��/h 2:K,K��8�ȳc�9����[M�9^�����۱:��s/��2B�E�xؙ�#ƈ1b�Y1Oi<�-�l=+�k}��+����M���X��Qm�T4�<~��˺Jo�+F��+�ã�$Yں��9GO��ϕ���y���1b�#Ɵ}$�ēd1��-�l=/�k�a�e�.[OTΖHU�BQH�晆������'�I���Uƍ�I�h��o�^ZݻI��xW��@��b������
�=��z�&&R|��E{G��0V���*<vN_d$Q�͚�ё埵:הm%JJ�c�L>����płʦ���=����[�e��Ry(_(3��e��dT������x��?BֳB�փ�B
.ШIq^�!��B��	�2#�K�֘`�T,K�'����eYo_wF�!z����9��YF��edy{X��!b:zS�ћzf�w���d3�ʑ��<I�!�(ArIJ���|��*�{��݁E�nway�������6Y�7����PH2��$#�H�����	��`��u�̅Z(M����$t�^�B���*������������[}y�V��O�q�������œ�r��o�2/��I�l�Y�������6��H6��'{=U�F�����ǩ���ٛ���Գb����,��S��IeK�Ѯ�ҚHt�!y6���+X�u�V~�y�����y��[����Up�uB���6PLG��y��;�&9���?�>E��)1y�������AVľdVf�m��=r��b�K��0C�M���!�q!��0�
�${2�]�`(�e������`:;����<��nj�u���<��i3���O��YB_L9G���C�J%f cj ˾��Fϵ���v��	h6d�wͫ��k�r�~y���e���J��7:�X0?L^T�e�2r��M�2��`�2٢�d�yB_kk)0�&�}"2pIB;�k�MV�4�����G���n^Y�)����mc�06�O�0�\)#����X##�����o
�Մe�S�x���P$K&}�lO"��7�'�c��N�jYPGj�-ȍ���S��wsx~Y��3��S]�v(�Oh���c7����F~#����LNMWM�Y�jgaf	��:�ĝ�!<hF$��ZjB��*���T�4~��s�o+�rl4/���_X��_(�FW����T��F-d22��LF&o�����<O�P	X�a]��)��)"����H	���z���U93C^9q^��n{�A�/s�/Y9G���w�P�٣�K�,/���p�=�ve�^Z��ת��CYy
����rd9�Y��,�S��ӦT��R�y�b~i�#EV�T�["�1$���T't�<�cM1�x���`)8j^h���6��}ߥ�����ֶqt�d��F$#�ɈdD�� �N�[=ɳ��tV�l�X���	�4��x�D�I'}�% �$uB�$�֓�5@r��-SX�J�Y�������?����ڥ#������X�f(�����ZV���Fb#�'�=�e7MlW�=Okl8�2$��#̺Hd`�� Et���Q�8gv�kR"���n�q_����w�nC���Y!��嵺��݃}pb��k�����rY���_prs�m�6R)�Eq����Hp$�4���|�2�@�.YRԄ�����#�kKz���I�~C��K&�c����H��9���Y�"pY4��jA�='ǵ�0��:
ɌdF2#���H�v��z�NK�V�P3Kzl}�|2�d=���t��%�)1�ur#���!">)��Q�V[��#H �Kt~R���:��-(�'�/�+ܾ��Zc�ŕ��}~�l�)�Ȭ�R��Xv9Qac��G�#�������Ֆl䬒���ʔHJxj��Y$�iG���$J;����������$��|�K��[d��������礍��Y�����x2C$#�Ɉ���l���)�<K�l]\K�K�DO�P�HC)	!����n�� ��7 �q�T�?�m��P.�s��jU������ �jb��1u�t�=ʏ    J�g���v'c3����<��"<���;W�˘��`es����W�z����i��e�[I]�m��Cv|+��x+��9����6�9y�&�2%�~��ۀYi�I5��9�'�gW.�izš2W����XI�A֑�]Ž���3�ˣؾpu��ss���]�ǿ�x�pF8#��筁3}f8�Y�gRP��xǒ�4��w�����LhG;�c0VnZ˳#��e �/������	¿9~0��r�����b����4F�G���a1��F^#�������PӼ�׳����tL&z'�>_s�>�'�Z6j>*�?��r+G��8�l�����̅L�I�� ���ru�D�W�\��试=��l�����Rw3*��[�" Ǒ��q�8r9���^��;���v�.�R;�c;���H�$��B�m�'���Lx�Gw㿄����%�Cj=�>�_��������Y-�D�2���^UW���g�3���E|S��������Ic��%W"�AA��H5���D+�+�e|Tg�6�EM�m�_��;ͅǦ�]�Jg=���c�1�y�<Fo��4K�#��� v���4�h���ZO���QD��"W:E���o �K**�s�f�z��k��;�[�f����s~���)��S���+�f.��i7n+��m�5�y��F^o����5�e��ϤwƤ�5e��'"K$���2�$�Nnx����:G`��>l�2t%�*CWƝ0��0�&��a�0B!�~�Cl>E�i�QYUG�3��y@��.��c�HG{⃷$��ɹ��	�+ی�n�^m�g[hp����P��UJ�חG��9� /C�J�,.��5&�۪��T�F�L�q7�ɍ�Fr#����S�)O�<13͝pt�h��l�:i�4Lg�%FD���^����/�3��_B�\/�{�������l´j�)�h)7�҂��5"��HF$#����~=w�$�U�,)�G&.	#�!����s�5�YSǔ>;����d���צ�?���ª�Yv3��4���_sy������V��j�U�6Y+n�;��xG�o��3�}�F���\���"���rY$VCh`��ι�kY.����?���,2l���m�U/V���zThS�$C#���Hb$���x�Ӫ᪪��Y�d�ɫXԆi"�컞e1��X��Uc#�%8�hK����q��>�Z���p�,�ƙ��mE�P�2R��TF*o#����%S�B��
��g�1VC�2P!�^�9J���XK}�
�!(>)����w!T�W�|^"�\�.��zW��W9_�x-��K�
��+�>�}u���u:��z�Zu�Tl��Pco,9�,a�0G�#��[sş������
����/\�7�^�D�Υ�Ύ��3�X��:<���Z{w�&p�5J�al�e)��%�ξ�Hf$3�ɌdF2o	�����﴾����n����V���r6�{NB���9O��P�o�|��n�]3��%)?(�zw(�O/.����|����r=�+��Yلm�A%
w#����@�}i���'���@�xF�#[3:�;C;��y:�#����,Pg�	F��(ng�,G�E��w��/��L�,Cvv	+���m#\��n*���^���bt���n7�+k���@;H}=��7Tu�p�$���vLJM"�(Od�8*q�i��w}��3�9m_��e_���9�����?J�_@8��̯6�dÇY�ܒ��E˝i�rd9�Y�,G�o˧t͞�Ϥk�8ӝ���"��#Au�$UOY��6(�D���[��d���n{���%@o���������.Y�nM�
Z 75{�S��'�m�seq�����wa�^�z6�z+��_䲽�yޫ��e�p���xD<"���F�3=at�3�]'��L	4J�4;�J�u�'��
�<�Dx@P!U��c`"��h^Z��24��h��k��z|�9��K���D��!����TF*��m1�џL�Y:hL9G��q�q�uR���[r���+�ث(�>��mu��k4��֙a59�D{� �f˛��7�r^X�l k־��`�9��F�ZJ3y���7���Fpc)��Fho�g_O�i/kU���,q�u)�:�z)14u mǉc&���h-z=7������c�=y��n�����������[x�Q���l��He�2R��T�"*�	Gk5�h]����dά�ֹ��RT���R(�%s�X�5KAkEM�c�a�,Yﭒ`����J�������0�>|�9�a��]Y�V�3�H|�|栴FP#��j5�zK@-��H��Y�g�#�n�h���y"[O�5	Jhj}�	��<	�/+?r�_�R��앭[ŷ��}6����.�̹låG���hd���y�LG>#����,>3;�ff�m+�g��������K�#�7��.⒦Y�T��vF����J��yP��|�ݍ>�����@�j�[fD�s�b,�È�o�'5E�L�Y�ek}p'�p*F�
���w�xe*���܎DQ~��b��K�Xi����vsa��y�a���x�3�U��s9�΃U�,�J(Hj$5�I���RO�g�iP�
�Y�eLs'ݱTp��w�=�&;�׬'��Ad�d��y��I�䇚�jb�V5F��+�k\����l��݉I+��F@#��h�� ZMY=�г��֥t j�zBa���"�J|G�������EKکY��t4//��)��)Z�����n蓅 �s�x�F#���?�����,�%5����zֳ@����I�zቋ��x��Hj�W�+�AP�o��/�8��~V�2Ka�/�黍�5SRz�j�<���64_wܦh��JC����^�<4���o��;H��ȍ��3������oO�o��k��S-+�V��@z��ˈe�2b��X�,3N'�;��].����{o����:O�4T���{k\�y�F���,~k�|T�Wl�%���t����*�5��.5�Qڕ�l�N\)s��B^#����k���ZL�zZ��<��� &:f8%e����(�A�N���:Q�"����I�?��梿ڽ~9����P;;����D�Va�0F#���c>1)�s�\���<��J�Ic��(/,{�E�����fj�))|p�8Z]+��.�*�A[�o���`D����&A#��9<>3�g	{��b�wJ�HR�iT$�L$�.0�B��|��ߔ��eI�Y9$�=�-._9��!Y�K�*�e�W��;u*���n/�2b+cD2"y�,�����6u��d���ڝ.P�������1M,��8����{%F�ɿ��p����c�=����k�X���_�/��=�e\>3gix��4cי�e"Rq����:*½g�I��{%L~^b
�k�9�݀��w�>=�,��iX�tX|��ЃoTJ6�kd42��FF#���ѓ5�Φ�:�l�|�Η���Xn��*�)0Z�H���NX�%������%�d�}^N�_�����ˣ�e����� �z�e��B.?�\^�� �������n�~���U����Z����Br໖"Z9�7$E�;�gҏ4�!$�|�n6���x?�����ٷK�O�c���_�Q��S��M�ʢ/���լ��%l��ҍ5x���!��5���Lo>�g�}�kk����3II�!��QZ����1�C��y\�Is�@Y4?�qsJ7N�T�A���!���l6���F`o������}�p]=Kl�kz�z/�"��"�*C�J���l��J�ʰ?{3?���4���ۇZ���#/H�0!6�ټaHf$3�ɌdF2o��c��X2ϒ��j���}�J*B��D�N�`�'=����>q?�d�#U%!ev�_g�b
Y�!��n��2�O[����7��9�����+pxm����+��._��z�w>� �h�f�24ma9�l�^������UC�#��sh�M��U���[W��'ǀ����.n��1�Tݑ%=nLC��T��x�o��8�C����Z �  �~u���Od�,���<��_��ػ����E��w��\Y.cj_�.,�)����l�2ƍ�s)?��F��o(����6�c!��G�W��	��i��{>O�lp�0^��4T�I�<f�S�#I���K��F*)@�����_V�.����-zq��{}��Z�̘uCU��hh�3��F@#��h�6ZNt�?���v�1o�QD������L"J(oy�I�Q��G%��Dp���.�����C�Q��J���
p�(GH�O��X5t��?��n7����Fpo�'Hʹ����|�ܙ�R��i��D눴ԓ`#�q�
}�N���Μ.��l�������j_]\nLc���.66�bsHh$4	��FBo����S z���ri�TC�5PY�.σ���{e�V&u�6��<|{��V2���i��/��*�9�f�@f�0��/�X:#��f3�y{�l��<m?m��4�%����jG�$���-�P9��x�3(��q�r����9\�!�6/�����Y[jd��v �ǈc�1�x�q���I��y<O�����QNx*�"�yI$�{���S!�htg;>��.�4G�L������o���J�m>�I"Ws6_<��l#Y-����y3����j5�A���"P�	�3��A�*�g)��O���"����)u >8G7�{Me`a�K���C��D��6��C��O*� �xY�������|��ם�/ }<�Ii';��jy���S�o������mK��.u��n����#����8�h�Q�wR�[Ltb��F ��|#�o�����T��	�����N[��wP���5a����KC���t!P��L�r�������y��:���a���q�<�]�H��.�/�	/�A6"a��C�_��,�k#��v;�}�>%�����+��	��`�+��RDS*���KN��LS�R���̝�L������A*�t�?���K'|1�F#�È�m�����~��i@�D����}4�Н }/,�&w����(w��S�p����r:��SgfFV>��nέN��_¶�\vӪ�{Qw�8�融XF,#�ˈ���2sS��{����b���0rM{=�8�{"����f%���냷�����+�OK��$H2��9�X��hyt��^�Õ�+>^G��o�g`#�X�^s&�Z�l�kNG�_�k�G�#���A�����G���b��ٚ������%���G�'Rw��譏�أ�z�]��%��;ͫ�0�� (�/./�Y�� �X���̡'b��XF,#���LMT�Ӆ�PWϔ2��X�#{!t4��@��R�8#APa����� ؇�]J]Q�����0�9x�J��a���Y*E۵G6��QlC0#��f���y��~]��u�y"fC�,{�Y�ѱ�u)A|Бt�P��ްn$��:�u���VG!WȦ�n=tž��И��R��4�i�4F#����B�)�����,�u�w6y�$1�"{MI�{A\d��cӉ������~���^~������,e1���,�Lm#��c�1�x�al&�-�������b�j�`mɍB{C���u#	|P����sݨ��5"�dȒ�?��p�]Pڼ����ޞ����òo��C~�bxi���,��F�m�6B���О>�~2��I��v:h�ήY�H�G���DSk��Ltݨ��'���6١��#G�e3���n���L��̰���HF$#��[�d>�%f�տmU����ևځK��nP=K'(�B9��LG+#Q��������x� 9C��S[��]���, veyp)�^�v�A������JI���h݁�Fv#������g7c��gR��&���D"Y�\��(a��������A6��9)���:	��1�$�2\��˫i����������6����CP#��j5�zA��櫦�m����n*��y�1��4}GBL�4�A�\����� ��[�ջ�g%q=�����������_�<x�_ᵇ]��^\�Ò-��l�2��:����@q ���Fp#���n�&�<-�m�$��'96�Wk�<�V���
����Rk�{xt�e��9D���9+G|���^fx�a���Sj>�e����6�pF8#���m�3���OA�yrbCY�;��N1"���:ZI�0��cT�:����P�A�����V+�5	r���慃�䜯/Qu�<�ҘL��,w~���Y��FV#���ՓmfӞ�zj�yc�R-�N
*�%�K"{�C����L�]��j�i{�!���x_g����i�f�U~���b�F�r��u�:�Or5�f�hd42��FFo����yjc�iw��.8iH���h !JN:�R��6�C:��;s����e��+� t4�����/�:�U{ڇkE��jUk�lT)6m�Y�O���Hj$5�I�=�6SRd�Q쮒�r���	Gw��,����DjA���Kc�,�h䨡��%�d�}����8��J@�x���K�۷ۗ�V�%���W�0o����2�Cxd�u�&�آ�Yѻ(�d�qCT݈nD7�э�Fto��L�y�e�-����$��[f�'�v"����)J֍�o߭�T���YN9�k��[�q����y5/�`�?�%k_\�K˃�6+��]�kU���8�����p��\q�8B!��F�O6�M�X��c)gɘi ��lG�dMd��Ij=��Y�1!��Gt��PeF� %�~ݧrG��X��AE��%�C2#���Hf$3�y[�,��Ǔy��ٚ̔G�U��e�'R8J�M���Nyˌ�����ώ?mί��`E����d�-,�T��2�.cT's�1�i�4F#����|�N�����gR'�JD�Edd���j���̽�j��d5Yf�����2>�g��lk����yx��g�j�_��ꉶ�bP:�?�ŋid5���c�`��F^?��f�Y�=O�l�*��uL%A��H:D2$ym��3\=F����*|r��^�UoU}�����
�ޙ}x�
��r��	ڂ�@5�q���KkD�7ՂO�xڌ�U3j5O�l`53=��&�9��{E��0��>���8���R'�*�&s�yy�߀`��t7���Q���F#��c�1�xK`l���'�x����٫��$�29�$u�))�N�1B��	��DÐ�K��ԑSD��κ����P��v�4ts�0�AxDA�#��p8|K ��з��������e9�s!I�c�C��{bu���֜�'�Ȝ�̒S迶9GA$�mN�����帼�"(�lS9�f\�e���{j$5�I��FR#����v��[L�ZTR�)s�kwL��G�ƭ ��-	28"�ӌ%�cR�����.�~P5��;�DU5����Js
ޛp�̳{u�6J��G�#Ñ����a��"����o}�[���:      �      x��]�r�F�}n|�w,U(\捲�Z%�aj�a�Fl�"��v�@ws�|�ŷ9l]��l�F���/;�Dђ%����_�/��*���FQ0���*�feWe�<�y�n4{���߿�z�w�u�� L6��O$Q��x;܊��w��3��뤯3�[Ap�.o5���φ{�G�'���'�+������������Ç��p3ގS����{a��F;X~:�6<]��9���3������Oƫ����������s��=�������_���+|}��Y��ව�໮�FWN��6���M��ߙ�qe_�76�d�����(J�;�{��崳ٿ�_u.Gi�q�a�� ��Y�5�6�=��'�����,���m�9s���@{������.��1|y4|~
�K�T����\��;;��`���zA��0�o�op0�V�=}Vl4�+�ɗZޞ����97�_�v}������vz�XiG��OJ͵��v��ג�Rea������^5����l�=���hؓ��&x"q���_�yh��y�f��j'���ĉ��7�d�.8�ǲz��(���K�9���sz��%w��x�������)�U81�;Q�&��o��K�(iuv�̬�2Ƿ߼+����sgٱ*�TaUWmp\2\�{�D:Z|����oa�����-�ڎ{��<Na��vY�a�]{j����i�q-�d/�ף�`7��|j���9��F�3��Fg�\iu����-9,�V��Ka�@m\2|�cS�e�<�<,[qT��0�ʳ�*��Q�5��hy+�X�[��؇�-n�?������j�G�V40OF�i�U����.E �	����pC���%ö4�PJ�"[��sKNY����)C�/_�Tz�<ծ�n�/�]� #�!�8BT�%��Sx b4V�^'1ߍڗ�qҘ�,�*}��W�Ĳ]���8�/���l��<���6��>7�k���oǡ�ִ��CN���W`"O�s��ak�wx��h7�5�S���M��s�#Wo4Ӹ 32W�����{T�[��ǵ�gĶ|a�{�[�7s�7x��g���ڠ�K��6;�QK1:,�ѷ?���!>�� F?G�u�A���R�{�*(�o�F�d�\Nv����g��~�[*_ *}�\�3��F�d�p�&"���~	v�{���6�9dp�f+�_8���B�.�l*�"�>����@`;�v��ϹO���� �'���[]��VZq҅G�`��>���-.ܽ���A���
��lx�G#llp�e��$�az��o�֤V=��W�o�d���f�?����^�9���Uy�֛��^W?P�P)�>_M��%�h�i�������:b)y��:�P̳��{*���r���3W9����:�󬁻mB:'��?dp{kt#{�����yr��y+|�^Ƞ��}5�ė���Y�X�<uw��|>�ԭ���c�)N���S5u�Ǘ���]�H�i�d��Z��(Yy�{�v�b�[��-|4a���.��H�ZjY=~ޱmy�r*�P���M������V�����V�T��(��j[;��Sd@�	�FH`��qX����/uΔ�$�[;᱘�z`udʗ���k$;�?���s�y�P�{�x7L86��7�v!ʭe��͋�k |C�<�y&n�9�>�G�ݷ#��A�yWO*�
�<P�d�o3��|+Oi����o�<�F��"�Sa��٨�ą��eץR�(�@���u�t�$�3���	��7��&��iW�C��� .j+��X2��w˒Y�/�yF�y�ǘ����]�X�s���n�9�(s��V8x5=3�J
F,T�S�C.����U��˺���9�����y6��D�sX'�����PQ,T����$��;�'�|_|ȁ��|�ŭ�ٸ�ە�{��G���%s������=�Jϗ�:_ʰG,T�ֆ��dO�����X��`tCr�C�ۭf��1@�~�G��x
�A�ex��A�Q�bɠ8���Ai�q�xO(��O��p~�y�-A����5�d#�oϻ3E�r�RꨟG<:�<��9�u�C&����g�I�@,���l��qR���P��\bɠ:�q���6�%^����׽��Q�Jv{a`���������J~T,T��N8������3pG��6�[����Kz�T&Q;gW8g�۾k3���B`���n<��v���b ~%���%R�ud.��v+�p+�Z�c���5�{�nO֏���G�&�����b�p4�6a�����ET��Y�[|:��Gi����u@�rW��s��|T��K���������B��L|�]��xgcB��y
��?��)�|�-�Q�u�J,��&�:�O$4<�sD��!�ʕ�g��d+�7ͷ�H�����ubJ,�N-�<���o\�^���n�!g9r��n��o��U}�Kw��cmF=�3eM��e��'F<����5�ݸ��r��T�NK��S��+��<��\��zvBT����Vr��_Q7U�H<;�YX����&"]��U�f>c㢿ϑ�z��s��� y�_�N��6�y-��B���PB-���Q�O&�ƈ��fg'��J��u�KQu�K,��u�=w��>\���K��ёƳ��"��[�hH[�+�Nz��+��R9��f�)(�,x�2D������]|4�1<l���s�����dIQ�"�[GUg�Ē�tJ��Ŭ��<b�y���n�'�V�j��J�*�Tg�Ē�4P.�i���os��@"������P�?5.���BY����_��BtjhaZ�z���5�*x*�`�����#������v�=@���O��l�~b�`H7p ��O�Z��{�k��P�$X�Ҍۭ��D,�4���@	���t���X��%(<B�/V�}"�(e�@�=�.�a��+��ͨ3�b�`:�kQ�s����O�d&�omnF;���4(�%� �ӐH-Fg���8�>y*���D�o���:"[~�ު��
K�eĒ�t8^�f`2I���<'R��aZ��:ϳa�{����ڎ�>M�8OZu`���O�>O!�;{ �αܼ�";77Z��⺮���C�ܜX2��u,[fEf����أ�⸳qڙ{��c�Z�͋�-��O_2\���҂ �;���S�<̊��a���	ݢ��ч�v
���ϫ�⤄3"J��8j�;��Zr`�~ƈ��Ci��k{,p4�T6.6;)���`��eY�ϗ)�X����(�5�d�z*�a��=G�q�?�O��u2�[�u�S�i�8(Q���WzSX�kI�����a��/�0���i�� 1υq��oCh��)Y�R�J��8��X2\��Z�+���e�o9���~�}�8��W+Mz[�vO�����HG-U"�Wɓ����OVM�2!R$��$������mmYP�-�k���֮��̘��B�aq��v&�j�)|�Zt��DW4P;���|-gMna�w���D6�%�ζy�

{�Ϳ���}Œ��4?z���lu���}�����,]����Ux��d�J�D�(�8L�N3�N�>�Q�)��U��ڜ�:IЪ�����6�ըa[nOk��k;~A�0��sZ5Krb~�U�-R���+)U�dx:ʮe{�]P��+�ğ,�]���U)];Q�]n<k�ԟ��ͫA�[}���ԃ��r�w����1����9ꇅ�+��u|jY��W�Xe4���(]��K*�QmW_���i���h���Ɏ�S��_>�~h��pLZ(ɗ���y�V�߀h,N1;���%��B���	���(�����Qׅ�u�<�ق� �ꛨ��vՈ�bp��8R�������(aQ�lm�m5+�n�v���bƌTj�@A4�KFŒ��h�Q��9�8�~U�2�q���~�H�`�����Q-q��x���A���d3�|\l�6ڹǋ��T�9�2����K���.H|O�"p?���/Gp?$|{n�o��F���U�Zn$_C{�r]6��d�1u���v�����	�r³�xzO�����n�`�̸���inO��s"�    1Z�������5׶�!���bURuH��ڞ���K��Sԁ��E�d��#/i�d��c��0݊��`��:�b��u�]����ߡ[��B��\�ø���ba������
Tϕ:��K����A��jc�P�mT2��;�4�C��Vl�d�ވ��K���}����K2�Eg��q)�����qX�:j]J�E��m�q
��t�9�"Ey���j��c˄�j�jVK���Zx�b��ᖯ��K���G]�G9��~�d=�c�540����0}͵��*FW��r�g�-,�0�t'����IM�)�&2�d�:5ǎ�!'�d`s'⣃�?]m���+���$�.^!c:
�E��]dFS�9
�Q�#�B��R$M���%���K�*:��H��������T�h��v�e��PLS�Pn�<n����H��Œ���>�{)%�8Q��Q�Imq����t>/\|�J��W�c��Z�T,��'d�֣���LN�\�]o���L��A���u=X�ͤ�*�3��ә��O��(/���b/��0"�t�7G��T���%#�Rz�̚k^���듩���U,�[Wi��}k�W�B�#���Jk��C8�H�ԞN�dW;���U�$�>V�d �s,��ZA\=��W�'O����/��M �v1�^��fRX�R�zT	�0��;��D���yh.�p._/�L�b2f5�.:�a�dz"ζe���S-Tw��
���<��e�;�N��y:J��$n���%�p~�S��Ɗ�T�w���t:�<!�����JH*����xs�˫�~Q�6,�`�:�y��ْ���`D��S��d�I���
�.���ri�[��R�R�_E��{g9EI�5כ;Ѭ�⢜Rꉎ��W,�1��)�Ȳ����pQ�Έ��X0j=�	�����,7�NM����x�~�Jy:�k�՘Y�l�n�)�'��v�y�)���P������b�HZ@@IA���@SJ2�ց}���c*�n�p,��kZ,��z�l�η@N��Y�c(ia���:�������,�Z�G�D�M�gC$-���&+[m@��[TT\�E�;W���	�\KW�gq�Y\-��ao��az�~�Y~�^]9�V����\V���G��yH�t�{�g�t��f�ozAD-���^,���@���`N@:��x>A���bC���� N��JM��jZ#Sst&�.a�/R����Ɋ���g]��zXJ�D�M�*�e�O���G��MxG~~N�����(��Q$����Ld�W��0����%�W��LuZ�_ki��Q'����ϲ�jr�w:x�/�� -7�8v\ǒ�o���0'�� !Ӽm�Uݹ�:/j�E��:S��Nܙ��_�9�yrf�A�>��Fz����ٴ�%l"��_�-eq�.�?��%!�qo�|*xyUR�l��'��9zN���A�%�-A.c5#����Բ�hZ\�b�l�|	\a	h�p6���G��czP���,����P-E$�[gJ a��	��[=�F�	�3Ţ�u5ߖض����d�]efh�~��W��p�W�\������N��{�^ҼvUh�f��lP�bF� 2x�c�șD�J.5ö�&�����ɯZ�E�[lV��!n������B�?�Ω��*
�;p%���~�nG����Մ�0�N�s}��7�8a���L�t�0�16]D���B�`Y(�B�|x$�"�?2�Ev~x�sЧ�v�򥹡���O��s����$*J�����8w�?y��Z�KqBa�9��������_N���$�3я �rd�:�g�6��Cx*��R]�b (�Q���i�ۜ� �C�`پ�����
���q�r2;�V����ڀXVqޏYJZ,�t��܉�<�P��<����Eg.��R����4>�'���Hr�8�}&R\뀈
S��-���Ü��,�XLO����<y4�y%�#U�ձ�Q�%m���4 x�(��wy���lj�����s5N�v;�Ae��lV >���U�if)�p�6��߾�Xl�����,M-���{&�I;I�1Ȧ�jz�]]n'-PNd�D5�cz�G��	ӫ�;�H��h��J�{uk+�n!f,�J(���V�]�jI��ٳ�<Q^�����`�:Ә]�K3��~Y��R#HK`H�)|>s�U�)��G�T	�&�n�u9�6q�D���OULs��u:��$^�XGa����d&�Ȍ���J'��%���"�YJ�R,�qtF�Q� �J#�jx�u�a[�6:���he�u��]g�r#K-�3b��rX����B� �w����T� ��ĘX����.�������GBK��G~^��ǘ1Ou6�ӂ�y�|�ҫ��+�m�#i��;��3��\?G��?��y�^N��R��^����K`��ԞMg�T�X�q�Փq2��w�6,]OVu�B>��V�����#G,�Hws��_~����
���2�|������T(���P��������5��I�y�G�����t��m�������ㅠ�B(g���@.�PߞJֈ��'yg�;�?0.j�<��qm��^`��L:�׹��P��� �ā};S����2����̣���&�kd��r8X�b�����`�i��:�� TSo\S:s��I�zJr��#.�/˹��X���Ϫؾ8k�?݌�1��7|�qu��j3���������������;�>骻��J:����%��'��ܛ�~*�ʞ��n3,��^W��V�s���t��فͤB���=�x�!>���0��4�Wi� ���V����i��m�I���a��V�(���}�)�K�5Qq�@��z^<5�g�Ok��kSF��J�E7Jֻ�õ[��;��ג�)�y�L|קR'C��\Ѻ���B�d��l�d"�e���ćz�L����݋� �ݰם�dQ��8�լ�-X]��{���������{ qҭq���vs�n�(�<+\�|��oJ���r�k�o��jt1>�`��g2�k�h����jW����m�����#����<���-|�P�� 1���,��=�$��4���t��G�SMJ�%�3ԏ�A��3U�t����ч"B�8j�����!�P�3���Ք�-(w��{�G]�
�W�Q�O��ۜ&�.�;��zɠ?;Ony�D�L�B����4p6s"4��9,��yy��z/�(q�4�Օ�*a*-ie��d1��}WsIi���v���ҥ+y�P�a�:;a��ά=�R��������H�<����o�+;X`x����]RqSa�� k�v娄)��=ޠ3�v���=��U--��V'-l����G�m�$/��
Z�^I�~�}�`�Q<k��X��⾞z��r3�u (��J�yB?�l�
g�֊��Tq��}�TP�6u�qy�xp��u�n�>��
�hFi2h5�>qR�[Pҫ瓊���<�4�AQ$���̿�8 �#S���R�h���H��۬�����rN�;t�al��:���Ff�q�b	,���l�q)�3����9�)J����ml�5p)%.!R���95�'d̄X��g�nu�_�7;i���r%�J�UN���_"�_�Iy6ädA(W���ǲp�H�
z�߂{�Kh<��y*w�&��X{[gR���F���y-���Iq��5�DӤ3��Y�V�[�< g(}�y�s.�8B�b�]$�J	b�1�րjQW���92��#$
�"�ۛU�ūIC���t�*q<	V��_u��PL���7���e�@5�m��Q�ZK�GԤ���l��p7�\�߭�s���~���`_�v�|����k���|��*D�8j/q�#j"�"Foz���r4��澌�ʒt���L���՞67���6��.Z�,�q]g����tg���a���!��P��z�f�j�sl[���(�(rVS
��͸�Q)� 'Pv=�JMLALi�s�Ak!H�d+_s���a�Y0����ľ5�3s��Q틺s1�ꈷ����I�W���,뉲��܋�L<�ҼA� �l!�yu���I�t�ͳQ�Ռ_ByC��j {  ͸�lG��3�P���N���!���έ6�T�K`��Rg�� /����'���;@,�����;֩�`���,�-<�"Z�3�ϵ��TʹP��茱�]w�9?�ʋ�z^_��Y�`|��AMx!'&�a���J����K�(��|�u!�^�o��\#j��n�V��[n&��wxG�^�Չp��T�t6n��:4��N�"���ᦂ��w����^L�l�^�C��8�9�5h
NPa�����籦��&֩��?Q?�K�܇�����u!��n����h!3����4<���-�\����xg��XC=;���MW�E�\���k@Z�m9�n�5��I�'3���~��_~'j��TM�SA�k����3�e?���<�.�r~+s��ǰ�_��(h�V�a��#��P�q�v�>%P<��ė��DҼ�LI���:��1u 4e~>��fv��f�~6��I�f~K�#���(��ǩ��u��Q����y�Ӕ����Ҭhv�"Q��US�TP�:��EΤ�z�|���?�v�#ޫ�'e{g��Ύy��n���:�"3C��$_2��H;,�����s��� d�]=���:7C�̃p�����N~��)�$��4ˌ�'�����{      �   �   x�-�ˑD1�O�l�$�L�q��7�ƶ�2�O#�����LP��hcb>:���B����ǁ,3�4�lS�%f ݜz?f�lI��ɉ�'7ʞ<({J?���O���U��+��W��6h_�>�>h	�G���r�3�[��G(���������b�ݐ"��2}-k�⠗�T׾E��-�5��f�?_3�+�߹�����K?m      �   M   x�3������^l���;.� ��{.�Q�4B���������������������������9)�=... U�      �   V   x�32�0��ދM�]l������[/���rZX���Xr�p���Y*Z��Y�Z�[h������� LA�      �   z   x�3�tt����0�{.츰����.6\�p��¾��FFƺƺF&
V&&V�z�f��x���8C�]�8/̿����=��M`3���hZMͭLM�,��1ME������ vh<�      �   �   x��ˍ1���bc)�^^�u�5@��S������]�~٬���=����-Qoh��A)�f�5��a�ZT��ԧ��E׋���C����&JO�������������\8=�g���?�z89���T3"�      �   �   x�3��17�4671qH�M���K���T1JT10U�t�w�uI������t�*p�vM��O��I.L6r���56-K.IJ���N͊,��6v/r�L���4202�50�5�T00�25�2��31��60�#����� �%T     