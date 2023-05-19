PGDMP         4                {            nest_project_db    15.2    15.2 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16671    nest_project_db    DATABASE     {   CREATE DATABASE nest_project_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE nest_project_db;
                postgres    false            �            1259    41722    country    TABLE     �   CREATE TABLE public.country (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    41721    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    234            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    233            �            1259    41729    genre    TABLE     �   CREATE TABLE public.genre (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    41728    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    236            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    235            �            1259    41115    google-users    TABLE     N  CREATE TABLE public."google-users" (
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
       public          postgres    false    229            �           0    0    google-users_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."google-users_id_seq" OWNED BY public."google-users".id;
          public          postgres    false    228            �            1259    25208    groups    TABLE     �   CREATE TABLE public.groups (
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
       public          postgres    false    221            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    220            �            1259    32998    images    TABLE       CREATE TABLE public.images (
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
       public          postgres    false    227            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            �            1259    41560    movie_person    TABLE     d   CREATE TABLE public.movie_person (
    movie_id integer NOT NULL,
    person_id integer NOT NULL
);
     DROP TABLE public.movie_person;
       public         heap    postgres    false            �            1259    41821    movies    TABLE     e  CREATE TABLE public.movies (
    id integer NOT NULL,
    avatars character varying(255) NOT NULL,
    promo character varying(255) NOT NULL,
    name character varying(255) NOT NULL COLLATE pg_catalog."ru_RU.UTF-8",
    original_name character varying(255) NOT NULL,
    rating double precision NOT NULL,
    years character varying(255) NOT NULL,
    durations character varying(255) NOT NULL,
    country_id integer NOT NULL,
    genre_id integer NOT NULL,
    text text NOT NULL,
    director_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    41820    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    240            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    239            �            1259    41539    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    41538    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    231            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    230            �            1259    25243    post_groups    TABLE     j   CREATE TABLE public.post_groups (
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
       public          postgres    false    223            �           0    0    post_groups_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.post_groups_id_seq OWNED BY public.post_groups.id;
          public          postgres    false    222            �            1259    41790    posts    TABLE     k  CREATE TABLE public.posts (
    id integer NOT NULL,
    "uniqueName" character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content character varying(255) NOT NULL,
    "userId" integer,
    "movieId" integer,
    "imageId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    41789    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    238            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    237            �            1259    32951    profiles    TABLE     m  CREATE TABLE public.profiles (
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
       public          postgres    false    225            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    224            �            1259    16685    roles    TABLE     �   CREATE TABLE public.roles (
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
       public          postgres    false    217            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    216            �            1259    16696 
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
       public          postgres    false    219            �           0    0    user_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
          public          postgres    false    218            �            1259    16673    users    TABLE     @  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16672    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    41725 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    41732    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    41118    google-users id    DEFAULT     v   ALTER TABLE ONLY public."google-users" ALTER COLUMN id SET DEFAULT nextval('public."google-users_id_seq"'::regclass);
 @   ALTER TABLE public."google-users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    25211 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    33001 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    41824 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    41542 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    25246    post_groups id    DEFAULT     p   ALTER TABLE ONLY public.post_groups ALTER COLUMN id SET DEFAULT nextval('public.post_groups_id_seq'::regclass);
 =   ALTER TABLE public.post_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    41793    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    32954    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16688    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16699    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16676    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    41722    country 
   TABLE DATA           F   COPY public.country (id, value, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   �       �          0    41729    genre 
   TABLE DATA           D   COPY public.genre (id, value, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   ��       �          0    41115    google-users 
   TABLE DATA           q   COPY public."google-users" (id, email, "displayName", banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �       �          0    25208    groups 
   TABLE DATA           G   COPY public.groups (id, keyword, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ʌ       �          0    32998    images 
   TABLE DATA           \   COPY public.images (id, url, "tableName", "recordId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   h�       �          0    41560    movie_person 
   TABLE DATA           ;   COPY public.movie_person (movie_id, person_id) FROM stdin;
    public          postgres    false    232   ��       �          0    41821    movies 
   TABLE DATA           �   COPY public.movies (id, avatars, promo, name, original_name, rating, years, durations, country_id, genre_id, text, director_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   M�       �          0    41539    person 
   TABLE DATA           D   COPY public.person (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   <      �          0    25243    post_groups 
   TABLE DATA           >   COPY public.post_groups (id, "groupId", "postId") FROM stdin;
    public          postgres    false    223   #s      �          0    41790    posts 
   TABLE DATA           {   COPY public.posts (id, "uniqueName", title, content, "userId", "movieId", "imageId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   �s      �          0    32951    profiles 
   TABLE DATA           w   COPY public.profiles (id, "firstName", "lastName", age, "phoneNumber", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   Rt      �          0    16685    roles 
   TABLE DATA           Q   COPY public.roles (id, value, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   v      �          0    16696 
   user_roles 
   TABLE DATA           <   COPY public.user_roles (id, "roleId", "userId") FROM stdin;
    public          postgres    false    219   �v      �          0    16673    users 
   TABLE DATA           c   COPY public.users (id, email, password, banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   $w      �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 22, true);
          public          postgres    false    233            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 21, true);
          public          postgres    false    235            �           0    0    google-users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."google-users_id_seq"', 2, true);
          public          postgres    false    228            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 9, true);
          public          postgres    false    220            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 20, true);
          public          postgres    false    226            �           0    0    movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_id_seq', 513, true);
          public          postgres    false    239            �           0    0    person_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.person_id_seq', 900, true);
          public          postgres    false    230            �           0    0    post_groups_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.post_groups_id_seq', 49, true);
          public          postgres    false    222            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 3, true);
          public          postgres    false    237            �           0    0    profiles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profiles_id_seq', 19, true);
          public          postgres    false    224            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 6, true);
          public          postgres    false    216            �           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 33, true);
          public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 32, true);
          public          postgres    false    214            �           2606    41727    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    234            �           2606    41734    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    236            �           2606    41125 #   google-users google-users_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_email_key" UNIQUE (email);
 Q   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_email_key";
       public            postgres    false    229            �           2606    41123    google-users google-users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_pkey";
       public            postgres    false    229            �           2606    25215    groups groups_keyword_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_keyword_key UNIQUE (keyword);
 C   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_keyword_key;
       public            postgres    false    221            �           2606    25213    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    221            �           2606    33005    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227            �           2606    33007    images images_url_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_url_key UNIQUE (url);
 ?   ALTER TABLE ONLY public.images DROP CONSTRAINT images_url_key;
       public            postgres    false    227            �           2606    41564    movie_person movie_person_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movie_id, person_id);
 H   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_pkey;
       public            postgres    false    232    232            �           2606    41828    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    240            �           2606    41544    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    231            �           2606    25250 *   post_groups post_groups_groupId_postId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_postId_key" UNIQUE ("groupId", "postId");
 V   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_postId_key";
       public            postgres    false    223    223            �           2606    25248    post_groups post_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT post_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT post_groups_pkey;
       public            postgres    false    223            �           2606    41797    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    238            �           2606    41799    posts posts_uniqueName_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_uniqueName_key" UNIQUE ("uniqueName");
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_uniqueName_key";
       public            postgres    false    238            �           2606    32958    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    225            �           2606    32960    profiles profiles_userId_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_key" UNIQUE ("userId");
 H   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_key";
       public            postgres    false    225            �           2606    16692    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            �           2606    16694    roles roles_value_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_value_key UNIQUE (value);
 ?   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_value_key;
       public            postgres    false    217            �           2606    16701    user_roles user_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    219            �           2606    16703 '   user_roles user_roles_roleId_userId_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_userId_key" UNIQUE ("roleId", "userId");
 S   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_userId_key";
       public            postgres    false    219    219            �           2606    16683    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    16681    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    41570 (   movie_person movie_person_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_person_id_fkey;
       public          postgres    false    231    232    3551            �           2606    41829    movies movies_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_country_id_fkey;
       public          postgres    false    3555    234    240            �           2606    41839    movies movies_director_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_director_id_fkey;
       public          postgres    false    240    231    3551            �           2606    41834    movies movies_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_genre_id_fkey;
       public          postgres    false    236    240    3557            �           2606    25251 $   post_groups post_groups_groupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_fkey";
       public          postgres    false    223    3533    221            �           2606    41810    posts posts_imageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES public.images(id) ON UPDATE CASCADE;
 D   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_imageId_fkey";
       public          postgres    false    227    238    3543            �           2606    41800    posts posts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_userId_fkey";
       public          postgres    false    215    3521    238            �           2606    32961    profiles profiles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_fkey";
       public          postgres    false    225    215    3521            �           2606    16704 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    3523    217    219            �           2606    16709 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    215    3521    219            �   �  x��T�jA<O������ή~K>fU�I�< !0��'���D�5��6��A�R�EUW�X�9a�؆�q�˻Yٵ�c�A�E��:˪D�����)�����.���S�P�u�Qa�&ه���*�@T\a�`�ޘr+��	�\'������+S�N!�X�
m�vp+����(�sF�j�kl���	wz|Q��)�C�ܻ�@d3�W|�Ʉ�T��Z�{�s��xQK|0]���	D��=Ê�c$�J�����l�����_.�3v�g�)�zj��ߤ����Q���-WQS�G��s���M�@����:�!�鳨�@ �\�%���j�WP r\����I��;e\o�@��/S�`�p�?�sq7C>�d�'y�{D�$��      �   u  x���In�PD׿O�}�79K�)2\�!8p�����%E$"K��j?���d��܄4I�$���!f�<]fż,�Ǥ�!Q�WD���'EקK�1��G�� ���gE�����L�,(��I6��Z��h�[��?��-�&k1�
uI!�b�����j1.Q��ɛ/��;0�c�ITi��:�ww�`���AӲ�}ZY�Y�K�S�����?��N!�%�1�̓���v�{�E-�^��
�v<���m�Qv��5N�%�YP_�,g�:�Cs��6���z���Eݚ���r7F0�� �d.Q�fo�ۯ�V�Q9�2���^�f�Rj���L��	�N�Did��J6�2�1Z����i�N��Ӝ�~ �-��      �   �   x�3�,N-KN���O�I�K44�tH�M���K���0���/콰A�[/l��$�^�uagg���������������������������9).#�s3Kcs4�����$w*\�a����`z;���Ns+c=SKS,v"Iq��qqq ��S�      �   �   x�}̻
A��z��˄\�ɳ�X������8#B��|�p�/AH4�F��͙�M��)��k��,��J��y����H��P}R�U�JP^Z��sE�i�m�y����I�XF�&���u%�sq1�d_�[�;#\K�      �      x������ � �      �   �  x�=�K��8׮����������7��v�ʖ"Ƿ������<���߉�g�_}'/�ѿ����y�[g�5f��>O�������>����������1@���������������ߞZ������g����_,M���p.�f��z�4J��Wc��Z��)3�<�=~S3�	��<���@������hS���U6��;����#+�4�{A���,�F��eh��5�6SH[_��˒i��W�jM|����kB���i���-C� G�W�\���w|�d�_��f,ٱ�60���W��� ��Җh�BM�����Ԇ��V��dO�a�ojo����2o�9��2�vE(yGkW�b�Ժ[��=���O9K몾%�����mk�t�ֳ[SX�Ю��Z�6�5�1A�nKS���hyyx�`���LdFaO}�]�ʪ�6��-X2��]H�ai*2�P:mK2��K�Ё�e���@���S��ӳR���%��f�L����� ���~~"O��\���|�{�6rܭ\����~|4y�Pz9���p���h
��p�RGSP��y�Z�y��,�����#��`GF<2�)��{�"�ϯ�U�+l�����0�D���+�@(��,����oiֆ��l�K<�ߕ�(��%�*:GB�XMB�.hA:.^�RXa�Gih:���H���s@�g��5n�{r��<F0l�ieKb�h�2y3K����'���Z1,Y%��<-�� +i��j�t�<�U���?ЗK��$h)�i	i��ݱ��&+��/�i���¿<kA�J��A^i6?���6�P4�a���I왏�Y��<z��kOs-Ǌ6�����}5Lqya�t�G/2B/"�[d�\�v��(�����!btn�Q뻾��I���V�̜����;��{E�#[�.�Q.�x�"��؜ɸ|�)6��#ir[���D�P�>�^>{��M�����$`2��f���\�0�"�syͩ��㚭�0�����6�R�d���q���o���]���k4��U��"��C=�1����'�`��]��+�bk(��/��R�m��pً�ꏖDtgM�\���h[}��R����<��6�0��B�!6��&�4�fI^%��rs)��lS ���#��S������ �cq2sE��a!��hm>f�X��쒀��w�gm&�S�G�����Kb% �n!�m�[A��L�;���D k	�ڋVo��G:�Ʋ  ��,6)��"��;��=�L�X<��� U��\�P=̍�����P j+�n(�D^#��
�ڤ�x�ZQ�[s�
5M2�)U�� 2N�B�}���O7�{�ULr�q�ƈ:&I�D�㺐��&۪�b���j$���d����D��"ڱcN��(�4��-�k�d�����d�&�/�h���c��K�ŔwM	C=N�.����D���E�8	!ejⶐ@�$k�2w�{��L�P4Q) D��r��H=�2lc��HΧAB���C%"]���<�7�a�&�P�b<��1�a;I���p`�҅�~C�W�P'�qr��fr;�z�\��.N`�v�V��9���L��^���<�Z���04Kɱf���dg�����څ���B�B������3B�F�D]�lwJH��ݤ]���d��MD⦔�('�ﵩ��dT:y�ɦ.6u�E�H�D�p��aR���x��P&�S-��M"�y������U9�sW�`ߨ�j��L��I9@Y*���f�(�Xo�Tk��Ŭ�����yR�A�"?Ӥ��Ի��)u�x$�������ԁ����K��1�J��-�����89�D<n|O�8�ar��8]>]-L���.�-E���� }�e�f�Cr�Dr�)yؾ�rm0)����x��0|"(!�0d�����HY�҇�m�Zq�}�^�tX�K�H�A{-��e�#)}X�#���@����j�^�'����%������t��ӻ9�hf��/��-s�Z�
���aRM�eb�Z�$�V�%�?&�����������?��Zˠ��1K�� �D)�{�'�aR�?L���5Ir�zǤ���1��k��4I�O>�t���$YI�'���=�ĕ�RB.��u0p���5�y�qM��2Y�g�<���G*����K*��#�HH��ń~n�0��k
�x�贂|�NH��0탈�|LV!�ج��A~����^D>.��*"̃�K$�s�
��P��^�z��Z�����*���W8i�F��6��E*�'��iZ����
�p�n[���;r�^�rK5-�����dG�r;"�6��eQ�6�D����ф�0ݲ�a��SL0��7(6w����RE�A���R�S�����?��R��*��%���M��G��B����`�oI��oZ1�O�����h$��C��BP�@��D)0$M%�]�e�`QF`�
����}�	Λ�~ʵ@��� �MꉹL:�Jh�����D��=��Ț��~�|� �_���QP`������B�0��/�A��P
�
ҷR��^/��+�(����-GzH�XR4�f��( �HBq�������yU6��e��n�AfGAACX\J�*^7̔MKn;�z��8u�$0�R�w/Q�X׸���H�Pe��&�Y�o�H�C����.3,�P>[n�o3�z�g�����a����v�$-^�a��T|�)&͘��8�$3-7��IxV�M� �UD>�
�؏u���KA�T��l�N0 �;*�z��~�p�a�����4�ǉ��k~I�4(�C�y���TICc�����7����.��~ $\���n&lAA�q.��!�6 �T@!�+�.�xi��!/$h8�{���B"�7i8e���)����^*'�����I0�}P�˙��U	��Hn_㑚�x�P�c�p��ڡP��H�[+���`���z�:HqZ�������jb'\Q0��5L�j�tR-'�OE�}x��w6�CQI��=�}�*
(�iP�����v��Z�feu�j�r�7Z%��C��?�/� H�x�E$�Cb���W�ʁ�p�����D��e�_B�&�<�X��>�����A�EPI�.-����8�:�+�?o6�$7(�B#�,���HEA<��k�����g����7h�7O�s�~я���
U���e���bЯ�������)1@p�������H�_      �      x���rGv&�{�)��j;�EVfeUe1�C��Z��V��g�eUe��@l ����|��������V�=�=A�qc�f x���¬Kf�,	bo�9A�e�% �/���k}�Z�Z)F�]�fVV�_mW�_7˭���e�v�]K�^\��3Y\};Y�j.��L�J��e��e���D��Nt)ҤM'�6ͤm/i��*MGkW�]�WϷ����wϯ\���6Y���/4��5���z��P\���Q�yQ�E]�W4Y^fYmS������B��ǹT��?�:���ӣ����������>/F2��HH5>�;�>��#5:���ͣ[����;cx��чx�p�y.�g�~{/�:܅�E�����Ã��������w������Ǉ{x�� ^�7>z>k�������x|@���;���ŷ���ß��8�d|�|�.�
w��k��7�7����1>���N�>�n��>���/����ҝ��pƇ������do�1�b�p��㣏�v�%G7�������w�������[��Ǉ���Э��9_7�!��!<���Q��l�=�!<<������	[��{0�[0r����OpN��p���.���������c��S�݃�G��[��G�ux��Ɋ&>I�DcQ\L�E!�˪��iyʥ9ˆPe��B\ț��\�ImD����m�.)��*�H�o=��B}���osm3�ZQ4u�D����l����L�.�"<w���+�yۮ���9�J�m ґ�`��|x��y^{�n��\�0?���Z�;�dhݺǎ��>.bx�CX����7ym�����쫣�h��Z�E���x�~�?��A�k���W�m�R������łK���s����ng�g� �����>��?���K��-�>�[0Nz���_���+�<�?w�� �>���F�[h��'��O�L�t��<���x�x��s�O��ӿ�W<�}���	O�j�|_n�����i+������t�7>������Oߢ���~?>�O�/���&�&��[�yoL�6>ox,l1����Ⴤ�97��݁/�/ř��|�f|w��>����>B������}� �dxXG���~:�K���x1l�	؀I����xZ@������mڰ�1���`gFY%N��YV�� _Z�f1BWZWՅ��*S��U�&�+S��y�([X[�<�/|��c���6ύM˪��i�J�[�]��yu����Ǹ.�)��yp�~�}^��(Ko"�H��S�����H��f�ڍ���2���}��wan7��� ��ۏ[���H�5�"ۄk��gw�vn�#��c�G4 �+\��K�4`/�m�7h��6X?�/8��=~yO�d�΃�,+]UxeA��[�Z�J�*�F$JU6'�'���g�R�l����?�����)�2�`%��λ�iN\T����� �:b	ܼ���Ҫ_�W'+�G���A�T��F����hxh5mp�$6���x��Nw��iѼl���Up�b��7x���ڢew�s���m�T�5���+���d�n\����kL�G��%2��К=& ���'O���d��n�k"���|=v+
?W+<�[_�����-6�l4���;���a���]�r~������'��ߌ/y����	�"����тA���[�t�� �>#���q��n�z8��}�C�+x�=R����/���v�G��}�&�Z�oyl����K�w��;B�Bh��i����|Gh�#4��	��,j��B������Fgp�D������#4����܄7���1��P��9�1�?EF�.���8��L�,d��f��r!ˋ�.�2��
\Mn��t�I
���ʴ�����H�ht�;�mgtq�o8|<zi��bW��/_����
<g�`��o~���ïq��H�#�{d�{��)���'+��/�<`���p������7�Lg����-��~;~$���pG���+/`��n�l8سv���Ӆ���N�7>��<����qp�'ͳ'����p�?R+b��H�w��O��:{_�]AEv@|�kG�H����-���$�\Zs�@�=0�j��c��1��u;�lxpiAd�+kk�^�pa���3U&�m�2��V2�d� !�3ӕ3R��B(0-��*i�)H]�E�鶐����).;VZ!�[hm�#s�_6آ� ΀���7�S�׼qud?���Ox� G���Z������rؤ�ɋ��-�[<��s���{߃�����|�ї�3ٌ�7Z���6��H�#y{���j uE�s�8�/��l�@�Fꃱ�i��8�B~`@��=��ɽLM�)�!����o{L�e�o
��0>F�a�=(��`�;��*���;�cv��ޯ3�1f����qR��W"���Uqo�: h�6�|��C�vv�����`���{��;�z���`磱���l�n� ���۹�4�>����'V��f�}����#F�$MVpiA̤��*T^]���
�� ��(��Iն"iꪫ�u���_�G1zeymr��b�%���L �S��GՈ��A�:�B6��
|�4�9�0���{@�6�h�џ�=a'��[�h�:>��1����Av�;��xZ^���h���~�7��� #�K����>ؤ s��7h���@xOXr���Dw������ڞs����p���7�+���Aoa��w2^��"���h�W�Cϑ!n@fw���o��툮�3��y;�<n��>�����N�z5;�9`�� �����=a�ь!zzz�SD��HW��䝣�{JӖ�I.�iEV��NR�ZmREb�%E���RM	oL�F���ǣ7�����w��U��C`�Ȧ۬nFr�(1��#"!W�'�MFn�������%C:v��p�[�r��f�M���u��f�t���|��kZA2sԗ"q�F�����ʹK�t��!~?����"�C�v�qm|�C��YQą��[E�!,�I_û��^�\�p"6��?�a4�>�1�\��a���:.��8����҇���yLx�)G�7x�PTŅ��{�\1����O�M!>�<h���5�$�`�Ss�q��>�sk�Qo3�����vF��i�	=:)�����<g�9�F^�e����������0��;��ܶ���6���Σ1��}2��nJ�v��}`��P�����c��?&�Z���`�,�M�EL]n�M��s�>}�%�r��[dc9��A3�I�h�&υ��u�K�'�!@^`��U:)�\Z3�<ț2צI���M��4ML��DԶЩɄ���������w��ᡑ�zk�ԍ'��-��4���b�ڈ��i��&,C#&*]��
���6���%��?�� +��]�=����9����
����Dq\ԝ %~(|"]�\	�G4	�<��]���� י�O��u��M
�����{;��
vXy���[�S�;|L�ס���?&ZO����6�m�h��{�Ϭƣ%p�h��#p������?�Wcz��@���g��1}�q�snk������Z�� ��ӷ�����<�K������R��g>(G{�q��C��P��!�=`�����),@�8�ç��[&ی�z��r�	��I܀%�ȉ�ݡ|��<��J �ʡ�0U��c7ۜ��`�,Q���=Ӷ
Bm���x9�9�xD����-��9Y�|�2�l�{��O��#�T��V�z^G�5.��_���������GKKj)1:=��f��7@����1���O>f`����;�)ڼ8v�m���q�]���}�<�>g�w�N���F�{"B+n��}J�o�\�G�M�؇i���/�0p���U��<䤅���=v��u�`E��� �Cr�d�v�֮sGKg��ڛ��(M����&���c����;��.���h��ޱ��D0�X�鰏s�9C4��ɠ��g���yp�2�8�h��/-�*+�QQ�''�O��
.-3�$}$�Jۼ�"    K2]�`U�-�ئm�Q�t��3l���Z=|4zkŬ]���f�G��o�U?�pŨ�w���1H�R|���gxq?"M���x�F�=�|4vf����w�V>�����b3_�͵�ŵ����Ǹh�~$��36�#Wy������-gOf��w�(��t��4�<z�^��\b��@��OH`�_��ۉ#�g"9bK���o�lこR=bD�uD����?ň����>�\++J�.�O�l�6�����jL�{�suB�?//q؃�-fD����?�iq�^�dg��P�-��}n�.���M�t��m���=O(�\�'fc�A7=�?��������w�1��6]/������4'���]���G�=΍�{b��.w0hu��	#B���۽�<Q�t[,BT��%��E�"3� ������ʳ\��&Afw����P@���V��;�Ї�
[��
����QY��h<��9�5� Z���x�Vi����e��:M�։�F۬���
��]F,��yd�U9i���ۿp��{.��CI$� �o�pK��]D��w�|��zn��$�;#��`��4E;��]�y�t���0"��i�]v�eL��%�=ZlYX׳E�ݞ�/���-�.�g�ι}�1wL���ٗ'8�� Rx w���'��_��Oo�-=���=�}ʱlal�h����0p>�a�3s"'�	��Gv����پ�t���w�?��G��c�K��WzN+}.r*�Am\��O��mW�wT�m�2M�E�J��^��`rՎ�[�,[��SX�� �L�����<�[�@�%��)���W�3�.o �g��������>���q�m���r�0"���q��X�@Ҙ��R�R/�	Jn8�E��W7����96HF���՜�A��s�Rڢ�t��i�lz��Y�ч>g�̆�m�[>�aG�lp7?����6<t���~��/����N#
ޭn�4o��qN?1�n��#���"�7��:�%ǚ��̤7�ieڮ�$YS�`�H*��$Gͱ�y�=]�?e�e�}���"H="RF_�1uN��
�E���e[�����U�ӛ5�K�9l�I����t�|�g�Hs�8��ߎ�����h.t��(z�!Dp��1Ep����S�`�iwmqD��5���0�y�Pǋc�Gz��R~�+��p��:�;��sw�Ԟ�~Gv�dRƞ��.o��SZsX��!�-����������b�hQ~���|�?� ���5DD��{�� g�g�}��eQK#�V4%Tb���v]Y�ۨ��9v���c���E0�=�t��h��Y~{��m��w�'ˣ�xR��$������wd9D��3_��G���D(G8sݘ:�0 9�c:)�|#8�;����ޯ{hЃ8�[����]��.�8�����p�n���@�}s��(������-���1�o8�81�Z�{�v��^i䲃�!E���)¦+dؙ���n��h�O(��dz���:��P�ʡ"�&�g�z
�N�s�z��x��v���(��\������yd#w�j1A�@C�����������dۅX�`�d�t���^����oa�?�����e��r�7v,*^ӥ9�>X�U�m��Q%m[�D��Njc�$��eU*���tc���A��+ˍ�]���a�����U(Z��������Yv0�H���ܘ���d6������ﺫ��j�97�]Mi��Ň��^tēR�N�R�N7�Q�,�s_}���Z~�0�s�
����9��X�m�368�}�WSQ'��^�����D�5�Se�{̬]t�Qv-�M�KY��.y��^��C�pw���\�sva��0uܣ���ސ�w~�9z�J���hݥ|�ws�E�-����z�M^�&�W��2���{{��TUē�$��w��$Yvx����#,��x��U��ҼlT�-S�(��E�ȢN�B�<��t���i�g(}��:+�.�_[\��q0�U��2vƻhT12ˡ�{����f���v�������A�����t��e�9"����96�Η�6����8��29L����� ,����7���1�ds�Um���c��qO�z�O��ɫ��0�/@�2���n�}��ȇCel�	�SŸ��~�r�x�� a���^�_||w��Cק��/��sx�?�m���\�i��r!�,_���_�8w�ߢ)�� g�&
]ft�յ)�$�R 9[��鮒U'˼
�ʆ�v�*����4��M�Y4� /U���-"1\�!�J6�'}4{5	�pq�~���� 7�m���<��x���8�&8�S�/�pr�MO(�;�T6�[<i��7�-:�����^�P�@.�s�᳭��[!�>��r�$V��o�֜C�>��^�Jk���9��3�Ԫ��	���m�F�%F���	"2��m�^�5%���O�3������/�2��`}߅��VAyn��B9p�d��h�H؂wN悢@�c2����o�������,Y���>ᱣN�|Σa������4 �*\΁��G���Q?��N� h��'��������r��m*���F�B0���0H�x���)���~�zrg��'Nz���)CM�Ϯ�M�^�\,�e�zষ������1���\:��]R-|F�Ln~0��y��0S�8���؂��U��C���ӕ�t�:R�lRnm�a��8�n�?�U$�F�4|iA��Д�S��D�M4�J&Fk`/��ti�o�~�Ck��\{Tϋ�7���	s
ﹴ��ѧ��wc����l�CJDU�0sL��y&�@.J�(����y���4�tJ�m��q��W�����	��ܦK�N�:NWCk���dI6ݾߡ%��	Q���G�io�1a�ڇdu��9{��el�Npwߕ�mr�b�7���.�� �y���yWn��E�B����C�����p���y�l�E����?��R��?�s~0v��>����ь_Z��	J��"� �^۶k�.Q�h���~m��T*UB�{���t c���jQ�敕ɲ]UT�����<�������P�vqK=XvAn3���.).�K&n�YYD3[S5쇌��qT�¨��n�R�&�װa��rSu�֬���^��a��쎳��DZ�&��o�lJO}�h����{���9q��KЃ�T<�鿚���R�� ӚZ|����*�nO���5>��ע��"�_s��9?�Y�4vΩQ⎽�Ỻ��g�����j�A�X�2x��8l��
C'! Hvߩr��̠ke�O��'dp�� �s6�.V��6�8�����1V��ʣ���_R�d��	�e� �����#�����b��]�2G���������j˯�������y���+��!I�	���R��vp��sv�յ�[����J2����҂��waYf�*.���ں-�L�(��.s����T�e.�"�!8���K�¾�D��x\���Y�n�oy=V�ߣ��Z%�^_\1kv���;~��,ֵ5��Xy��ʪ�מ_2���׭YYr��l$�4�����^d1Ќ�dN[Xg?�a��ϝ�n��vT4��[���>/�b��osē���;|}tBe�9W�k,�1,	
S�[�p�_I;����u���(x,J����������?���T�Ek��{^�7UYp�'�l�'����0��0����7ɋ|���ۮھW*���iw���-ܖl����g��Ii\��r.nF���֦�}�TM��"IU�*�:�tR��6]X��2���<����⻰�xm��{â�l ^��rx'��%c���`P��#���r�@a�{o�T}ML�)����Z*vp�c݇;��Vۮ�/�u��Jp�݆�D����� 3�u�{X�E^�c
�����Xr͎�}�x��&|�;���x���x�_����M�!M��cg �w�b�KF��C|& n��/�Ӂ�����h���qN�m���e<�|�bvLR��    �l��e�����Q�F*6��;c�9�_7,�	��'1]{_S����zv�J���j����Ӧj�����0ƽ}l=��bL�9	9pzP'�|rϙ�|��-��e]pR3����&������,��h0du��J���C1�C�U��q�Cذ7w���F�R�^�Gn�a�*ں��:Pd�OǓ��='b�a:�#dz��[��:���(S1����Kr&u��C%K�bC�Ĥ
��m��B�$�
Y5y[6%���p�=�-�K�v�yx�����\	�F?0++�ǯO����n��ƥ�JcW���VǗּ� ��\5�e�8N`>��y�|�^1D��^>���x;Һ��y�I�e�]�L���d��DD}�4G�����noRoB��w���q���MW��<�f �X^7]ǽFۣdD-��v�~5?t��>�5 ��a���^/���wO���'���1����`�'��V��c���~�I8z��em��m���<�w�c֦��:�����=v����Kϑ1v}�o�7І'��Y�{>���E�%\N������������2�D��-�x�}w_���h]�����A�ȋ����{���7&�XƩ�)�ǷH�k�͝�Y��y����d���3:���KN ��0��H�ӱ=�����g�B6�}@��w�2?�7�$�ORe%��ō����B6�X�H�B�T��J�:�� ¨1�g�4�Z5��Fu�fq��]�2���1veu�.-�|�ʚ��V�NQ�X�nuF�t�X��,b�5���)n8���ִ�ǙO�B������8z�yiE�ub@�F�2��m�<a0� `r�e}�N�`�ߢ�
<�p�H!�?;��{��T����#���}���|`����s��%�&`Xl�1�Q�x�ϝ���1�F��Aq�G�b��6۽�~Ƨ[��y�H�Vűr�'��x�Q_�;2D�.RC���t��Z��|��Џ�>Yk&E��_Z�f��"�ZS#]�T�`�*��j��R�\wՠȆ�ư@d_j?��ȷ�t$da���{��T�N�m�����}�8f��}ln��Z�@�>h��du����='t�g'e��!AE����������P���(2m����d����EQ}����4�ߛp6�/�Iha����)����c�x5��㜖�3�#��$ߠ{
�v�M��%x�IrT��[���Ga�������,׫Х�l69���vi�6U"�2MT�Ҥ�u��ec˼j�R�5w��|px0M�ӆI��x������k5	,Yݕ�q�wk��5�Ě��d5��{�gs���4mQ@h�+p�Z�DWF'EڶE�H�YV��tc��ƾ�����0m߅)
�Ǉ�g�Ee�;?��X���iSH*<�:h\v+x�ɪx��ڊ}fg%c�E�����@��>5�vZAf^�ѧ=����`Ew�9�0r�!��n�W/�:��w����>Bq{���,��2�h�i?Q6�BB2$ �w˺'�$���%ͱ�m���b�m�/&0w)�G5|�(0�n���4ּ���xN�.-ds��S�,��8�6��[�'�.U��m��¦:+��zR0�#V�>?���RKB�𨩇��ة�L�;�c���4+�F4�M\v]��Ja�O������2�ɥ)�(�oz��KN�n��Xlަ��k�����������D�K�m����3�n�<���&+�����j���� ��0���DѦ�PA��/|�)��jN����fZ�T���#�)�	>{���|����2i:S&J�YR��M��*U����j����S(�g���]�r�"���.���6�X�M�N9�6Ej�d�&_Z�f�ݺ���*�f`���'�Ij%�$��&�i#m��_��FѼȲ�Gl����}`�=��]�lWV/�_Y���=�[Wn��*�$r4��ӆz�SPs������mn���U.����M2X�L�5]p��o�Ǡ.�u@�۷A�Y��ʘɍG��lB��yz���2���ka諸�m��6�]S5�Pڄ2����ћ�kfy�!#�}*6�h�V'
��l<�QaQ�Zfi	��*���&'�s��e)�,3a3&�����.O��
:% W[�9�DYv�͞6��JY\��X);�gIU
�r��a��J:��:��J���~�J�����^6W���6�X�"¹�A�*��d<pA��|ׂo�,�À��.M���m.d�tP��K2܁�c,�9�O%"G���k���RGԁ�� O�LHƏͦ��(,���j*�C5��u�i@4i8�une���N�_b�J=}H3v:K�_����"�Z -y�N* �fL�
�0y8�/��p�C���^��������U;�F9W��##�C�8��Kj.I�4SK�g b`aV
�U�a�`DD֙���'� T���.b����kf�]4˽*�e�d~|�oD�n���)c�5���Kj.$Sٺ,d[�BmQ�� �UY� ���&��i���G/^[�ǯ�����Ѳ���Y�Y%`���������f�,~8u]E]V�Q��M�nˤ���U-��k����-ר�8Ӄы�fm��]��Qa�j�D�	�Q݌Ob>c��۬�������ڴ`;�J�kD�Eժ0:&�Rr����ŵ%��:���<�	�V�F��'��\Z�g�#�O�DU�u�dVq��&&�r�#u^6����M������5����c�X.�W�,fJ��	�8K�K�l���"S�l ,�X�<'��g����d�-(���ȣL�8�o.�R�Jd�$Lf�b���ti!���6�L^wy�� �i�RRKl��6���F��M���cW[�	M�f���_-c��� =�i�{�!���9��N�p�,ϱ�c�%:+(���kY��(u)����۩�V���RW�GG'B�/��g���=9�|�8�sp�R]i�&ilc�y� |6�ե�]ۉ�m�HĺS:�>|4z�mmrmqi�r�X}"�`��<�O<h;���φM\���)(;��(�����
�H*�ۘU"<��b�U�2L� XcYC�$UEB*OՌ8ĵ��t�]�"%�&sm��H��
��WD�Q ��Ȝ��`�5y����f��2~͎_��������ϦH�TbJVK��k��|�s>�׵��.`�5�-m�SY%Z�M���	]�	o�sJ0�~�W�ǀ]�U�p-��w�s��T*���*�S�a�F&�(H�a��5������@�c�����}�� �L���\1�˶�����^ģ�A�b����lP�Mui`F�^���Ie�A겳MnD)m�+~O�lgt�ʊ}��R1��c����E��>���K9�I�<�,+ �%Fw3[Îm�R歲M��*��7`��V��,V�Y�j�Qk�E���P�`)Rc��Z�9�N�����M��#d$z�2�������eW�	�/(�hnb+0���B1_�E�{�i�!N�@%�CQgI�i�U����|f�6��8%�����^��У f�s��b��?C��Hbcw�ti�x��j*1�T�1��Ա=;�t� �Q���ӥ��Yl�*��Qa?Y�Х���	�(
9�:�o]G@v�Q}J�Z�l5j+qsɘN�icy�;`��l4J��t�.-��d�":�r�f�Q���ޠ�5F?c+!N���B�-齀u��2�+U�RХ���nB(��0ƫ�)֑��[�+2��yl��1<]Z(�=���Á]$c�ZT;ӥ�l׻P�.��V>}t�������i���QQϖХ��+�3�@�#�������i.0�%�����4�n����ʴ#տ#���g���^����յ��׮�����Ңĭ�c�ͧ�;�r�Y&I�Ô�s1����i5,?{?损:�g\KA����2�c����:ÝE������JR��UlV�\�.-�ZX�*�\���gY+N��8��Kճ%�E��N�Sy�Bҥ��YQ�ʔ�kY,#���|;D��|~,��bGɐVϲ&�7U�D|~�*ti�z�D����1�o�+ti���b��GG�ti���Ib5�3*cy��B�u��    �as,&�ؔ"��
�iϾ��>D,
��!����"�B��c�w{t	F��)b�G�~E<[��BKyg�wO�3/�N�	�q�R��3����F�È�;�x�5e��jU�P�8ŕ<�gR6koc��3�[��M)�b8���N���w�mU�f(@�c*�3�ۧ�#5�"���o�� �3!�����e=�0�o�:�+��"�B�1m��|V����=��㻎7��vd�<��"{𩣟�0���y��R`m����d��J����	���.3��iߙL��s'�R[�G�b���%�l���
aDa�Y���[j��E֦l��P�YIq����f�Eo��A4."���0�� ��j˳�'���DdM
�����f^���Ӯ����%��bV�ʻ���T��	f�y$�T��m��V�~!�T��48�NI܀��`v��֖m]Ty��~�zcWiw����M�	veiҼ=��d�*i��K�ȁ��K�ax�Άh��M	LLe�5\]&w����FWykҐ�%��:�R�����K. ��С
 ���h�qf_2��AG���"m��+ղ�[K�&�Э.�Ue��?w����
���L����QP��
�I�3/q�[2�s���Z�0�L�5fP�<�F']�H�dƲ3?���o�|��s������{�~b��4�����[�l�1@�)�$L���˳2roʲ�JD���t��űW�L�~麫�Pͫh�\H�  �,�{�.-M~�ze��t �e�}KL�ǔue�5�̚g<�����5MR�<&����@�
0�MU-���`G\:K���tgܟ��ϡ+�M=u��=�Q���;DR��	vN���8�-���w�q�5�D[�� �si�3�J�*+�R�5R\�n��k7��=�Z͵	-����][�.�Q�]�6�IL�_��{�vR�ϯ]�w([!��e~#�unt��a��{�)�9���ޥr�Nb���K�1���E�Ϭ��UIWW@�j!��Tl�R���
���6������CZ���o�d���+���e�X�����p�^�7�帮uLD��.Q�K��P=
��h���hS�#��D�%�j�\b-���^_����+��dY6�*N��q���A�	��A{,�J�2��e:��{)��s�=�M�Yw�t�����5�(��TԞJE"�������lp����@q`�D��cE����Z�UQ�a����������I�7�Q;9ɸ�>�פֿ_�bW�:;�ݝ�:I%��+��|���]�r��Djxb
�|R���2>�
������Ȋ�>�>�w������=��#/Y0j>È��A�>$�3]��{��}�3zAPW��o�D�=KK�g"�I.@�F�A���	���Fl�I5��e�*�������5�Z��'��F���ÇU|�W��g����U�f��i0�.eI��QB�*L��B�;�9�����|�ږ?�b#]g~%k�J$�E'.s�c� n*�
3�����a`ߪ;^��H��0;���Ԕ��XK�x��%�Kɓ=R�Fc|	�4��3,lW�uWc)lYiLbre �?�e���L��@�;� s}�>:�S�p�\��Q_�͊]�	;F�WH�|rZ)K�;�/�s��9O�Z�i̨�
X�u4��m�V�)
x.�v�W}����e���}�����2j�F�Y�l���5�GqX�T��x���J����ʼ��T��_��Ց=,z-YZ�a#��?��g��|	�3���5���d�I�
k�e�%u�4�3[۴n�O�Nm�q�7�cK�����V�?�s��F:PÝ��>�O�$.-_o��/���6�i��|�+찳�p'�@�dT�x+W�Oe.pT^���SL�b��u�U����������>U�k�6�!��+��<�����^ze�⊹<���sΐ܁:�N�mg�l��Y�m���2�EC7e
��j��J�"2mCy��a�?t��6��k�2���ˋX���Z� ���ED���{��%�l�Ŝr[���Q*L�5�<�0w*Z�mZɏE��}�m:<�S:�i{����%���ɵ���f�r������iˈ�7�!��ٚ�Y�)���Mb(XZH�h���FT]m�:�|՟0{�>C�s�d�_Z�֮��O�.4�rY!����y��Ļ��%�\���V0dOEa�Z�ui�
v"����L��nL����G��V ,�|�����a����ی.�g�R_�ר�f&,���ÂͲ�1e��m	۳id���g��9�G�R�?X�����������������]�Wo����+��CY\\ɗ`�sA����q&� p��
`bQ�$WV���2j������.M��rb��i�<Oiќ�Y]�h�|��i�m��<,�R��I��7�BU���̚,�S�����l�-:�ş��u�G��R��^=�C.�`�do����lM�{3l�{v�N��lQ��� uU�|��A�	��g�pKw<���Ո��iK�D��ؘu�\@n(�����t2{���*i�l�V��p�V�Ĩ�K�FtY�4���5!p�ݣ�+˫����u����xS�,އ�/��fK?����\e	�Z\�Va �m]]�̄]RPt��b,����ۖ�� "���"��D�F2W#��2����bMe#4�S�꧍j;S6`�B��	�z��(O� }}Ŵ�e���ť�[�����2HgҰ4{�E���)(�Ä�t�Zְꀫ	 �&t�`1I�TE.u[dm{&��]�!��E��e&��_y�d��5kW���`(������a*H�?m�򮝭��JV��)0#c`mw�6�ZV((�z`����)>,�{��ӟݳ�+}�{î][Y����u�	yS� 1���'5Wo(��.Z�$K�7I���j0
( jڪ�N�[w��E"����a���_�F�49��9���|��^�����V��� ���ԙ��� �3�|	�LH���봓E�TA�HH%�&i�Ң�ڴ���%1ȟpW��+װ��S!4��^�:�@�,Ù-��[�t��:`��DeE�[�IY�M��nH��/��+:��^�)wG����nm��de���*���Wy��"X���|	��\�O�M)k3�=��C�J5������x��G��_;8*X�"U��+�n��n���̗��U��),�</1�e�+�j%m��i݆�=��!شyq�?�Y�[T�p�.����fi�W��q������NrX�
 �@�^f1�'!�PQ��1��˲�i�Y��]���`\W�7�E�83����f�:��-fhT�}���G������80�k�J�(��c��q�]VE��Q^ *�
��B4`���ā?��j��Q݂����n�\oa���⚹8~ެ�-�E_�l�|�G5�dr�i��.>b����i�G��Y��2k�������He�UXb���N:����:�5z~Ś��n?oZ��H5'1���,��h��;�㦛b���}0�թ���2�&@�`�쭚�-���a�/����5K�s�[[ oNs	�a�a��J�o*���u��E��l�:�d�'�t]W�y��j����4�n���c(\�{�ִ�0���5pQ��Y�?~�6k������x�
�[K_��y�%x"�%(�6+M.$p (-Q0׉n�*)�,�lg����E%|�+���͓�X��C<�T�Q��,��,#�1���5yֵ�T�=�� ��g�2]v�j�#t:s���;�),�/�Y2M�c&A/,���H'�S���zR��Se�+���@!��k�H�oÐ���vl��1�ѥe�c�	6���Ƥ��d=uL���j-�uڀsɤ�ly[$���fne��!����&�ˍ��_�.jB))>=v���Ǝ����،�\ְ�|��y�8/]��d��)��YS��E,po�ɗ�̅�����E��&��`��&]��ڶ��ZFR���H���_9������hxcy�3k��    ���\	f&C�Pb�K�3Q��K�Jvz�_0���9m1r�Y��K%w�\�s�;�8R����pRQ���)UU��;vb��Vt���m2U�y���%T�9��;Z�G/��w���}T2j LxLd���f�sn*)fk:ދ�mVr��Z�Z�PTID_�ug�4��H��n�uľ��>tiRjo7X��_��xeqe2^���6W�6o_[���m��]航�,㟯oB��L�4I��ekl�W�I	���]�k)½ʱ��ћ>�ť1U�D]ZDU��[D�1c{r�T�5�R��Ԟ�þ �E� �-�'ӣ�3|@���s�r_�=���Ϛ<u ��m��Tg �7&�� f�+,��EZ�]#��!�.up�WnRb���K+L��*g�����;�.�䄻a��ړ��Iـח�"3�r�v��Pe#�6�z�c�#�S�q���'�|_ߠ�Ǭ/g�FA��*���v��2W9��azT���6�Ť�w��2�l���G���ݙ�S��a����߱�f�vז���n��:Ќ��.��w��K0�5W�� ����{*1F��m��Z*S��.g�4���������en{=�:YY��ȯy58�kI�I�xcH����>Q(��������F���M0����u��}����v`"'+�o���fe��� �s2-<<��f�JJgJ�/`Ω�H�%F�/˴�`��#+TI`B��T��AZ�v�,�/]��sGa��Q����hK�i�Ϝ�ey��kU��*�E�%:�
�-p1aM*ϔs��9T������;'��^��Kv�K�+�-��k^�Y#֏�ݧ>��V�H�u�q�[�E��J�֍i�\��O�u>L��X����N���eW�R,��6ZE���D�%x�	��C �Ԃ�"P��k*��sR����dYɵ�&����$�N��J�ŷ���1[�)��� ^�
�����T�-U��*t5�+�ӣ����\P_��dz���_��`^�*���>Y���A�V?j�,��G��E�u�\�|*t#Z	��4��;���\"�scn�N����9���}�#��^�4o�þ�_/ƾ/]��p�ʊ]Z��~=H�piV4oʗČ=ȝ�k�-s�/Yt`���h�$�T�f�������*[�͛8�	#8�*�m0�0	�S����xsM�c�R�:;�DY�`�3]#�@�@��F���Ӫ͋�Z�sX��>��p�p�?Db�� �����K�,�v%ys{x����[��j����?$���G2o�+aI"����N[쓠��ۺ�M�B�Z�ŕ����5�ً������k�����[��������d��l��*��k����.i�V��ԭ�Һs>X��s�z>&�q���37W/���8�����f�?B�����*��~��g�*�z٦�L�br7t� .���4m������ǣ�����c*��G����{��SwK����:۬���l��)1�������c���n�i[	;��
��HVdu��m������3ʃP��>�Z��_2+�neru�R����^��LI��GNj��mf�<��RzY�M����u��$��6�+��4i�����C�z�^ZY�����oT����4ګN�)�aLse����&���7��J�7+���T��U����w71±Nzj��e�.][lPdx	�T&�l.���]��H��,�L�/-���+�X]fE#�I�Z ��]R�F
h��kY�Y��0D���'k���-��)ݟv�|a���f���C�d�s�]+`8��gC_'���i۶�(��j*��R٤�iUd��ujC�{r�H/@#��;�� mw�xѝr4����J�`N�y�� r�Wo6̗�q̇��֤i�5x&�ߥ �e��u��.�O:.��=����.���܁�1���1̈́����"�+Yc��
�PU�t����m�u�:{��Y�<�������K�K�^���j�֫���bxBu��7��9�1c#sO��j$uR`�hU�6� JQT�2Jum��"��:��`����j�����5�@:����)�q�:�m�l��=Gj�L�Kb��3UH��@�1��Vy�D{���o,�������� �=��94����*b���	�l����}V��h�֭ДwIE3��I[]���^�&l~��M��\x	��r�Du��.Rq>	8q�k>1�+4����\���Z��2鴓 ���Z�|����q/�B7i�Hs�0A,ˠ��1��s�筹���Q���g�`�<l�S�Ŝe�sE���&��1M��� ЙŶ�Ѝ�1P��$��C�bW�'��%�s5�C]�E"@7�;s]�g�i�g_e[�m�}?1�j���Z�W �-D
�)����2�\6�4gӡd�<W1	�S�"g�]��h�-ᩂ{k
0�x
R+ʤ��R�Ʌ*�3�5����c��}�⿓#�?\i�����\������!�l3}���Q�m�?[�����2R�(�.i�k̻,�xD��9p�F7M9�q35�>��c�r4<���7Ul��>���$X�j���b@?���ybU�i-Ea���{��|N;9����t��GG���uG���>�5��q?�����gw��1>��������~.�y�X<зI���Y��N��wt��V�U��Я�EIqI��ɇ'Ү�b�D��|	�1_��:UJ�U�s<m�n�+h���yX���+���6ӌ�\#��U�g�K4%�R�n�atsA۪�J�:
�N}�&i�>w]UWV�)a���m�H}yerm��2�L�/,Ɯzع#�*�D�7��K0���A��M�5���T3�W(l��fӔ:��^�p�Dx�~�w
Bܽ㝾��9u��������z�A��$�����.���F��T�	�u-a�j�䭅G lׅ��v�����/'��R�-��]�� �vm�,�hX�
�t�����!6�8����r�^�}o®�-�6Gjmi%�f-3 !ئD�:?�42��:��d�|f4u���Jw>��K��9�]*���A�3�����F~�.�����LD�!8@*�"� 9���v��4�ԩJK���&��r�'M�̔�E�}����)�Ci�@#-��xn�� g��R�%а��]�I���K�5Y^���tXχ�5�j���P�6W\�}�]�r}�
f���������)?��{YL$��5b�����l��\����yZ������:K��,�.���P�W�wnµ�f�J��D,���%�/M&-v��rB�������`�:m�\��!ҖX��-�����2�̠x98�� ��n�~ �؞�v�����;R������=�Թ����;������U�H%�r�5�,�4)m
��SM�u��98�<�����-�\l�-�D�Y�q��nF[�z��YF;WZ.�U[��I��Oa2�r$&o�:/��!�]�&c۴�?�殓����a���������h�6\�f�d���%��_]w���"< �)"��x�l�c.�f��d	�^�F�)�X�_�I�nk6P�v����{}g\2t�)n���m��䊽�h��o\1�N��#���gY�2�П>������
�K�d�I�8�I%[��uV��u���_��z�A��+���:����VE`��OW�%�Η``3a2k몦+d���N��>B��Q�ZwBg�V脳����[�;s��]��?�9F�5m7���\��DF?�f���K��5:���t�[���S��.��:Ԩ���ǉ3w㖳5��d�Ӣ���3̿ʁ8׹H��$غ.oM��=2�, ���: �
�a9~_ˉR����W{����I޴�\��"H��î`tҟ����
�%����k��M�	�2)sSM��aja���k�����Ր�ibg�O���{��5@Ί(4i54Y&@�LQ�]]�AǺpN�����w���l�F��d����a���+]��R��ih���&���)�A��R`�9�; <��;��tgb;6�<�	�    �R�n��g��d���Ri�ѧG�F/��5��0P���J��-�k��K�����S,�h��-�x�[���z�{�X:�j�D��tT��IcERH۔e�v ��7u/��y��Ѵl��o�HE=����4c0�=�im���_U��n]��Hr	�?���9��0�t=�7{M�rFo� �x���/����E���PN΁clm&oϗ�	̕gTEV�U�%��
,�˒���Ri�0(~>�E|8U�r�TW��I����;�tvz�9&
��~ҸQ�S�e���L�gk��=�5x ���ҪL0� \H�-�T����J�~�V�t�0��v|M�q�����k����}���^Z��.��
��a�������qz_2���C�s���,��>-�D�� T�Ҧ��:L�s+����?"�����������Q���G'hF��g�\�-����L���P���-6'm2[�m!��Z_q�?�z�װt\?ס�:(���)��f|ź;W�Q�۬3�Hj��)�v��R샮dQ4m
(w�^�6#xv+�]��w��>�zbswsTO�|
w@'eaDRն7e*؊)JX֦j ���>���8�{���Y�}s��z��{G���3o��{�&�}ުUuQ�u�7OTU�I�e�%i��&K�"<�)C�ӡJ?�t(ԡ�i���2ȹ&�b,E~��R�'��DgF& 82�d ����|��i-�6�����+Ń��@-��5�/�/][^ӫx.�3�ӧ���m�tPw�'P����[3ힱ��+mVQf�ި��[��1 �f3ә*��3~Q�E�}����ы��A���X�H���Q�ΤII�G�a�;� �.	���5YƑN���Xol�Mm0$9]&���`ps��(��f	 e�y] #,ڤ��.kU�QO�g7��$���

ao8G��"�m,_Fƀ�0׿��h5��

�!��w����#���:�B��A 	vr�V�G��j���]m�><���/{�׀�c�f�4�"�����U��8C�̐g������L�KN����?7X��%9��-����c
�P�s�'��P��ߘU�o����Xl�/��T�
Sx���6?N�/��犏���r�T���J��<�Յi4�,����|EA0$;������h��p���n>�1V1܋11<y᪹��ٰ�;� V|�'1[�Ermt�S,��Y1X�Rcb�I��F�ڑ�h�a-���[�<�zq��]�q����-ç�
��
"�|�PL�	�fB;['�>{�S�tY�49��i`�u'KL޶E��<����^ߦ�I#�-&]�&���dw�&X�%�SCU���\�6|O�l��od���I�Ъ[�ǃe&����Z�: ä�^Y�*�r(3��X���q�D|�~�>�f�������_YB��9�i���C]�g�ha�g�L�5v]�����5�.%����/���,<@3Nl���������ײԌ�)�Oj�M�T�ȁ��Y+�N��S��(4�K+w���C�Kԓ��������--ZOͥ�tA�"���D�d0��V�h�Q�/ag������:��jl�04P�<o8�����n�f�fm��Y[��}9�$$�htLTr�Q�u,!�vS� cV�~5���(L�Y�4���A��.x�G���#�b<��k�1��ܻ#O���q���YZ���9�\(#&ab�'�Wh�W��佗K�j��&.f�KU F�uZ*��5M-�w6cp�$B�� P��cQ�3�b�0R�+��y�@��.� �K��mޥm�k�������;������J^t�z���:.x��P�Cs#�-���Z�Y)mP4[���/QԺȁ�V2��O�`����X�7mx��J���{����w'�Yc\�g��AF��獐��u.a{[�Q�r 3`w�EZ��lkK#+�ڰu����6,��a�rX��;Y��A���3vjw^B�!M�RI��A��R�Dۮ�M!U���"X;��L�\��%�c�:�.})J˂J E��ɀg�l����'JY�'����y�5)�\ GME�A��r
+w���gkIbw�����-����,��KBy�@E���<���TO�J��G*��
���|������U<����=�"�*�[7��s�-��jDZ��,X��#�V%7si��e����s�M ԭ�+��oL�ɚ�^���pA �?��O�\Y���Ef�G6⟦,��J�teU���A� AuȊv��Z�I�a4�eq�Xʽ�G*�0��'ݙ�.-0� 0�+�f� k�L$�tm��zx������,�,�A�d" Q����x@���l�̧�V A�IA��X��*��*�
قi�� ��.�ot��(RD]���Y^�1�?l9�ŏ��K0����KE#����>bJ��6���KӅ�֜r�6p�'���+�8g���~�l3v
��<���6J�U�ݒ�[g8V��:5@����1�*�$���RZ�uk޾>~~i�x�ϕf��i�x��p⼺b^=k;s��1p3�AsA��47 ���ֲ f��n��YL�K�#�����U�|R}��c��N�;E���+�XU�]����Jk�:�D�vM+�+��B#D�P�Y�wc��i�e��>�'�G����fD�8g��3�٬�ʄJ']���&�I�wڵE�[�<<]�:U�y�8YN
��l����d�+*�<��5�[�dWP��+=�+p.3��3��1S�x�j��s�Q1/�cK��Og�碪��n4��Į�Yb�Jb]n����r�* ��۞��C9ֺ��E���Y4�,gkN�J�ȶ*�nNy�,�0�I���sщ:<�3׏ϡ�^Z|b�^��1���&�b���0�� Oي���"�ă�,���$�xs���
5�_�}t�1zqe��Aaj(� �^�V��+�W3� ���*ۥ*I�VZ���)Ӯ10Gm���p�O����^�υ?v�O�3Qc���0̹��n���]�T�ֶI%J��`T�V�rQ��yǟ�X�"D�I
E��Z��]	 ��MQ$Y����t��I��K�fM%�#�(0T?��z�[| #RcwB�/R���v�^^Y\��[��?�n�l�--���Ԯ�eo2�A�&5�,����ig.ɸ�]+�&)����T���5�<�G���"���X�c�\0��
v����z��#.ޓi���NΗ`xs%Ƭ(�Zi��y	�&�n�")Dnr��4u5_�h�&������W����&تL��!y�k0��`�ePs�uL�Z]t�O]cguؐx�|R�@��
@M8g��*�[������{hP_|ٗ�S��e.(#��֭��3�i�I�!`����
�5�0����Uc�kȡ��Go��f*Q7�k�Ӧ��X�����i#<u�3������l��'�:�2id�v�ղKÞ�.�N�������P��2v,i��q57�7"NU��9[��~*i���%bU,d7R�&Sh���`�JYI<=���)=�1��RS��"�ÿ>�;�\��J�yãq���f�2����kD*ۮN�s�EU'��Imj]��j �����&��^�v�v���Z�� �?�!�P'�4Tw);�Y���B���a#�DV8���B����u��2��#*��1�6(���NSg�\m«�h+�x��6�X��<uX!ּL�&�mp�i��ĹM�v�:�ns��׾x�t{c?Q���o|7�J<C]���Ա����%xh3�������S�I�*ؾF �nE�j�*cj]�@[��z�Zs��*Va�˒ �H��2�����e���+�j좞ⱦFuxsgæM��3�I�MN���⻋�o��'d�
��yٞaDs�+P�C����t�Ƥ�e�)[V6�ѭ#U;.�Jջ^d9t��U�
Z#��q�p���δ���&�Ld���a{
��fJ�a�
��7�S8�F���U����A~y����f�E������ӴJlUex:zο*l�\��������f��Yרsv��#nJB�xTA~    2�Wi4×�l��}xv&Te�V��-�DK�M+u�;�����K�z�J/���k��Y��bc)�!ِT�� �HGʳm.tוMWwX5����ޭˎ�:|>��/֋S�q��/�H��8[l{�K\��<U>UE~�E��!-��ڭ�m�r�{͚6$���@���%�wD��b��Ѳ) 	Bؙ{�o_�OB8���s2T��.K��2k���`<�g��R�Qf�Ӌc>&����vy�<{7Ko�i�_fMm����[�֜�t�xW-�G�B��~�A;����"'%��F���Ý=�!�e��)�3=��eY�|�K��:.u�Fn\sR�'��i�6�V*�˔#i5�+J���r6�n�8W��U��T쇋7�/o����ms ��=����|W]���љ��}呇`�$s(�����8�Ya]'դfr�����F/,ߊ�kxg���F�����6]n�^[aRQF�����F�|�Ĭ60�]���ǈ����Y�������_�PH���Y]��YG�Ut9y�e�i{�5�*��4!2�1њC�E�U���q��|��	�U���� �,�zu�歌M�0�����-^N����<��{[��:�:�/:H� �8#H-���V�n4��/���̢���Ó/o�p��-���Xk��n���WHD�"grs5 +���xH50Ç4����N+g�H�/����
�;�Bl^;9<�,!�ʙ����ч����.�!&cHZ@NNL_�)���8XLt���0^i�SGw���8�Q�Ƚ����7�U�����]%�'u`J
0�I�=�7Pc�2�N�K�Z+����������Y�$������G�I!���7o�s�8��]A�i�;��|�<�:q���Q�V}�
�$u,C
����ͩ���x�RB�Bk�D�<��(<�ԏ.t�a�9涛
quc�� �t����]�⤞擒��d��3`!8`c�C����ZG�)�U]���?擉ϣ��Z�y}�B��+��]��K}�R˂��WE��A^Jv��2R������C/��B�� [�~'j[�sDe�dU���<)��<:�m"ǅ�X��� �>��!�j;-�z6f�ێፇvJ]���XF��w��wz�L2��g�s�����g��ցf��<.b��\�v1Q�{���lǡa��'��gnϓ���2���doܸuX443����Ȟ?�R�$�����~���#sB�Q�r��i�3�Z`v7�|>MU�m߰�>���d��s֟��P}��My�/W8wy��ф#1���l�@����XJ2َ�I�^n����"��7O>�1�_�|��~�U�o_�l�dh�¿������ǭ���v�t."����36
xwG�񀑗��v�B��I�o^�K�I�Y�,!�4���w�yk��-|TM�j���'0���}G��ϗ`,�"��Wƍv�c/*qa<��4�>�Z��d��FM����Q`��2�� ��GO�4�xc�Y,Z��ՐoL�0�`Wj�u ����+>| +��u-q����X?�1��T���c�b��PmN�IO�?���B�r�E����Eƹ΃�;Pނ�N�c��p�������^:�/�_�����N���~󤹊BԃW�S
�L�*�7���n~f�7A� Q�i�0�%OD� BE�L7��8�]o�/C�T��u����c{��8�C9���rre�W�|ʇ����#"! Í#ʄ�	�r�Ρp$x+�f�4nǼw�@<w��Sm�b����r��V@��c{�
Fƅ6\d՛z��{!	� $j�R@D��	m�ĥ$y4��A��g������L���/��ܯ�gc�8��� 	�&x%�:^Ώ�U�%T���I����dkB����)«!a�V�k��Y��©�<�ի��c�Ϸ �N�6W��i^<��j^[�0��ݹ�-!�ld��_/�0��(����$<�.p�%a�����;Jp�=����u�Wʺ������j�{q�Vl��,s�1��iiYvj ��k�����a蛽��Y!ˈQ:��Y���\��h�E7���k���mً�ym�d����z�3�h���v�BI��H�\ ��\9�����LU�7��|���*�	_x��Ϭ�����;d³���~�7��%f+G�4߾�<ZCZ���/7m��vFI�<�>b�����[e���z	%?��5/Y�ˇ�K�	��h��V[����Jĩ@'����ӳ���~���e��X3rdm��r�1���]�㐆JH�Z��om�	 ��~�W����Oɞ�_�P`Y	�ݎ\��d�/�E�*HA���R^���(�y44F�ە�C*���\Z���G�Jg�Օn��Ʊ�D+Q�RI�1%�Jj� ]9V��e~�����W�(~c����I�
K�RM���E~6��k�`$H�7+��Ήe�Ԙ��Y�C@'���u�uH6���	�	�Y����
��uT����ƲC��&�*Ѕ��30�sV�g�=20w�O?��[?-3�y��=�~��[y	����m�g:���N+��9s^�N���d��C�/��'n6;���=ΫI��h�'Yv���>�������@�V�r��n��n�)&�՚��
m,R�*���EݣD�2�(�⣔[Y�V��~����y��S��T�k=���9T^> �T�+�(�� k�l�V�*�ݹ���%��!0�������G%��=�A�2'Ełz�Yr�yL�g\oZS�TYy�%H��Y���v[����<��߶�Y&:g�� ~o}�z�氏~����}���ΥΫZ�2$%�k��m�)$���Q��M��Qe�_���Km��,d/��<r�x��MX��u�w Fw_��5OɟY���JMaG����X$���9��:�}�� �!҇K�'�y��O켞�����	L��O�:�u�5<u��39��
G�K*B�@�.]k%-�.De|��DU�vֲ|�\���\ 
o�b7o��Y+�$(�p�fT��X��c�c�e�h�F��.�Vwpy�	��7���!��L�y��&��8{΀1}I��*xhK��k�$�K'0Z��"�-�<��p���%�����\�x� ����S�-݄(�gcj��)ަ��y��#�	�8m���D$b$Y���ХNO�5s�ݧ��2g(�=^�XvE��}�ث}� �]�B�)Ns�6�h��Å��J��s��.^+�簟��zRo�YlZW8�w�m�Ѱ�h�ɁS��(�*[!9���M!�sq%��2����_@fn�<k�MV/1�Rb�əݗ��*T	�&�H��I[-hh%�3������p$��$He{���^F��������j<<���I�+�C]0���y�K��P�GaZ�a����츎��.�h��*M9��G�RX�>X����Gi�9(3Յ�t�Lh�9�kF�+�Tf�h{��:��:�R��L]���\q��lr��u�>��gW6��K��D���*\b�س�#g�[n�Qٵc��
FI	��{6Bx�8S*4r#B����<�_�^X(��l&'v�E\���[a�DfR��U+<�Q�y>��~��v���pVxW�x�  x.^[���7�/��p	�b�^SK��.�([�%r��G
ʵ�x�V�eF�7��B��\-�]�d��jL���k*N���6/p{?:��ހ�o�Aaseq`�(-���_����z)w��O{�3�O*$��I����p��:��?�|_�◂h�e��VZ#tP�)#�+4��?_�C���/R��O�>��<Ba4���QMO�~���ym�n��ڂcVk%�Z\�e��b��$vZj����~\�d[����E+���y����|�^�1�N��}���<j���P"'���еQ�K-u&���sK ��dp���G&]BD�V���0B����\)��vL��Y#��G$�~c�$?+����c7���rz#kK֢��D�w3��cE�e��G�ls(��:� yx'���?    cR�/�ݲ��+�w�`�����ߞ,�A&5���hʲ?�:�\�(�U?���U����)$8��G�R�Ě�3� ���1�/swa��W��~��rC�)϶1��I���_mB��(pp��v���d!kI���j;g�Wz���#�=�G��~�����m��|�e���"k�\�x��=<^`��f�S�g�l��c���Dˈ�ef�gR�	^�2���XJ���zHqq�+?�����_f�vg�n��2�o�Yت�M&�1nW�����������F��t	\�H^�&uc�ݧ�����< �nJ�%K/��NP�ntA4�X����&uܺ�ڼ.�ՐC�OtP��`�xRv�!R!������D�)����)Ѫ��y�؃� ��*���c�ӂ�� ��x,����],�㙽��P@�����xKY����Ǳa�U�L܋�u�
��q"�B�#��$Ǆ�>��D�V|�g���d���A����=w���l�[ƾ쫀W�}9�*��r������T�;��ս�u4!
��ǜ�DWNJ��:�aZ&���E`�x#�F�쐿�d���J��ȅ��Z^�,����-�?���V0��̽^("�{Z��I� bِ8���'G��Ǡ	�͟�;�f�|�AC�YL$eT6�VX���w�E�6�$�dG��]������ �2��/�)9��cW��}e}�n-Q�@RD�Um�nS�"���G���[� h�o��6SDQO���t��g~�dui����f\E?`b(���jE�󨰷�JBl7`g)��Q��6Y�����^�ߛ�����g�~��v�I�kr��b��ڜ�u6�F����3��4��!��2�^~f�ӷ�_NU`�G�t��3[��ų�/S\efOzv�q�Mϻ�Gt�1� SkȊ:���c��ʮy�͉6*���Q�[���&!�0�΄I�3,�[����ұ\��9A^��菑q�'�_��ea����:ȑ��#�βp�1$]��p���m�x�����n~����a�!�ݧ>뛳�\ҎW��cY0�<��!k�*Xg�r�\-���k)m�I���]LDB��&P<"O�|��MѺ�	Я�����q��u���E�ҌS��V����`�̔��9'��PJރ�w�*	m*��R�O2J�I�g7��[v5ƚR.��b��L�+���]$�%���dk"�+�)���u�&R��
�o�����Q�Jľr_\1Sa��N�*�1Y]�����ؽ�����2Ü�+����]Pg�H�(?��׹��i��w�E���	�Xb�\]���3�O�+�ta���d�ɂ�f�g568�Fp�CLp��L�Vv�je�$L���}�������le��"�����F��y�}���}�X�8�r]�����G�͝BA>/Y @G=f��m]Rr���/3Χ%D��{���O~�u<j�������	��Z���Ƚ*YJ�0�K�5��/	��Dk!�e�(��d�m����Y��o�6yS�A�8Z���v�f�W�F\�
kF�":�e��a�r�)�O�B@�mG� �; �;�q�+�Y��捓<m��,���|$:�笻5�Ϩ1�Q��ꕾ��y��ۑkBR���ȱ�h�GÂG�X!�u�� /��Ϟ|QV]��e�wh��{��_�O��16WbC�J9���������RYp�<��-Np�{�۠�7Զp#MˈdI���s��r)�<���_��Z���7�kt!����D��:��ͣ�护�"tj��o�Y�U�0M��Bp�I�)'�o�<��̑�0�^���`W���k��1��XNA*u��훷�=�ׁ�"d�:w~���G\��HPJ;)l�lF<ʔS�EN)c~��M����K�j��o�7o�v��(��H5j���iy�q�n&���E���xp̪5A�Œ��5�$��G߼�^Ҏ��&�i�\��l��<,�b?�]�����U��|�-HA�És�������J����K�.�z��AB�$ІV �'(��q��F	7��mnU�F\�b�Q3;���x���Z��'NW��	�n7�R��W d� ��6��ÐaA,E�'�S�J�KA6
g2Sg&j���/�>$�?��gK��"NgB��.ju����zK|X<��)@�V@h�НN��hĸ��8���B����?޸��a ��u�n�Z�F�;U�+�T(汐WR�	��6E��ۡh+RV%&�󑦩�Г��i��������IyP�|z-�~����d5dDd���Vc����m��L�ğ�A�
�+ZD�;�ޏ��HF��+�X�;Yœ6\	����g���\-#���,2?����SϢ�e��g��L�~��SM�Ee�N��h�@*�$�FHv�����g�[ 	zq���x�BH=�#�[6��Q���Y8��|���Z-�	$����B��t�R���?B��^?�4�I9�8�E&z Y���,��T)��#$�ݥ.x���2!2���N9A-�<�ɤ�'�3Gϯ��
���~A��^w�q�?�{������|���*>Ӽ��Il^�����E֣�@�������vx��S%��ɲ�����)O&��q:�����}���3�y��z3�!�&��,T+�z�I���L�����T��)�à�|v
D
ߩ �4�մ��@����ך3���'0eJ 哒���.6��w�
�2�H�n�rEw��(�y�QEb'�����K1wQ��Vy��;U���J�m.�x?��|G	���b'\��`��u^�SR�s����!�C���47���\�h��CÆ�qf�A.d*����c��O��T%�א1x��~79��D�k����	���+}^�g{*������*��-���>p�؏��ڎ�����NEAr��%M㇎�Q��j��!�Z���� y��)�����gv�ʋ�������zƪټ�Yk��:RS��c6�d*�d���P�o��)�>}�0�˻�Ϫ�_��a�����d���oͼ"@L&��aСJ#[��� ����-� �4���J���qYȁrx}��F{���N�]\�|����
�=��ȴгb�c!)|׵�R���R�Im���2��ʐ��I"Z�T�ē�(r���o�^&�,�o�onb�W��Ո��ME���-^�`�^�sY��c�֋<",[4i#��YB�����y\�]p�����%�"��Ʃ��%���M>$}A�@�SX�V������, @C��	��&7>�<���N��ؿhu{��L���!S!,�}�˭�k��/"8�o�`N��ǰ���&+���p(�N����'�<h�e��oϒ�dWN62��a>���,��q���� ��"$K����^���U�	3�̇�S�nG�q�%J)����r]�r8���2�y}�iϺ�[Ņ��U<[p5�R��5���k��:�y�ǀ��#�ڨI��sA���G�{�� �<b�%�w/}^r|H�D?K+��U/4�Rh�K|^z��Y�X��bXh 8��ٳ��RNH�G�c�������{���~ؼ�������vT_��:�j���JݺV���y�P�&��଺6D�Z���V��2�s�;��;Nx���Ч�C����X�?���G#����A҄��Rͭ����˘�EMi���A�nZW���\��x{��v�>��%�[tn����?,��'_`mt�O�1wH�FB4�����-�E�C�4`�V
����t�rk��R�����ۙ2��Xи7��<ʿ���쟋����VQ~���y��,�9_����:�.u�y���!b8V/�K�q8�C������E�ū��A�N�J�B�<����x�L�Y��k
|��H&��A��M��ׁA�y���u�4@29m�uH�[Aq�^�Х1��|˻��8��!|� ��5����D����o�&�{�M_1}��
�+�Y�n�t_.�^���ڿ�t>���٬��]���mX�����*�Ft���}��^\M��    �;�T��f�)l�J�-�(eT�2ƃ^F�N6���㶌|���:�C�.[m�[�Ѻ.h}�`_
��H�   Q��[�l`-�iKވQ��cC�w(��{��z�,����6ϯO�7����W�Gm�u�Fg�spպ��۽1�� ��Z�C�#�T������cԛ���M�+'���lG����Kk
������|c�x.�HYmQ�T��	&}g�7�~�7�>mOt�^/I�3��:9�ּx�����M&���g`D�ZX��Y]��<F�@��V[샣pD��V�3;MGQ�W�����/.W�� 47�*����]n�^^�����[O�g�s-|��9�u���c�]�y�TZ�9��	�Ҷ����2�3bB�����^�
�Gv�o�=i���&R�� �eb�����L^��ךw�a����s�.ƕ�f�����\�P�3	^W�;�9/"H�p~k}�,xs_iZӱ����cRE:�"�Ú�������� �qMsR\C�cU;��F~���KGD��5�M�(p?:�Fyi�N.h���J՟������$kj\,}����5�m#!�VjɝK(���T�bg��������������[������[�30���P����S`�.F��( ;��p#���#!Cs����xg'�(���˥�rw�h!���.7g^h4��RC@�]�6���$���Ga&x=�	�s��}����ɰ�����8��N��X8���ӻ�:0�4�E�fVDD�P_��ǀ���ண2��fyPg��Y�E��v5膜S�6Y�����녋�^�^�P9�Z�
gc9� �x⌒��M�:*}6�a/-�#�&�?����U{Q�Mؗ���8C&6�{�~\�1������%�_�?�N�͢�"�y��_ݲް��Qp_��!��W�R���!�8Ӷs�>�\�����㼆�������E֞�Ӗ�fs�IA������o]Ԫ��'���P��]����ڣ|C��{��q74��l�Z]�����7�L��޴ !�
�PB�kGZ�qTg�D'Mog�i�^}���"/���?��D*)(k]~S���5o��r%����q�Oz�.0��ʤ�����HΌ�8w��j�W���h��(q]I�L*�G`㼜f��4b�mH�bP�%Ůu.9v2`�{���Q�&{C���(�5�;�aܫ�T�|36/7/���[a��Ԃ����SG���7�<��rE��5�0���؁1'�9��4�\����º�����&9��c��T�iw�G`ͼٚ^u��t(�ّ�T_`�eJ�Jh´�J���~��A����x����O��ۇ2��������a\1���Pc����y�����A�o3���,� 5.����!�{>�ow<r3�n-~����Ԟv!c2�S99�5�QS�S�����}.���E+�N𥘜�Oc� �8�cNV�=��9�{8�8#��wNnM�Ÿ$G�"0���{m�EȲd����n5R�9�-O��@L��/߯�s��u{��Ck���=�BZ�j����L�M�ة�*'��źi@-2��%-`E,�s�M��;��g���\/4(�kb�U�a���y�J%��mE��R Km��9	e�{��'�[�GY���Wl���05�i� k��ԡ�)�i&�t�S88Z�e�� A��<y8���������0�����,������c5�/>���y��V�����Fb\p�Z�l��s���
�/C<�<�B�,-����#�����h�.<�L������S��6����AG�j��hn��YT����� 8N�e�B>�Y�({�w�-�5/�ͺ��a&�����U~w0l^���l��苐-���<`�\YѦ�h� ���Sg��&�er�߿@a�҇Y �N��������x-�� ���f���0H��N���b��Q���y�ԃo�D���V��Pa�P�[����gv���i�z޿�2� �������{�\-�fyr0�O�	�1Ra>]�:�̰��.�.�eA�f��J,�;����gؤ�Cq��híf�A���稊Vvmk�~�����|&���O�૴������M�#�.jF�t��x�W�.�,S�Z�A:�q$��Z�l���|�:�Q�%  �b�!-1��cݘ�c�?���;祥��	�=�<�<=D���� ��ɂk�m����&XR�0�j��(i��Or�v��"��R7mA��?�O-�������zȫ�/�x�.����b��L۫�w��ԵAbwM2A]��{d��c9�_��C�������o��͓��Z�=�t��A�9}�$K�b����y{쯣K~q���0����4g�R���̥�.���a'|�4��p�Z��hig�g�:aB��i�'M�g���d��WWȥ�'�z\'}����EW-h�G`�^��J�ăq.k7��d�`n=�`��b���?}�����4���ECt�x�t��<j�[�[�N� �'֓K���gI���4�#�{�LK9蚻�d&�5ؼ!��>j�	�� �N��F��y��q9�X�˅�/�<��y�߽���BF�Qo�7bh^���أA+N�h\@�m��[��M�_壦.�"u2�V��Z��d�����̨���R�)��s�V��f;T&&DLaӋm��]�2�Qd�ب<'���\ p��X��h4�,�ף���7=�{�v��2�f�U�����f��\_�_�����o����a��L�����(u�A���+�,
f;ݲ�3i�Ik�����T� 8b��~Y��R���K�S��9Id(UJ�촪�j��<�f%\�g�4q+ r�%fH/�5Yт
 �K���Pe��7`�㲳=�>̗�ƵG�����.o ��^�=��n@�ˎ�͈\1[�2��Oa�Tȋ����yJ�}-�Q��H��,b-`�%A�x�]��x��,9�B�^)�D��wϯ�'�y�xe��[���t�J�R���۫H?�й6&,ic_S4�t҃S�����G(
����SȪ .�b���*j������۸�'\���J�[t�JUy��Es�
�@��,�~�\���-@lk�	(�0�T����gE*/� 9��13G՜�f~�GSj��O핈��VnqoI������55@Th�H��Nf�n�����V_P�9P�m}�%�7��&�FO��y�?��g�� X���׮���<r=L]�)�� �Z�*��ν��t�c�������
�Z)d�M��v�f:¼(>�~�x=n'��0JЋl6�f0�۵נ��.%8�m
��5��QbZ%'\���5n<<�<XF�{���e�Z\�o!"y��c�ڭ��RL��Z1vw*�ۢ���#�{���xgfZG���:H�[�x0�+�h�� ��*rϮ���G^u�PK�<� i�ަ앥Y��q� ����]�tЭ��Fc�����p�)��Z�Wc~����^���x}r�[�i�D���MҞ�+����7�4�TN2�WH�,�c�j�J��~;��]"�1��QLj��|��o��"vY�-3��C���t��z[s����IA�󸵷��L1�Z�f�v��`���q������]�`�g�SBp)t������6qz�2�~����2��-1J��i^���U�J�����,s��!+�@���.o�C�����s����������1��6�p:����RK�I��@J�au�v�̑ �-S�,�&�hUN	�$�c"�am�#��?�c��VAկn�)��t��2
-�TU�(;طWZ�R�3Tk�r�:�[�!)�1Q�����2��ݲ��L,M���q/b���&7C����у+���[C^����zQ�za����<N�Og��<9���pk�1�M�1f�Q\?�����W1޸�B��͑M7��wOiː:�&J�G⭥�F��
ܷ�2Qܲ�x�)��zGb����OK�w�{�Q.���,��^�n}��    ��T���A�(f���&R �<��c֫η�`�L!��{�
�u�8�.`��\݇���'X������l4�A�fW/A��7�o�mu��7��A��a������Y��`=�B�[�R��<�OZ��5ɛq\���%S#���f��~�L�3
�_mN�:l"6�G�ka�MNVL��/<m�"u��ɨ��%ZJ.�Ȼ�X��|�����P����c\��;�ϯևx��F'����C/�]^��̮4���{� Tzw���V:x�:��Yf��ڐg�?\���ķ�nCa/7C,�ʙ4O}�
� u�E
��Iޗ5Tc�b, �����)I���Q}���7����h�ݷ*�gՆ.^Z�Ĺ��7Ț����PR�M$��IBj�z��[f2���ސ���g	)R�#��ꂒ�%9���j��v���1��⵵��5�o�E�q��y�uW�z�4�d�3	��)d���+�ZN�S�w&�I):�DdS6�;�5��@�����_=y�"��{�����xծ��76���Kuu�4�l����+�u�E���>�eL� zF@&υ������hc��ɏOU� +����YT����A.�Hg.��U!:�[7�|י4�C����#U-C��2VH�q#F�1��]�/�H��wy6(��,�&����.�X�*w6*<"�X6����FX���[��)�c�+�sr&��*>.Z�>�3]��+�C0	9o���Ѧ+�){d6���똂L1��{��+d=@�����"yZ���
��t��Y�u��)�Bw�[��s$��ދ�7K�k��^o�a��}��q�M�/����Y��DǨ��&K�+yA$I�L� ���!Խ�y��g��G��Zrϭ������P6b�1A=-�457SF� �yl�[K�;(S�ET��p��qpN}�tҜ�1��ǥ���!��w��8���j�r@y��`�^e�H|"��֩�	�9��b�U�R~�a���D��r���g�=#B��c��:����IZMu��)��&-@y�!0P�qjTˬ[%�}�O?�\�j8n�z���z����TlJ�[��xթԑ-Hf&�uՓ�\q���#Zf���G�&� C�֌�z��l�C3�_��6Of��|4���nZ�ͫ��_N����T���e]UU����Ӓ�#��6����t�����2�zZ�6Q㩌a�����|��7p>� ܸ�H��8�Rk��z�MK�=����uyp!��H�8�V�-8c��/NF5��զN�ln�|�dZxBIE�aS�ToW���������(�Q���8�M9��?F���sMlyp�x�yf�}�)=3fѺ�h#Ђf�U��)�.u��\+8GCd�I�@�;k�x7�_N�Q1��[��U"�o�+t���δ�{m�(J��<Y�����[�%~���?�	�3gz���)�Q��a����Z<�t�I��e��U�DJ"2�p��W�uI �Q�Ar��)	4��F�$9��_�Z��ϛ�C}f�� r�J�J�q��i�R�L' ˠ�$G�hׁ�@�c9Mt����n�@��|�^D�ȁ(��r}��Dd���R3��W�@�c5V��LN顠b��x'�Ĳ�����IO$C������"�v��^���Ko� �{y9��Q���x��Ɣ=9�Ok%���&�}�F�I��*r�/R����8z�>�7�~f:�rü=D�K����(J6N;q��V���ޯM�7	�c(Æ�F��c68;j�:����B�z���m���[[.6Y/dG���guD�
���.=�1�.� P���sH��m�Rvk#�cD��0��~л���>`I��#���K��%�;����xi}WXn;<��z�.-�Ϋ'q���z{��L9w$gV�q� w�W3+��u����`d/M[B��Lb"��>�R}�%v)���<͔�"?z7㱟_8܇�������p�D7�����|��Hk/�)a�ą�����:	�)J�cD2m�*
���B���w&��0O9)�д�z}�9RJ1a��ݼV���̽� 3��S�U�(9`Q3re&��AG>�-�`j w�ro6�Q��w�TƓ����K���P�-6�n����Y��!9+�|&[v��Be�ӬN��*�)Ԓ0�;��~���ޭ��W�_��o^[,�&3;_{@.����CvV �L��ax�Hr/)d���p?)&+4A��q�!�p��!+���˼̏z����[�eX�#���LR_���[8����?�pX���:�-0��%�GUT�@�g����9�����¡K{`�ɵ���'��q�nV�D�c�FB�a����[�$���=P��^�YE��'��2��_Y�vf=�ҍ�+���Kx/��uJ�Y:�խ��W[�j��-
B
��ެ3�x��ʎ�qu�_�Bf��o����E��}����q.�@2����ؾ�#����y���G�i=}�>\�U!����@��%�!��e�Yŧ�?���Y�8p�auҐ���;Q/�RΙɧ��	�àF���8y���;���(��x<5�"�O�t䶖�d~����sQ����q��y��}3��\�>�9V*wxA�2�>�){%B� �8�#/���+��NŘ�DT�������lV�$}o�, ��ߞz���
�L>�nT`�ڔnA��W���q�!��ôn�NNW23]�,�W�P��{k���Mh3�^`]�������G~�%�js�5L&^9��o���'�ex}���L�^��ڧ���1S��=}��;��.�,7֟� ������ņ[��Z��p	�a����qaRiʨ�B�%X���J�i&k�@N }g��9�.6��t8w#��,Xm����5к@l�`�Z<����������ސ��|..��v�n�iu��2S�h��`�s�]X�Ž����z����<��J<���Bxʆ�e:�/�w��g�<g�d�_��|rϓiۨ`�dh}�:�xRď�)��p�s�W������5vR�\&{�m"jk����W���$мU���'�ڟHQ�����d�����K�0�5�O�`qp��k'�+��^j'�Q^S��Z�J�"&��Y'1	��'�Ue��G���(o��i��B:�P��������M�o��!����f��z2�\��UWq��^;�v�����N���Q�[?8�
�QvZu:���{~�C-�D^��]��	��m���9¨A��U�:����c����)בּ�����XM�Ƞy�n�Q����N�~�d�������ݘ<�rc}x->�v�տ=����=<.���Т�BV+�����~1(��Z��zx�Ť J#n�<ͬ�]P ;[h��Nm�?�A�j&oCɇ;�eĶ���ߺi����:�蘗pT���?���<x�-܁z�{kX.u^�Cq�k�CH&�X� "i�^jpҳ��E�Z���ar~�1�B��Ԓ@�0a0�!�vD�i��r)M�t��&�#ei��m������/����P��U�<�%j#�;ظ��2yA�x�����p����V;&��E�ѳ��(F����b  35���W�x8�G`�^���cV�E�1H$A�ux��鼊��=�#�_��uX�뗷3 ������-=�Mnڙ�Qq�T��v�u/����w�l�('��1.dE0}���Eլ~sm��>�Q2a�e	q\��0�4X�8g�d3>0CB�
��T�G`��V�oe�]IT�A)�HY�JvH<��1�q'oԩ|���|�ݜ|�����Ƚ˿��8�r�p���sG���u{>:�YL��U������*��tMjc�lw�-ת�0�%Ȗ�{��P��u)�����^�@��Tx��_�k_�G�>�#s�Q������ ���|�!�1.<�)��ǣ���/�@^�K��V
�|w�W�Kw�q��eG���af� 2\Z��"�5�j���4(r�S�:Z�;�`I� %5�de�Z�BT��n1��|��T����5�3	@�Q�(�M����Y��q�O�}��5r��� }  T��f��浸Z[����q�F�Ȭe�s^n�^�XZO�(����qH�X?n��j��J�_K��ݽp��q��@���r.����̸���ª,w�l�$#3İ9�:~�v�;�I �l	|��\":�KrC?3��8(}gc�Z�Ş�kL�Uv j�З۴�F��9c#�@�����w�%��[8l6M"笱�D���2����eC��v��|؅W��V�����z� ?�w���L�n୷���q�Ħ�j��9ځ����r�^��MU��kquur�ך>#���-�b=�hY��r�w�w/=��|���O�u4c�E�!��<k~��l�v�3+-Mdv�����%)y�������S����o�����      �      x��}�rG��3�x?!���쏡H�V�/E��Cʢ�˱^<^`�AE�/ ~�|ɩ̕�h�XU�['�]ꅾTefe�\��-ϗ����j9]���'���oˇ��`8z2(�dY?�� ���x:*F�kP�zý�������ay����|��[=[-���ݗ�Eա�ho��r��s ��D���������}I.���C�|o�A��ߋ����������(�x2�+���ݮ�ˣ���{����\Tp<�O�z�_�u��Q��Ln����}y���	R�D�z�����/�du�n��'UO�z���Lo�A,'����;��@.�9���{�7�
��	�A'�t�p��N��|̑e���
X�5�\^��A笼t�"������4��0Y��z�P~��:\�W?�� ��e�C�̭�׊q!k�ݵ��w�w^��@�*С^��?�M��i+���/�1_:��ܪ:V�R�����:��|%�P/+�La��Z8�}w�nJ8h���2��>;���"�u&b���|�,��:>�u�����^]��9�>���	T�LugE�Ӿ37'ݗ�
�Vл�/���ϫ_u�8��q��\� wJ��~�[;�gqw��ȁ-V�,�w_3�C�a��C��̙:rWq �Cn~��u���ֽN�*��t��p�`ȡ�
�����߀���4�
�V�,`Y�j���3��0�5��ް�=�3z&w��>̭X:�y��n�|�.�΁��)/���h�iTm!Gj2�]��Z�?�
\��p&C,�.H��^��=T�����j�0�������/��<��p/�z4سW��?�1�@�Q�����Po�ٜ�;�<w�ȭ�Y>��X8v��p����ZL�F#q��f���.i�p%ߌ>pԭ����3YQ��������������iy��.7l���cԭ���Y��\��f��5��c�7�d�<�*B@�fN�pW�Z��{օ�ݷjJ'�/HT�sˌH~�獄\>�>/O�d_��u�=4�S��s�D�<1Q�{�����K=ȗ�����R�-���=��F���С^n�H֋3��q��u��_`���#�lB�)��#Æ�-#���X7}u&��K�q�C��l[�	C���˹@�ņ�Gk��ܲ���$g�����G|����z��ЀG��=L�q��C�|,����b���#���;�;����:ιf~#��X�zE�1�]4+k\n�+�p�-���g[�<�X�z��$g��_���F�	p�	Ґ�z	3����u��P�(�e���K\о~߫���r��^��5�l�q����6�)�i`<��[�����Zf���sr)��:�+�R����7l��Xjf�9�(`��_2	�7H��b�_�R��ew����.���{�H}��[*G:Y��0�a�ס^9�XƟ���ȗq0߳�Gw?:���]����������::���ס^�Y8g�$��"�T=��{�#��L���=��싏,�5�ߛ;�!҆5��/�5�ľ��^��8䦃��;�}}�A�l�D�5��΂`7I"�!�ZC$4���L��w�Э�OnY?C�������K�z�hg�����5�s�{�����Y����f��g�}���Bf�|�k�N�p�2Kv��^����>do�l�Xu��$Tr��C���Z��a9Dx��qغ5��h`����P�����2`�5Ԑ����Np��hz��M��(u����j��~GVX�qN�8CoXC�`�=q��C�Z��{uEY\�
G�r�:|�dі�W��/o5_��,�H]�����R̐�M�?�%2����d�LO���V~�Y��G:ԫ��D�KOG��j/u��э���m�4�~s���j�~Z�u�-[`c��1��f����/�8��*�Jt�7�ďNtm���L��ܭ~����wv��}o�%��q��y)�ի�າ4�� hѤ���D�9�X:���FN����M1���,,��l�nN��-�qڑ������W�SG{	-'f����(t{�ɼ��0��>b�7��ҕ�8��
7�D�[⯾Z���PD!��@|5���u"&L� �G|#nvp�8�L�~��,��x�yR���?w�_N����^7}?vD���M^�;8w�v�Cr%w�H�f�|�ΑM5Z��gn�l$
���4��;m��A�(bӳΙĭ�J�enXc`���VG8U��G��O���W9�cIg n:��%���{�����\�}��E�F�&�&��o�#�8�ΘJa�üi��Lɫ �'Ϲ��q��B�O���-|l���қ�+ݚ=S�t��� �#78A˹�A^��ha�4בf���2�6_�f!�3���j_��TnRs㜔���G`$���?r�����O�}�����@�>�0�^B!���d!�/��V��3��t�p���d�`C�Sr�Ye�����57�	xC�f�C$�M?9���7�L�Pi@��aX������T���XRQ�S�r�0Đ�,vF�� �Atnي�d}vONO�
nAX�a�u��Y���1��swx׷�3��E`��L#�|-��N��3�GY.�}���C��PБ����Ǚ��b{��[��]8���!����90G{�Ց{�Gr�MVy���|_S�[&��ב�^��wo�3��7h\�s��?��s+�j���5d�����=f�9j��*9VH�kG�<���H��G�����c�"��6�>��Z���!؛��U�|\*���]>��u�0\ށ&�㛒{��O�i�c;b�(.{�8�����
$9w���J�x>�f��p'X�	
���J�#��~1�lL@_��n5��>wz%���6R����J�'�$�"!<���w���46�x#c��lԥnE(�#�+܆�M 1�{fg�㒒;�Ҩ����L��+ĩAI@��c����k`ebi
�Ab�	[�/p�t!�1�0w�M
�3^a�[�,�J8�B7Gsƞ���#tԜ�Wm�:`��6	�5�t��u3/K�\�][	�V��CFֵ[z�����(�U-�K+�҄�u���X�S�(P�M�����HH�?���v�O����}�(����̜!�����;��;�
��,�\�ݩ�q����x�	�n-�s~ФwŽYoVV�//6��8�aŽO�#)B���x��	h�5!��bZ6������ ���OxVܗU�e�xx��E7���T��?�sR�B�u��4C��X?&�SIrkzfD*\:��M]�%.u��	�n��G�˿�$�SO����;�
ά*�<�|��2����)�H���мl�AV�T��h��I�N˟C���V}K��^qT��+1�n�J9T߃���͡����:���'^�R������(C؞X�E������Nt�z/H��A�t͍z�^�ö�����V�$���ľ���W�bȡUR2�p�ۺ[dO:�OZu�,�E��A.��U�Y=^gc�z�>2�{������@Ν�� �:�697�����5�qn������x���<��:���I6gB\�i�	��edr{���l�VЌ�t�U�xn�|E`�/�Ll�p>?>�/�#����c]���w նePF�2���a��k�� �k�*���"���Q��sR��<�S����ifџo�ST��9�p�bс�Ӵ<���|�����rx����,��������c� �W���rX�ϟ�A�9]�3^�9C�'�lC�B,w�I�s$z��J@����o�܈����W�c��7����O<SWLa�0��%}fnt��e�/� ��J>�s9�6l�!�����y9Dl�Qd#���`?�ם��y�Y��0�VD�qd|}p���wW��L��(	�%}l������/|Y~��(z����U{���G�POC��W�VE�)Iǎ�d������=�Q�#Gɴ�DjIvS
^;_X��pЄL�(y"�B�J1�bO}�����w/̂W�V5?nQ>�
� g�4�;�Q[���P+��Tc+x����7^}_Xa��Z�"r���S0!ɛ*EK�|h(��Y="V馝    ���CUC�p��fP��ڔ�ZI���ҏ(���1uJ�G����6a^I.v��5/ۢ���ߝIK�j�Su��ǳ�ҭ~������~,��a��3aJD
r�
��Tݢ_��D#�؆BM�*�N�
�P�!�[��a���*�7�����cW�����ot�x������Gu�P�ɽs��E�u�R��+�y�p�h�e0�2���Ch���(���&i5I��L%Y�\� CKO?'n>����-��v�l2���7���4)�x��l���Y�,Xh���Q�&�}�� �R��'`ȡV�S� �D3Xwʂ�/9�Y7G�GO��-&0`:#�ۇ{�Й��\�C��P~ע��5�zCw`)���Ve�?Ν1���9"�$O�Ow�7Z��'� �ZF��Kr�3��}��0 �E�!C7b(���;Q(�' m�q�FMf�B(s�W2�m���
rhu�~q��y8�O�[�	��o@�Ш��h�d�B1,^�澏=� '�e��b�7��K����.�@Т:|���8Ҩ���C����-��a��P0͵'0䐋-�4�����y��7�z���l��]^������_���N�X���!�g���@E��)0�p�(L�����(�p��6U�6Ajff�:�R�����/����M�OstV�&o���כ`�O
�hO+eӪ�zz�m-}ͳ��M��.0�0�D�-%�RMM�W?��3�|4S�i��my0+����/�ڗ�g`ȡmס��-m��B��,�p����B(cX7�O_�q)x�y,<��\�gb�WG,�2rȲjV/�9�Ca�G5'5�ЪeQ���ÒS��	��lQ���K��ݩ�V���芒��5,0���֖�����7gw�P�7����	FV\,C[� s,��2#*�fCo�g��4�X�c��C��x�[T��Q�$�y������?|�W��r9�Maſ�~e�� �"��V����G��钯��6��5���б{SR�/&sk]�
m�k_�Z ^S��9�r��j
h7W���5rh�W�I�P��'5���ު���uZ��wȫ?0�PA҅Q�!sO�
^^���H8�f�����3���Y��">���9�Cl���r��7���F-�����s�1���=e�ͽ��L�v���1�0Q�B�?4��F�sw1��ʆ�vbi�gT-OC�k������l��H&H�����@�ة�?wش[��u"(��
�/_'`P�/ge^���d#��6|$O0���!�+�ֳ�{;��[���7G�7�Rp8��C��G����MD@���`9���[g����e)��w�����厁��1��,��6=I�MO%`�MJ�zX�f�Z#����6!X�a�dFf&'�jg�5��		
N�Ő�6]�濚r$I0s�-����8J�� @�	���'�bȡ�{��f�����.S�3��Y����o߷�~qn�@��=S�7B�߾%�U[%�o�ƭEm��-�q�G�d�غ�4Y9�q���4��M�f�&�8l��×fz`1b5B��i �〗H�t�\�,��7*!r�$�/,'0|���h4�J ��������}�����m5E!"����ֶ��)��#�� �+
[�vu_��h8ũ���Ӑ�፣0��[ӽE:oz�t� h�WR�tk:��q���(�zЇU�BJ��i��D�L������iG7�9o�E�f�z�����NP��Нk�#w��P׾˒�3C��Y4�G6ש��o9����!�z��J�7Qvx�d�PYu
b�Eg��z�'ǐ��OH��m�Vp�7�z#�\ _w橡�ф�&�W���$�;��u��B`��](��a�Q5e0]o�L��k0��`�BI�=h�����!�Xh�3�����J�/4.� �{�� �~z��m��Z�;��!�-��j����۔���!��D�_,.��y�_=Y��^]�c��ȁ(P�-W�e���{�/�!(M��7ur��MLǧ��&��n�j��悺����1�����Y��3^;}�Ū��x9�D��}�n!��Kdɥԅ`ȡVX��^�����ʖ�Y{�څ�SC�~� �]����2�v۫���K�IW�n����Vi�%h������O�|t��&%�e����K�P'$���+@���`��l��:��߁�]��V�� �}li}�*�K6�$��[-#SH�,[��sge����T���)xHUr&yi]�*��]�pS��&��/q�C�~�v����7^��y����S�bo/�����L�l�9������r�\�/q�j�qYX�␍��޶i��ڛ7|����@�S����\h`�W`����!�]n$ߡ#�\�UwL��đI��E Y��Vo1hP�G�'���w9\iϭg��!����FqǃV����S�y�rxٞ��!yLyb%�c�aMI³,N�f��R���z�N��( �����]#m��X8���<t9��z�j���L�����8x��GB�V$D�+9�C���x��)�/J@����Δ�Ms�<R�-�0AS��]{M^KN-�P/��`R��K
�v�)��w��:����;d��s4]�,o$�p��Ѭ5���ְ����ŧ�F]���;Qp��vx<\�ɘ��#�& 7�c�h�+�Bx4(˺Y����I�DS�q�zS��=�Jc;�5�3|p򧹧Z��u���)�M�0��P�������r
��c��O.d�-��?m���+���-�?(/1tؚ������W�*9kC�Iu��K��Z�	��F��nbn�{f����J���bx�'�E� �5�P�6��7V�,���"HP$�w-9�C��+"�1J,Tʎ>{1�*`��c3�\'�3�t���@r�?�j��̎!�9����K�k)�9�@��\rH�?�h$�Rx+%��c�!�[d�#��WY����a�o�'�_/>��
�{Z<�'d�&�V�3�A	�,���`�Ch���K��ǐ�kב~<di�b���6[MA�������y'������3�hP�R�Ş61ԅ���_�J9�rg�UY":��%!�\��-y�G��Ҙq������er?Xo4(8֒�y�x���r�vf��>b�E?K^"��^.���zʓp�c���d?�M�%r�1lu�]�����J^5�!�;���z�S��Y��2^2�+�Z����lT��(0���8߾('���C��۝4-����Uy�����#�T��rw�\C��Qac����rhu�h/y�+m���[[0���A_��<H�"����a�V���tsk�V��i�,���9�1��Cs��c�Gb�-�#~�å�1�G;j��s�=	>y��Y`ȡ��sL�^ї� .��!�Z /b��|"�#�����r��Y�S3�< �S��9(� j���erH5�ɮ���A9Y}�%N�ǐCo�/��ͬfD��{�&���=~N,/B�54<����#�1n�V �4��H�X�*�Tr�9���4����.�Sr�9����[`*������I@,<��VV�k_����BXw��z�@+9!C�Rڋ6�TF�O�9�.��QK����qܶzo$�	�����N󜛙�i����;z�q�l��%Y�A][l)Qr�=��PiZ��%��C�_�[�ܦ���h��D��qs���i`֎o	�aJ��r�E�P��M�*�c�&���5ow�w�n���rصu[�JSMhN�H@oѩ�p'8W��5�?��)��G���ufG{�^1@LYJ1ᰆ�UEP��0a�5�+�Ξ�a�4Ĭ�}��I�y�rȢ��$s�B��h���r�Ŗ��?���>��W<��y]nm����|U���+�A��\N�>Z�I�i"�EO�'O���GC<6K��5��ig�K_Y�_���j�1����N�4����|]���A^�C�9⿧�G��py^������3Z����|��;���Li9�ܺ�C��^	    X�g)��N�Y-b
b�j�9rTM'�M��3������ �W��vӫM�oȽq�3��x�] ��o��_�Ͽ=,�tp5S������B&���3�1�w�❩����v�>�NLc
rn}ڞ��yo,y�[٢�k9Pӈ{�q�1̉�I�+�W �6FJ�C���Pؑ�k[H0�|JQ_�!�]�^����u�����i��|b6����O�W���!��m1_$Ҿ
��8Ⱅ����M9S�F[���e��V�i�r���-���>���h�l&Yyt�bYf�W������G��о���m9�JUl}��}t���Ԏ	�vNL��ڐ8��nM�W���^!Ą��։*��J�˚�sU�	�l�!�6�8	�b���R
&
VV���a�=�hy���c����|��Mڛ��z�/f�}q�͎�GJ��;h���� �6�'oc�!אl���o�k=�gb���zC~���]������QwSc*��Ɛ��Z�	��VJߍ�3�ПN�V9��Y��XTę�r�� �l��v�+�d7������M+;��xD >x!܅3�:����n O��(]��\���������cȡV�}�\����LC��5�z��锧�F-�V�9���+{&`���٩�$1�`ŉ���`��܎Rg�l�fF-u��H
��7j����[q�9�"Z6 �{=��VS�1M�Tџ9yvk8����?�~c�q�v`	g�c�a�AH�t��y����*��Y�MNR0�GdK������Կ�t�"7Jy;�tW�P��7ڷ�$o�m��}}m��$4�"��ﾔ{@8�b�����J���̷�RaJ��D�Oէ�Q1��-r�I����1�P���є��fi��gsrN
v���}�-�Y�R
"��<�7�N�wx��~5�g�h�y���YQ�r�7�a��Tbfd�uL��x0!����ܑ�4�O@�	�����~������2�?�/���E<$S�X�-a��\M,�Lg�S�K�)Zkjt�ڧ�S���d-#�}ѕl�9cC��(�=mH��YG#u1W��)�X�|�[X0�Ǯ[�x'�b��OxI�	S��G��L^,C�*^�!�<��:0�$�}�Z��{�V��\rO=�M4�Оj9	����q�1�)��%<�C�A���؁�mOA+7e�n�<C�@QU{�tjbݧ�_��&� �f�u?��x�V�D�∣����x� �zE=ؒ�=�yOn�a���과�x ܌bu��Ư��q��V���]�2�W!`ȡ�;�&ڦ����bKb�\���A^l�k0�p˭�S�;��kD�����6���3L@mK
��͋,0䐶3'�m�^W	������u<q���3#�f�Q_3C&/	��Cm�Mj�T7$(N�m�?y.]�q���w@��As����j�]�.}\l��������ur&��+��߃X��~�'�I��g�EX�r9���%�j�P����	���@5�Y������� ��Dr�ٖLs0�H�S�ܥ�ʆ��9�%U�:	C��3�!u��إ�5&��X��UKSp[���7��Gy��L9���ļ�]��c��t��w��Ng̺ձR�/�YǳsW��e�m�K5P�Q
k���E;o�w��nDQ�G�9�w�w@�%�����3p6��I���D��4y� '�٪1]x5���i��N���M����K�<.�!�Y��;�:{y������΃K��jG`��v�wM�?�&�F�����hLu��A��<��!�>��G�Y�@�p�%��[�Õ��5��^���y`�a�y�C[h�Q�aK-�:j*d�[�Ŝ��8b��?O��7A����O:�1.b���A8��%9����F�3<���@�I
n��y
_>��y��#@����͠��R-ٔg.-{w�߂�R�Kx��#|�
]1�b��A!C=�b�' 7��;갵���C��s�a=X���c�3���[!I��IdR����\s>jƍ|]bY�ʖ�?�iH�F�*9�<���������y�io�L廈_�h>q^�yf�����$�)�����l)
���sW\n C8km=i�P�?s����O�Tq�9̑�DZ��y-��1�t���oX���ҝ.�MJ@.Z�D%C��W�S𔹗�[�Wi���Mg�����Z��6qY9ܺEb<Ҕ�D�;�y��:����`���$�d� ^|��	r���W�������o@�i��ri���6ā�-
�4\��bި�|�=2^yT9������7B���B�A�X@���,�i�hM� ���ΨUS&Ҕ�����$r�9���v�s�N�8�XiU`�nȌҩ���	$�,�ZKt@N�,�����"�pE
b[{�)~��J@k�t�����b�|�aѕ����vO���D���Q_�3��J���">�<G�c��'������$��3A��R�i���\���:�܄�>\CM?8,�ASK���	[��[�H�a@৬����W�k�S�X>��������[�Vn�(���Yr?1Z��ܯ��_ZƦ~5�v�����k�2X@�����h�w��������Xtב �YGq�y��p�GjմJ=
�P��CI�j��	�<	�m�,�D�>�Qe=h;L��3� X����ig�l���zw��O��=�,�|-�/Mѩ��6I�;f��%�6Kt��v1ވR�[Y?U�؁��1��WqY9�'�|7��8�x�A+�^|~�u..,�	�k��}b��%��s�S�fظ��������	1ı�}*YZ���(V����l��E��3���T=Zr��*P��r�RXv�z�M'N������	�yS��A�?I�& ��C'J"dwŃ��Ke�� V�GZ;J��8�捥R��Ʌ�:k��\�C���q��׽_��^F�����9
�[.����m7��ħnhh�&p�3�Jx�2�F�wgD���L?n>lJ���|�K0cO��}Ȃ�@�Y�J�MurK��3^�����`J@O��&�?�Ema�V�����s�һ91�9Mk���ޚ+��@2;�* 6MVf�*t�?�/���r����h�M����XY	{�-��ʋP�85�P6�~f3��p��C�xDĹ)Z��KS�ds?�]�,����I�
�T1�
'��{��c`혷X�+�w�
�r��FE��xo��;�K��n�]���]��>�2 ��!��V>Ť	H����/��3�N�����Fr&�vR��2Z��Z�հعg���2�໓���}[�벴b��S0�6��ҽ�sr�P9<=o�y���N����Q���M�#
U�?��D��O���)��@1���3�b�@��O�D�/��6M)�%�C��Y�8B�gMGg<mD�+�Y:gSq;��s�O9�r+�<WV��uF��D��G��p���q̺�b��t8Z������[���,��&�'��-/�1��L˻݇�M� ��pؙ�oU���G*�b�@BXW�luk� ��޺(�7G,6���$�>/4�r#>b�3^ES��g6W�=E�}�'�j�醞<|�VQt��ۜ+ƍ�R�rX�Lq����PЗ�+�V��?i�P@.#S�oJ�m���y�3F�#䂍B�#�7�)�

*������\�3b���OB�Q./�!�V�]qtF)����c3�Ab�3P4������r�5d�UfK���/sM@kP���Q�r�Q޺o;�`qfƐCͶ�T�=��7l%5���Hb�� 3���э���0O�/�=�޸�- bƐC��oy�Vo��*��d�BZ���Y	��
	��������r�5B:}d�
Zd.:#�cذK�l�^���qL��SU�"�vb[agɟ ��l�
[Y&��g>�6��A
��B#,��2tG��'�F��:���/\��J_��Ҽuw>�$P���|����
�5�jƐ�S��k��?��YgĪ��F��bӼ�b�r����' �  Z���3��E���K4�؊!RG��^U7]�����8Y�'c_:5S&:2�{z� >VD����զ���x���  �W�\J8�j��h�6�T2k_�zN"O�3�Ź�6f^�bϩ��2�r�A�:6Nm����Z�`I�k7D�˯��1��f���'l���L�o��H����;�M1� (D-^;�\�Ҽ���5WCƐ�v��_�j���6���' ��,��_��0Gu.B����y��BJk��ue�f��<�����1��>��Ѓ�:)�Ֆ��
�3IRP�E�9ܺ)��[�p��6�Mi��cG�ړ�ca��[r����?lf]�t�6j���F1ۚ���έ�\&Ck�=�%z�GN�
J@�7�r i��\/C�X+_ �`��ۮX��t�C�f����
�r�����ǗymE?�>㘛]V�A�${���$cȁZ�H���
!�Ln�$��f(�CO���&�)���ǎ�����3���1�0ݲ�َ���8)h�X�WPO��L��1�r�.�;3}9�9H�+�����ϵgތ;�䲩,5Ǩ�,1�R��9��S0��>����cȡm�ƝFrG	�C�SX��O�����8r�� |	���7����Ъ}��Z�&�E	����щ7G�1577�c����$�9�T Q�BAC;C���1��vJ�rM^9�
59h������	hush�I�48I�Z7@	nS��.�z����YK9��^g��Ec>W݁C�o�O	��V0
56߸���n=m�b�!��<�ˀ0P
��!>��w�!Xl���-�����[
f)M�g�}6����4��җ5��Ő�n�@���,R��9!����K5��ŐC[�hl�ͥI�LZ��4$�rMȉ��H���y���@�M�����7���Q$v��Hԇ�<r�t3]%��ޚ�D��_��B
^!�ޚ��=SH6u�2A��z�1�<�<h�K
]f�ҏ�k�)�Bs���5�qD�R�#�sR����C��5Ψ"�*W��P�.��� �'���{!1�T�hÍF�MD�F��%�!b�H�M�&�|MK��Xy+S��xT����r�ņ�,��T���|I�4>�i5�I���s�1����������\��沽r�uC��g�����7n�Ń
sۙ�K"�� \���`�̟��K	3I���'�c�뙱�7^��<�q\c�.�ą�J�G�������"�rh�Fy��V���Iba);1�}�j|�q̲��]����<�to��	����%�{J@�7��t��j.��!��=�b��!�B�&1�'h.����[:cfV�*t�V�_�ȓK��|o]���羖�6��q�Q�v�q~K�$��{PLkSs�^9�bc)����F=轞�Ş9�X5�O>�¾J����M��U�t����u56q4��Y�Q��җҩ�\[��-�j�����B/��L�KQ�a�d�i�D���hHx5�^�\ã����2x�{C���?��=/�� ����2�� �,�ܐ���R<ݎh}	���.Pϭ�t��$����`b�v �	�}�=M)},w��y
���H�V͕s1ԫA8@�&�҃x��\;���:����5H��p8 �$� �����b�������nV��1N�ͷq5�/������\0:Ǣý����c$����#�(�
Ƅ	h:�͚v8Hu��x,��Z�(5��h��Gk�E'>Y1/J���/�z������\�����c�������?�	��      �   �   x���� C�3*&c$aC����)�?���c����9�	gw.���=�>�;��<�L6�^�Z�n�6cO�	�2s~ZAUh�o�7T��������|=-��r����6\O����	׳�z�|=g�����'���@'0      �   ~   x�}�1�0Eg��U��N�Cp�.�J3�+q}�NPA�=�'�O`�͋�����?�h�t�,c�#�r�L���	Bvg���wy��{�z�z�?�5���~�| ؎����*��T��o�S@�7r�8�      �   �  x���Mn�0���)�L̛៸3�/dۍQ�M��\����C��@{	�F)N,�N
 )=��ÑZ��������Of1�}���C����ag؛ܲxPJ�$�Ĳ Y悶\bF��,�l֛�Y�3xFU�P� n�
���$���d��1N'�����%�'��*g�z�A�þ�$7D�X	х�g�#�B�Ə�����+���d�G�j�?y�6K�>3H3-'^*�J�fy��z�2��/�t���%� ���&'m���%g�����C�Q�X$��ͭ|)���.�#��n�}7�Mw���ۚ���yHV�B.��H����[}����հ���	>�}hk�G��L��$�<��/<X���1c�"Y�ܥ�k�\�h� ��������h:�8���c��+ɾw����A      �   z   x�3�tt����0�{.츰����.6\�p��¾��FFƺƺF&
V&&V�z�f��x���8C�]�8/̿����=��M`3���hZMͭLM�,��1ME������ vh<�      �   ~   x���1C���b�!嵗�_G�\H���O�GϠz�������\�����N��BJA(DW�^�yM&H��F��?vq0�8��+m<�}e����<q</�����R��╨xe��̏!      �   �  x���ˮ�����k�g'�BA�\(^Q$=QAE����~��wr&'��;�~�F����ۘ�O��}��
2{Q�����힋R�%�5�� ��g�?#�a�:�����$1��g7���ϋ����O��pX��$3?e��N�:��ғ���A��1?�Y��:8���g�%�9n��Oh�	�Oj�h�0��P41;)��]�	5��>\�k^sA��l��^�G�^�I��Ǘ$VdN�=|;��Nsn�1gS����y��J�x��|O��f{)�G��әZ:��|DE� �ӧ��
+ܝG�N�]��io�5�|ӓ�m\(a�PQ�[�a�td���
�����ϙ������>�����?��������2&uH9���� �9 �7��/�]��×�ޠP'|� ����"�җ�n�9����a/�a@P�aS_6��HQ2	���JD;NI�4A>�IDWT	 �y�A�+ $��G�?�T�"G ��� ��	я������t#��g����X}o��1;�����8?)gY��@��0���as��)1mS�xv�5O��1�#��_�!|%y�X��%�8�B���&i�z®;�f����~�_d���;��lp�:���)J��t.��s�O\w	�:)r�w.�9�]�����E_[�[4'��JS�ɑ����d*�o[�F�#]ҷ�o���$��)8����W���#)����u����9mŦ���i^P��q���ȋ�:��5	4
��s�!T�j�b��O /�B�e�e�}����FT3`o�me�MӾ�}��㦚Ak��RM��؎ǫ�$_<��|��mD��C�TI,����N\�t��묹�2�C���>��6��>���9���0����=Om嬗�нu���~Bz�X���u\AE����{�D�Gc��O��u�l+���	F��l1Qcn�����TIE��=�9
��&�PA%�EҌ���=lgП�VC�=��x�%4��@�;k1E����
����Jb���q�~�(�I�p0&������b�cox0��K��0�=�:�zWbvNB%��
�8��W�"S�J��Y����mj��k�,�M}K�FӍ��:$X):�h�6�
'�J��
	��D��H���;R�)�ț�:3��8�mqd޺�
��a6�ĺ?���Lk�6�r1��d��,fT:�	���%�X�XsF����E��t�HP�_�疵���S�N�Pn�w!;�4Y��@�J�����X�H��^$S�����b�~�<���*�8_��}��謲|`��'vc�;+���]Z�Q�G<*����(����ᢌё֗��I�A81;R�t�Z��'�Y��R���C'5rUsA�-\���!�mUG*a�$Q�aL�F��r/�&�h�)��#/(A����h�@�=��a�=�x�x>ϕ��\6v������)<9L�
�Ub�Tz��֒�0����wͥe5��<�\';V��b�|���Z��Z���h�JqA�v"��1���*�0�7�c23�,Kf�Y;���0��ի�'
/Ms�2;�E��q2ufW�[е���瀯��a��Ȫ�X��X�%��0�����H8_��Z�k�4�&7A�}k��{I�\�]���Hf󆦼��-��x��2̳�bĀ��t�m���2�qMߠ��"f�c��l����BM��\�k��43����:�����S�(��^E8��IW%��r,��AD؎     