PGDMP                     
    |            edwork    14.14    14.14 W    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    16395    edwork    DATABASE     d   CREATE DATABASE edwork WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE edwork;
                edwork    false            �            1259    16467    cities    TABLE     �   CREATE TABLE public.cities (
    id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    16466    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    222            Z           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    221            �            1259    16449    combustibles    TABLE     g   CREATE TABLE public.combustibles (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.combustibles;
       public         heap    postgres    false            [           0    0    TABLE combustibles    COMMENT     8   COMMENT ON TABLE public.combustibles IS 'combustibles';
          public          postgres    false    218            �            1259    16448    combustibles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.combustibles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.combustibles_id_seq;
       public          postgres    false    218            \           0    0    combustibles_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.combustibles_id_seq OWNED BY public.combustibles.id;
          public          postgres    false    217            �            1259    16458 	   countries    TABLE     d   CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.countries;
       public         heap    postgres    false            ]           0    0    TABLE countries    COMMENT     2   COMMENT ON TABLE public.countries IS 'countries';
          public          postgres    false    220            �            1259    16457    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public          postgres    false    220            ^           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public          postgres    false    219            �            1259    16430    permission_role    TABLE     �   CREATE TABLE public.permission_role (
    id integer NOT NULL,
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         heap    postgres    false            _           0    0    TABLE permission_role    COMMENT     e   COMMENT ON TABLE public.permission_role IS 'tabla pivote muchos a muchos entre permissions y roles';
          public          postgres    false    216            �            1259    16429    permission_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permission_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.permission_role_id_seq;
       public          postgres    false    216            `           0    0    permission_role_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.permission_role_id_seq OWNED BY public.permission_role.id;
          public          postgres    false    215            �            1259    16421    permissions    TABLE     h   CREATE TABLE public.permissions (
    id integer NOT NULL,
    module character varying(50) NOT NULL
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            a           0    0    TABLE permissions    COMMENT     >   COMMENT ON TABLE public.permissions IS 'modulos del sistema';
          public          postgres    false    214            �            1259    16420    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    214            b           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    213            �            1259    16493    prices    TABLE     �   CREATE TABLE public.prices (
    id integer NOT NULL,
    service_station_id integer NOT NULL,
    combustible_id integer NOT NULL,
    user_id integer NOT NULL,
    price numeric(7,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.prices;
       public         heap    postgres    false            �            1259    16492    prices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prices_id_seq;
       public          postgres    false    226            c           0    0    prices_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prices_id_seq OWNED BY public.prices.id;
          public          postgres    false    225            �            1259    16397    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            d           0    0    TABLE roles    COMMENT     K   COMMENT ON TABLE public.roles IS 'Roles son los perfiles de los usuarios';
          public          postgres    false    210            �            1259    16396    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    210            e           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    209            �            1259    16479    service_stations    TABLE     �   CREATE TABLE public.service_stations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    city_id integer NOT NULL,
    latitude numeric(10,7) DEFAULT 0 NOT NULL,
    longitude numeric(10,7) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.service_stations;
       public         heap    postgres    false            �            1259    16478    service_stations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_stations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.service_stations_id_seq;
       public          postgres    false    224            f           0    0    service_stations_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.service_stations_id_seq OWNED BY public.service_stations.id;
          public          postgres    false    223            �            1259    16407    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(256) NOT NULL,
    role_id integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            g           0    0    TABLE users    COMMENT     9   COMMENT ON TABLE public.users IS 'usuarios del sistema';
          public          postgres    false    212            �            1259    16406    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            h           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            �           2604    16470 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16452    combustibles id    DEFAULT     r   ALTER TABLE ONLY public.combustibles ALTER COLUMN id SET DEFAULT nextval('public.combustibles_id_seq'::regclass);
 >   ALTER TABLE public.combustibles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16461    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16433    permission_role id    DEFAULT     x   ALTER TABLE ONLY public.permission_role ALTER COLUMN id SET DEFAULT nextval('public.permission_role_id_seq'::regclass);
 A   ALTER TABLE public.permission_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16424    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16496 	   prices id    DEFAULT     f   ALTER TABLE ONLY public.prices ALTER COLUMN id SET DEFAULT nextval('public.prices_id_seq'::regclass);
 8   ALTER TABLE public.prices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16400    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16482    service_stations id    DEFAULT     z   ALTER TABLE ONLY public.service_stations ALTER COLUMN id SET DEFAULT nextval('public.service_stations_id_seq'::regclass);
 B   ALTER TABLE public.service_stations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16410    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            O          0    16467    cities 
   TABLE DATA           6   COPY public.cities (id, country_id, name) FROM stdin;
    public          postgres    false    222   a       K          0    16449    combustibles 
   TABLE DATA           0   COPY public.combustibles (id, name) FROM stdin;
    public          postgres    false    218   8a       M          0    16458 	   countries 
   TABLE DATA           -   COPY public.countries (id, name) FROM stdin;
    public          postgres    false    220   Ua       I          0    16430    permission_role 
   TABLE DATA           E   COPY public.permission_role (id, permission_id, role_id) FROM stdin;
    public          postgres    false    216   ra       G          0    16421    permissions 
   TABLE DATA           1   COPY public.permissions (id, module) FROM stdin;
    public          postgres    false    214   �a       S          0    16493    prices 
   TABLE DATA           X   COPY public.prices (id, service_station_id, combustible_id, user_id, price) FROM stdin;
    public          postgres    false    226   �a       C          0    16397    roles 
   TABLE DATA           1   COPY public.roles (id, name, active) FROM stdin;
    public          postgres    false    210   �a       Q          0    16479    service_stations 
   TABLE DATA           R   COPY public.service_stations (id, name, city_id, latitude, longitude) FROM stdin;
    public          postgres    false    224   �a       E          0    16407    users 
   TABLE DATA           C   COPY public.users (id, name, email, password, role_id) FROM stdin;
    public          postgres    false    212   b       i           0    0    cities_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cities_id_seq', 1, false);
          public          postgres    false    221            j           0    0    combustibles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.combustibles_id_seq', 1, false);
          public          postgres    false    217            k           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    219            l           0    0    permission_role_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.permission_role_id_seq', 1, false);
          public          postgres    false    215            m           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 1, false);
          public          postgres    false    213            n           0    0    prices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prices_id_seq', 1, false);
          public          postgres    false    225            o           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    209            p           0    0    service_stations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.service_stations_id_seq', 1, false);
          public          postgres    false    223            q           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    211            �           2606    16472    cities cities_id_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_id_pk PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_id_pk;
       public            postgres    false    222            �           2606    16454    combustibles combustibles_id_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public.combustibles
    ADD CONSTRAINT combustibles_id_pk PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.combustibles DROP CONSTRAINT combustibles_id_pk;
       public            postgres    false    218            �           2606    16456 !   combustibles combustibles_name_uk 
   CONSTRAINT     \   ALTER TABLE ONLY public.combustibles
    ADD CONSTRAINT combustibles_name_uk UNIQUE (name);
 K   ALTER TABLE ONLY public.combustibles DROP CONSTRAINT combustibles_name_uk;
       public            postgres    false    218            �           2606    16463    countries countries_id_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_id_pk PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_id_pk;
       public            postgres    false    220            �           2606    16465    countries countries_name_uk 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_name_uk UNIQUE (name);
 E   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_name_uk;
       public            postgres    false    220            �           2606    16435 %   permission_role permission_role_id_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_id_pk PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_id_pk;
       public            postgres    false    216            �           2606    16437 8   permission_role permission_role_permission_id_role_id_uk 
   CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_role_id_uk UNIQUE (permission_id, role_id);
 b   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_role_id_uk;
       public            postgres    false    216    216            �           2606    16426    permissions permissions_id_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_id_pk PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_id_pk;
       public            postgres    false    214            �           2606    16428 !   permissions permissions_module_uk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_module_uk UNIQUE (module);
 K   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_module_uk;
       public            postgres    false    214            �           2606    16499    prices prices_id_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT prices_id_pk PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.prices DROP CONSTRAINT prices_id_pk;
       public            postgres    false    226            �           2606    16403    roles roles_id_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_id_pk PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_id_pk;
       public            postgres    false    210            �           2606    16405    roles roles_name_uk 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_uk UNIQUE (name);
 =   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_uk;
       public            postgres    false    210            �           2606    16486 '   service_stations service_stations_id_pk 
   CONSTRAINT     e   ALTER TABLE ONLY public.service_stations
    ADD CONSTRAINT service_stations_id_pk PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.service_stations DROP CONSTRAINT service_stations_id_pk;
       public            postgres    false    224            �           2606    16414    users users_email_uk 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_uk UNIQUE (email);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_uk;
       public            postgres    false    212            �           2606    16412    users users_id_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_pk PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_pk;
       public            postgres    false    212            �           2606    16473    cities cities_country_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_country_id_fk;
       public          postgres    false    3238    220    222            �           2606    16438 0   permission_role permission_role_permission_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_fk FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Z   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_fk;
       public          postgres    false    3226    216    214            �           2606    16443 *   permission_role permission_role_role_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_fk FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_fk;
       public          postgres    false    210    216    3218            �           2606    16505     prices princes_combustible_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT princes_combustible_id_fk FOREIGN KEY (combustible_id) REFERENCES public.combustibles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.prices DROP CONSTRAINT princes_combustible_id_fk;
       public          postgres    false    218    3234    226            �           2606    16500 $   prices princes_service_station_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT princes_service_station_id_fk FOREIGN KEY (service_station_id) REFERENCES public.service_stations(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.prices DROP CONSTRAINT princes_service_station_id_fk;
       public          postgres    false    226    224    3244            �           2606    16510    prices princes_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.prices
    ADD CONSTRAINT princes_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.prices DROP CONSTRAINT princes_user_id_fk;
       public          postgres    false    3224    212    226            �           2606    16487 ,   service_stations service_stations_city_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_stations
    ADD CONSTRAINT service_stations_city_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.service_stations DROP CONSTRAINT service_stations_city_id_fk;
       public          postgres    false    3242    224    222            �           2606    16415    users users_role_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fk FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fk;
       public          postgres    false    212    3218    210            O      x������ � �      K      x������ � �      M      x������ � �      I      x������ � �      G      x������ � �      S      x������ � �      C      x������ � �      Q      x������ � �      E      x������ � �     