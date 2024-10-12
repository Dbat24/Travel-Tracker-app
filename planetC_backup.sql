--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2024-10-12 15:01:51

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
-- TOC entry 215 (class 1259 OID 16400)
-- Name: capitals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.capitals (
    id integer NOT NULL,
    country character varying(45),
    capital character varying(45)
);


ALTER TABLE public.capitals OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
-- Name: capitals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.capitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.capitals_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 214
-- Name: capitals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.capitals_id_seq OWNED BY public.capitals.id;


--
-- TOC entry 221 (class 1259 OID 16466)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    country_code character(2),
    country_name character varying(100)
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16465)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 220
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- TOC entry 217 (class 1259 OID 16433)
-- Name: flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flags (
    id integer NOT NULL,
    name character varying(45),
    flag text
);


ALTER TABLE public.flags OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16432)
-- Name: flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flags_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 216
-- Name: flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;


--
-- TOC entry 223 (class 1259 OID 24712)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(15) NOT NULL,
    color character varying(15)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24711)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 222
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 225 (class 1259 OID 24721)
-- Name: visited_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visited_countries (
    id integer NOT NULL,
    country_code character(2) NOT NULL,
    user_id integer
);


ALTER TABLE public.visited_countries OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24720)
-- Name: visited_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visited_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_countries_id_seq OWNER TO postgres;

--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 224
-- Name: visited_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visited_countries_id_seq OWNED BY public.visited_countries.id;


--
-- TOC entry 219 (class 1259 OID 16443)
-- Name: world_food; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.world_food (
    id integer NOT NULL,
    country character varying(45),
    rice_production double precision,
    wheat_production double precision
);


ALTER TABLE public.world_food OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16442)
-- Name: world_food_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.world_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_food_id_seq OWNER TO postgres;

--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 218
-- Name: world_food_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.world_food_id_seq OWNED BY public.world_food.id;


--
-- TOC entry 3198 (class 2604 OID 16403)
-- Name: capitals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capitals ALTER COLUMN id SET DEFAULT nextval('public.capitals_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 16469)
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- TOC entry 3199 (class 2604 OID 16436)
-- Name: flags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);


--
-- TOC entry 3202 (class 2604 OID 24715)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 24724)
-- Name: visited_countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries ALTER COLUMN id SET DEFAULT nextval('public.visited_countries_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16446)
-- Name: world_food id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.world_food ALTER COLUMN id SET DEFAULT nextval('public.world_food_id_seq'::regclass);


--
-- TOC entry 3364 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: capitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.capitals (id, country, capital) FROM stdin;
1	Afghanistan	Kabul
2	Aland Islands	Mariehamn
3	Albania	Tirana
4	Algeria	Algiers
5	American Samoa	Pago Pago
6	Andorra	Andorra la Vella
7	Angola	Luanda
8	Anguilla	The Valley
9	Antarctica	\N
10	Antigua And Barbuda	St. John's
11	Argentina	Buenos Aires
12	Armenia	Yerevan
13	Aruba	Oranjestad
14	Australia	Canberra
15	Austria	Vienna
16	Azerbaijan	Baku
18	Bahrain	Manama
19	Bangladesh	Dhaka
20	Barbados	Bridgetown
21	Belarus	Minsk
22	Belgium	Brussels
23	Belize	Belmopan
24	Benin	Porto-Novo
25	Bermuda	Hamilton
26	Bhutan	Thimphu
27	Bolivia	Sucre
155	Bonaire, Sint Eustatius and Saba	Kralendijk
28	Bosnia and Herzegovina	Sarajevo
29	Botswana	Gaborone
30	Bouvet Island	\N
31	Brazil	Brasilia
32	British Indian Ocean Territory	Diego Garcia
33	Brunei	Bandar Seri Begawan
34	Bulgaria	Sofia
35	Burkina Faso	Ouagadougou
36	Burundi	Bujumbura
37	Cambodia	Phnom Penh
38	Cameroon	Yaounde
39	Canada	Ottawa
40	Cape Verde	Praia
41	Cayman Islands	George Town
42	Central African Republic	Bangui
43	Chad	N'Djamena
44	Chile	Santiago
45	China	Beijing
46	Christmas Island	Flying Fish Cove
47	Cocos (Keeling) Islands	West Island
48	Colombia	Bogotá
49	Comoros	Moroni
50	Congo	Brazzaville
52	Cook Islands	Avarua
53	Costa Rica	San Jose
54	Cote D'Ivoire (Ivory Coast)	Yamoussoukro
55	Croatia	Zagreb
56	Cuba	Havana
249	Curaçao	Willemstad
57	Cyprus	Nicosia
58	Czech Republic	Prague
51	Democratic Republic of the Congo	Kinshasa
59	Denmark	Copenhagen
60	Djibouti	Djibouti
61	Dominica	Roseau
62	Dominican Republic	Santo Domingo
63	East Timor	Dili
64	Ecuador	Quito
65	Egypt	Cairo
66	El Salvador	San Salvador
67	Equatorial Guinea	Malabo
68	Eritrea	Asmara
69	Estonia	Tallinn
70	Ethiopia	Addis Ababa
71	Falkland Islands	Stanley
72	Faroe Islands	Torshavn
73	Fiji Islands	Suva
74	Finland	Helsinki
75	France	Paris
76	French Guiana	Cayenne
77	French Polynesia	Papeete
78	French Southern Territories	Port-aux-Francais
79	Gabon	Libreville
80	Gambia The	Banjul
81	Georgia	Tbilisi
82	Germany	Berlin
83	Ghana	Accra
84	Gibraltar	Gibraltar
85	Greece	Athens
86	Greenland	Nuuk
87	Grenada	St. George's
88	Guadeloupe	Basse-Terre
89	Guam	Hagatna
90	Guatemala	Guatemala City
91	Guernsey and Alderney	St Peter Port
92	Guinea	Conakry
93	Guinea-Bissau	Bissau
94	Guyana	Georgetown
95	Haiti	Port-au-Prince
96	Heard Island and McDonald Islands	\N
97	Honduras	Tegucigalpa
98	Hong Kong S.A.R.	Hong Kong
99	Hungary	Budapest
100	Iceland	Reykjavik
101	India	New Delhi
102	Indonesia	Jakarta
103	Iran	Tehran
104	Iraq	Baghdad
105	Ireland	Dublin
106	Israel	Jerusalem
107	Italy	Rome
108	Jamaica	Kingston
109	Japan	Tokyo
110	Jersey	Saint Helier
111	Jordan	Amman
112	Kazakhstan	Astana
113	Kenya	Nairobi
114	Kiribati	Tarawa
248	Kosovo	Pristina
117	Kuwait	Kuwait City
118	Kyrgyzstan	Bishkek
119	Laos	Vientiane
120	Latvia	Riga
121	Lebanon	Beirut
122	Lesotho	Maseru
123	Liberia	Monrovia
124	Libya	Tripolis
125	Liechtenstein	Vaduz
126	Lithuania	Vilnius
127	Luxembourg	Luxembourg
128	Macau S.A.R.	Macao
130	Madagascar	Antananarivo
131	Malawi	Lilongwe
132	Malaysia	Kuala Lumpur
133	Maldives	Male
134	Mali	Bamako
135	Malta	Valletta
136	Man (Isle of)	Douglas, Isle of Man
137	Marshall Islands	Majuro
138	Martinique	Fort-de-France
139	Mauritania	Nouakchott
140	Mauritius	Port Louis
141	Mayotte	Mamoudzou
142	Mexico	Ciudad de México
143	Micronesia	Palikir
144	Moldova	Chisinau
145	Monaco	Monaco
146	Mongolia	Ulan Bator
147	Montenegro	Podgorica
148	Montserrat	Plymouth
149	Morocco	Rabat
150	Mozambique	Maputo
151	Myanmar	Nay Pyi Taw
152	Namibia	Windhoek
153	Nauru	Yaren
154	Nepal	Kathmandu
156	Netherlands	Amsterdam
157	New Caledonia	Noumea
158	New Zealand	Wellington
159	Nicaragua	Managua
160	Niger	Niamey
161	Nigeria	Abuja
162	Niue	Alofi
163	Norfolk Island	Kingston
115	North Korea	Pyongyang
129	North Macedonia	Skopje
164	Northern Mariana Islands	Saipan
165	Norway	Oslo
166	Oman	Muscat
167	Pakistan	Islamabad
168	Palau	Melekeok
169	Palestinian Territory Occupied	East Jerusalem
170	Panama	Panama City
171	Papua new Guinea	Port Moresby
172	Paraguay	Asuncion
173	Peru	Lima
174	Philippines	Manila
175	Pitcairn Island	Adamstown
176	Poland	Warsaw
177	Portugal	Lisbon
178	Puerto Rico	San Juan
179	Qatar	Doha
180	Reunion	Saint-Denis
181	Romania	Bucharest
182	Russia	Moscow
183	Rwanda	Kigali
184	Saint Helena	Jamestown
185	Saint Kitts And Nevis	Basseterre
186	Saint Lucia	Castries
187	Saint Pierre and Miquelon	Saint-Pierre
188	Saint Vincent And The Grenadines	Kingstown
189	Saint-Barthelemy	Gustavia
190	Saint-Martin (French part)	Marigot
191	Samoa	Apia
192	San Marino	San Marino
193	Sao Tome and Principe	Sao Tome
194	Saudi Arabia	Riyadh
195	Senegal	Dakar
196	Serbia	Belgrade
197	Seychelles	Victoria
198	Sierra Leone	Freetown
199	Singapore	Singapur
250	Sint Maarten (Dutch part)	Philipsburg
200	Slovakia	Bratislava
201	Slovenia	Ljubljana
202	Solomon Islands	Honiara
203	Somalia	Mogadishu
204	South Africa	Pretoria
205	South Georgia	Grytviken
116	South Korea	Seoul
206	South Sudan	Juba
207	Spain	Madrid
208	Sri Lanka	Colombo
209	Sudan	Khartoum
210	Suriname	Paramaribo
211	Svalbard And Jan Mayen Islands	Longyearbyen
212	Swaziland	Mbabane
213	Sweden	Stockholm
214	Switzerland	Bern
215	Syria	Damascus
216	Taiwan	Taipei
217	Tajikistan	Dushanbe
218	Tanzania	Dodoma
219	Thailand	Bangkok
17	The Bahamas	Nassau
220	Togo	Lome
221	Tokelau	\N
222	Tonga	Nuku'alofa
223	Trinidad And Tobago	Port of Spain
224	Tunisia	Tunis
225	Turkey	Ankara
226	Turkmenistan	Ashgabat
227	Turks And Caicos Islands	Cockburn Town
228	Tuvalu	Funafuti
229	Uganda	Kampala
230	Ukraine	Kyiv
231	United Arab Emirates	Abu Dhabi
232	United Kingdom	London
233	United States	Washington
234	United States Minor Outlying Islands	\N
235	Uruguay	Montevideo
236	Uzbekistan	Tashkent
237	Vanuatu	Port Vila
238	Vatican City State (Holy See)	Vatican City
239	Venezuela	Caracas
240	Vietnam	Hanoi
241	Virgin Islands (British)	Road Town
242	Virgin Islands (US)	Charlotte Amalie
243	Wallis And Futuna Islands	Mata Utu
244	Western Sahara	El-Aaiun
245	Yemen	Sanaa
246	Zambia	Lusaka
247	Zimbabwe	Harare
\.


--
-- TOC entry 3370 (class 0 OID 16466)
-- Dependencies: 221
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, country_code, country_name) FROM stdin;
1	AF	Afghanistan
2	AX	Aland Islands
3	AL	Albania
4	DZ	Algeria
5	AS	American Samoa
6	AD	Andorra
7	AO	Angola
8	AI	Anguilla
9	AQ	Antarctica
10	AG	Antigua and Barbuda
11	AR	Argentina
12	AM	Armenia
13	AW	Aruba
14	AU	Australia
15	AT	Austria
16	AZ	Azerbaijan
17	ST	Sao Tome and Principe
18	BS	Bahamas
19	BH	Bahrain
20	BD	Bangladesh
21	BB	Barbados
22	BY	Belarus
23	BE	Belgium
24	BZ	Belize
25	BJ	Benin
26	BT	Bhutan
27	BO	Bolivia
28	BA	Bosnia and Herzegovina
29	BW	Botswana
30	BV	Bouvet Island
31	BR	Brazil
32	VG	British Virgin Islands
33	IO	British Indian Ocean Territory
34	BN	Brunei Darussalam
35	BG	Bulgaria
36	BF	Burkina Faso
37	BI	Burundi
38	KH	Cambodia
39	CM	Cameroon
40	CA	Canada
41	CV	Cape Verde
42	KY	Cayman Islands
43	CF	Central African Republic
44	TD	Chad
45	CL	Chile
46	CN	China
47	HK	Hong Kong, SAR China
48	CR	Costa Rica
49	MO	Macao, SAR China
50	CX	Christmas Island
51	CC	Cocos (Keeling) Islands
52	CO	Colombia
53	KM	Comoros
54	CD	Congo, (Kinshasa)
55	CK	Cook Islands
56	CI	Côte d'Ivoire
57	HR	Croatia
58	CU	Cuba
59	CY	Cyprus
60	CZ	Czech Republic
61	DK	Denmark
62	DJ	Djibouti
63	DM	Dominica
64	DO	Dominican Republic
65	EC	Ecuador
66	EG	Egypt
67	SV	El Salvador
68	GQ	Equatorial Guinea
69	ER	Eritrea
70	EE	Estonia
71	ET	Ethiopia
72	FK	Falkland Islands (Malvinas)
73	FO	Faroe Islands
74	FJ	Fiji
75	FI	Finland
76	FR	France
77	GF	French Guiana
78	PF	French Polynesia
79	TF	French Southern Territories
80	GA	Gabon
81	GM	Gambia
82	GE	Georgia
83	DE	Germany
84	GH	Ghana
85	GI	Gibraltar
86	GR	Greece
87	GL	Greenland
88	GD	Grenada
89	GP	Guadeloupe
90	GU	Guam
91	GT	Guatemala
92	GG	Guernsey
93	GN	Guinea
94	GW	Guinea-Bissau
95	GY	Guyana
96	HT	Haiti
97	HM	Heard and Mcdonald Islands
98	VA	Holy See (Vatican City State)
99	HN	Honduras
100	HU	Hungary
101	IS	Iceland
102	FM	Micronesia, Federated States of
103	RE	Réunion
104	ID	Indonesia
105	IR	Iran, Islamic Republic of
106	IQ	Iraq
107	IE	Ireland
108	IM	Isle of Man
109	IL	Israel
110	IT	Italy
111	JM	Jamaica
112	JP	Japan
113	JE	Jersey
114	JO	Jordan
115	MD	Moldova
116	KZ	Kazakhstan
117	KE	Kenya
118	KI	Kiribati
119	KP	Korea (North)
120	KR	Korea (South)
121	KW	Kuwait
122	KG	Kyrgyzstan
123	LA	Lao PDR
124	LV	Latvia
125	LB	Lebanon
126	LS	Lesotho
127	LR	Liberia
128	LY	Libya
129	LI	Liechtenstein
130	LT	Lithuania
131	LU	Luxembourg
132	MK	Macedonia, Republic of
133	MG	Madagascar
134	MW	Malawi
135	MY	Malaysia
136	MV	Maldives
137	BM	Bermuda
138	ML	Mali
139	MT	Malta
140	MH	Marshall Islands
141	MQ	Martinique
142	MR	Mauritania
143	MU	Mauritius
144	YT	Mayotte
145	MX	Mexico
146	MC	Monaco
147	MN	Mongolia
148	ME	Montenegro
149	MS	Montserrat
150	MA	Morocco
151	MZ	Mozambique
152	MM	Myanmar
153	NA	Namibia
154	NR	Nauru
155	NP	Nepal
156	NL	Netherlands
157	AN	Netherlands Antilles
158	NC	New Caledonia
159	NZ	New Zealand
160	NI	Nicaragua
161	NE	Niger
162	NG	Nigeria
163	NU	Niue
164	NF	Norfolk Island
165	MP	Northern Mariana Islands
166	NO	Norway
167	OM	Oman
168	PK	Pakistan
169	PW	Palau
170	PS	Palestinian Territory
171	PA	Panama
172	PG	Papua New Guinea
173	PY	Paraguay
174	PE	Peru
175	PH	Philippines
176	PN	Pitcairn
177	PT	Portugal
178	PR	Puerto Rico
179	QA	Qatar
180	RO	Romania
181	RU	Russian Federation
182	RW	Rwanda
183	BL	Saint-Barthélemy
184	SH	Saint Helena
185	KN	Saint Kitts and Nevis
186	LC	Saint Lucia
187	MF	Saint-Martin (French part)
188	PM	Saint Pierre and Miquelon
189	VC	Saint Vincent and Grenadines
190	WS	Samoa
191	SM	San Marino
192	SA	Saudi Arabia
193	SN	Senegal
194	RS	Serbia
195	SC	Seychelles
196	SL	Sierra Leone
197	SG	Singapore
198	SK	Slovakia
199	SI	Slovenia
200	SB	Solomon Islands
201	SO	Somalia
202	ZA	South Africa
203	GS	South Georgia and the South Sandwich Islands
204	SS	South Sudan
205	ES	Spain
206	LK	Sri Lanka
207	SD	Sudan
208	SR	Suriname
209	SJ	Svalbard and Jan Mayen Islands
210	SZ	Swaziland
211	SE	Sweden
212	CH	Switzerland
213	SY	Syrian Arab Republic (Syria)
214	TW	Taiwan, Republic of China
215	TJ	Tajikistan
216	TZ	Tanzania, United Republic of
217	TH	Thailand
218	IN	India
219	CG	Congo (Brazzaville)
220	PL	Poland
221	TL	Timor-Leste
222	TG	Togo
223	TK	Tokelau
224	TO	Tonga
225	TT	Trinidad and Tobago
226	TN	Tunisia
227	TR	Turkey
228	TM	Turkmenistan
229	TC	Turks and Caicos Islands
230	TV	Tuvalu
231	UG	Uganda
232	UA	Ukraine
233	AE	United Arab Emirates
234	GB	United Kingdom
235	US	United States of America
236	UM	US Minor Outlying Islands
237	UY	Uruguay
238	UZ	Uzbekistan
239	VU	Vanuatu
240	VE	Venezuela (Bolivarian Republic)
241	VN	Viet Nam
242	VI	Virgin Islands, US
243	WF	Wallis and Futuna Islands
244	EH	Western Sahara
245	YE	Yemen
246	ZM	Zambia
247	ZW	Zimbabwe
\.


--
-- TOC entry 3366 (class 0 OID 16433)
-- Dependencies: 217
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flags (id, name, flag) FROM stdin;
1	Afghanistan	🇦🇫
2	Aland Islands	🇦🇽
3	Albania	🇦🇱
4	Algeria	🇩🇿
5	American Samoa	🇦🇸
6	Andorra	🇦🇩
7	Angola	🇦🇴
8	Anguilla	🇦🇮
9	Antarctica	🇦🇶
10	Antigua And Barbuda	🇦🇬
11	Argentina	🇦🇷
12	Armenia	🇦🇲
13	Aruba	🇦🇼
14	Australia	🇦🇺
15	Austria	🇦🇹
16	Azerbaijan	🇦🇿
18	Bahrain	🇧🇭
19	Bangladesh	🇧🇩
20	Barbados	🇧🇧
21	Belarus	🇧🇾
22	Belgium	🇧🇪
23	Belize	🇧🇿
24	Benin	🇧🇯
25	Bermuda	🇧🇲
26	Bhutan	🇧🇹
27	Bolivia	🇧🇴
155	Bonaire, Sint Eustatius and Saba	🇧🇶
28	Bosnia and Herzegovina	🇧🇦
29	Botswana	🇧🇼
30	Bouvet Island	🇧🇻
31	Brazil	🇧🇷
32	British Indian Ocean Territory	🇮🇴
33	Brunei	🇧🇳
34	Bulgaria	🇧🇬
35	Burkina Faso	🇧🇫
36	Burundi	🇧🇮
37	Cambodia	🇰🇭
38	Cameroon	🇨🇲
39	Canada	🇨🇦
40	Cape Verde	🇨🇻
41	Cayman Islands	🇰🇾
42	Central African Republic	🇨🇫
43	Chad	🇹🇩
44	Chile	🇨🇱
45	China	🇨🇳
46	Christmas Island	🇨🇽
47	Cocos (Keeling) Islands	🇨🇨
48	Colombia	🇨🇴
49	Comoros	🇰🇲
50	Congo	🇨🇬
52	Cook Islands	🇨🇰
53	Costa Rica	🇨🇷
54	Cote D'Ivoire (Ivory Coast)	🇨🇮
55	Croatia	🇭🇷
56	Cuba	🇨🇺
249	Curaçao	🇨🇼
57	Cyprus	🇨🇾
58	Czech Republic	🇨🇿
51	Democratic Republic of the Congo	🇨🇩
59	Denmark	🇩🇰
60	Djibouti	🇩🇯
61	Dominica	🇩🇲
62	Dominican Republic	🇩🇴
63	East Timor	🇹🇱
64	Ecuador	🇪🇨
65	Egypt	🇪🇬
66	El Salvador	🇸🇻
67	Equatorial Guinea	🇬🇶
68	Eritrea	🇪🇷
69	Estonia	🇪🇪
70	Ethiopia	🇪🇹
71	Falkland Islands	🇫🇰
72	Faroe Islands	🇫🇴
73	Fiji Islands	🇫🇯
74	Finland	🇫🇮
75	France	🇫🇷
76	French Guiana	🇬🇫
77	French Polynesia	🇵🇫
78	French Southern Territories	🇹🇫
79	Gabon	🇬🇦
80	Gambia The	🇬🇲
81	Georgia	🇬🇪
82	Germany	🇩🇪
83	Ghana	🇬🇭
84	Gibraltar	🇬🇮
85	Greece	🇬🇷
86	Greenland	🇬🇱
87	Grenada	🇬🇩
88	Guadeloupe	🇬🇵
89	Guam	🇬🇺
90	Guatemala	🇬🇹
91	Guernsey and Alderney	🇬🇬
92	Guinea	🇬🇳
93	Guinea-Bissau	🇬🇼
94	Guyana	🇬🇾
95	Haiti	🇭🇹
96	Heard Island and McDonald Islands	🇭🇲
97	Honduras	🇭🇳
98	Hong Kong S.A.R.	🇭🇰
99	Hungary	🇭🇺
100	Iceland	🇮🇸
101	India	🇮🇳
102	Indonesia	🇮🇩
103	Iran	🇮🇷
104	Iraq	🇮🇶
105	Ireland	🇮🇪
106	Israel	🇮🇱
107	Italy	🇮🇹
108	Jamaica	🇯🇲
109	Japan	🇯🇵
110	Jersey	🇯🇪
111	Jordan	🇯🇴
112	Kazakhstan	🇰🇿
113	Kenya	🇰🇪
114	Kiribati	🇰🇮
248	Kosovo	🇽🇰
117	Kuwait	🇰🇼
118	Kyrgyzstan	🇰🇬
119	Laos	🇱🇦
120	Latvia	🇱🇻
121	Lebanon	🇱🇧
122	Lesotho	🇱🇸
123	Liberia	🇱🇷
124	Libya	🇱🇾
125	Liechtenstein	🇱🇮
126	Lithuania	🇱🇹
127	Luxembourg	🇱🇺
128	Macau S.A.R.	🇲🇴
130	Madagascar	🇲🇬
131	Malawi	🇲🇼
132	Malaysia	🇲🇾
133	Maldives	🇲🇻
134	Mali	🇲🇱
135	Malta	🇲🇹
136	Man (Isle of)	🇮🇲
137	Marshall Islands	🇲🇭
138	Martinique	🇲🇶
139	Mauritania	🇲🇷
140	Mauritius	🇲🇺
141	Mayotte	🇾🇹
142	Mexico	🇲🇽
143	Micronesia	🇫🇲
144	Moldova	🇲🇩
145	Monaco	🇲🇨
146	Mongolia	🇲🇳
147	Montenegro	🇲🇪
148	Montserrat	🇲🇸
149	Morocco	🇲🇦
150	Mozambique	🇲🇿
151	Myanmar	🇲🇲
152	Namibia	🇳🇦
153	Nauru	🇳🇷
154	Nepal	🇳🇵
156	Netherlands	🇳🇱
157	New Caledonia	🇳🇨
158	New Zealand	🇳🇿
159	Nicaragua	🇳🇮
160	Niger	🇳🇪
161	Nigeria	🇳🇬
162	Niue	🇳🇺
163	Norfolk Island	🇳🇫
115	North Korea	🇰🇵
129	North Macedonia	🇲🇰
164	Northern Mariana Islands	🇲🇵
165	Norway	🇳🇴
166	Oman	🇴🇲
167	Pakistan	🇵🇰
168	Palau	🇵🇼
169	Palestinian Territory Occupied	🇵🇸
170	Panama	🇵🇦
171	Papua new Guinea	🇵🇬
172	Paraguay	🇵🇾
173	Peru	🇵🇪
174	Philippines	🇵🇭
175	Pitcairn Island	🇵🇳
176	Poland	🇵🇱
177	Portugal	🇵🇹
178	Puerto Rico	🇵🇷
179	Qatar	🇶🇦
180	Reunion	🇷🇪
181	Romania	🇷🇴
182	Russia	🇷🇺
183	Rwanda	🇷🇼
184	Saint Helena	🇸🇭
185	Saint Kitts And Nevis	🇰🇳
186	Saint Lucia	🇱🇨
187	Saint Pierre and Miquelon	🇵🇲
188	Saint Vincent And The Grenadines	🇻🇨
189	Saint-Barthelemy	🇧🇱
190	Saint-Martin (French part)	🇲🇫
191	Samoa	🇼🇸
192	San Marino	🇸🇲
193	Sao Tome and Principe	🇸🇹
194	Saudi Arabia	🇸🇦
195	Senegal	🇸🇳
196	Serbia	🇷🇸
197	Seychelles	🇸🇨
198	Sierra Leone	🇸🇱
199	Singapore	🇸🇬
250	Sint Maarten (Dutch part)	🇸🇽
200	Slovakia	🇸🇰
201	Slovenia	🇸🇮
202	Solomon Islands	🇸🇧
203	Somalia	🇸🇴
204	South Africa	🇿🇦
205	South Georgia	🇬🇸
116	South Korea	🇰🇷
206	South Sudan	🇸🇸
207	Spain	🇪🇸
208	Sri Lanka	🇱🇰
209	Sudan	🇸🇩
210	Suriname	🇸🇷
211	Svalbard And Jan Mayen Islands	🇸🇯
212	Swaziland	🇸🇿
213	Sweden	🇸🇪
214	Switzerland	🇨🇭
215	Syria	🇸🇾
216	Taiwan	🇹🇼
217	Tajikistan	🇹🇯
218	Tanzania	🇹🇿
219	Thailand	🇹🇭
17	The Bahamas	🇧🇸
220	Togo	🇹🇬
221	Tokelau	🇹🇰
222	Tonga	🇹🇴
223	Trinidad And Tobago	🇹🇹
224	Tunisia	🇹🇳
225	Turkey	🇹🇷
226	Turkmenistan	🇹🇲
227	Turks And Caicos Islands	🇹🇨
228	Tuvalu	🇹🇻
229	Uganda	🇺🇬
230	Ukraine	🇺🇦
231	United Arab Emirates	🇦🇪
232	United Kingdom	🇬🇧
233	United States	🇺🇸
234	United States Minor Outlying Islands	🇺🇲
235	Uruguay	🇺🇾
236	Uzbekistan	🇺🇿
237	Vanuatu	🇻🇺
238	Vatican City State (Holy See)	🇻🇦
239	Venezuela	🇻🇪
240	Vietnam	🇻🇳
241	Virgin Islands (British)	🇻🇬
242	Virgin Islands (US)	🇻🇮
243	Wallis And Futuna Islands	🇼🇫
244	Western Sahara	🇪🇭
245	Yemen	🇾🇪
246	Zambia	🇿🇲
247	Zimbabwe	🇿🇼
\.


--
-- TOC entry 3372 (class 0 OID 24712)
-- Dependencies: 223
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, color) FROM stdin;
3	Abdullah	yellow
4	Muhammad	green
5	Umar	red
6	Amatuallah	purple
1	Temitayo	purple
2	Olawumi	pink
7	Bat	olive
8	Firdaus	purple
\.


--
-- TOC entry 3374 (class 0 OID 24721)
-- Dependencies: 225
-- Data for Name: visited_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visited_countries (id, country_code, user_id) FROM stdin;
1	NG	1
3	AE	2
6	NG	3
8	NG	4
10	NG	5
12	NG	6
14	AF	1
16	AF	2
20	AO	7
21	MG	7
22	AQ	7
23	AU	7
26	AO	8
29	AU	8
\.


--
-- TOC entry 3368 (class 0 OID 16443)
-- Dependencies: 219
-- Data for Name: world_food; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.world_food (id, country, rice_production, wheat_production) FROM stdin;
1	Australia	0.42	31.9
2	Brazil	13.98	7.9
3	China	212.84	136.9
4	Ethiopia	0.2	5.2
5	India	195.43	109.6
6	Iran	1.6	10.1
7	Pakistan	13.98	27.5
8	Ukraine	0.05	32.2
9	United States	8.7	44.8
11	Italy	1.46	7.3
\.


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 214
-- Name: capitals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.capitals_id_seq', 1, false);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 220
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 216
-- Name: flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flags_id_seq', 1, false);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 222
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 224
-- Name: visited_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visited_countries_id_seq', 31, true);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 218
-- Name: world_food_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.world_food_id_seq', 11, true);


--
-- TOC entry 3205 (class 2606 OID 16405)
-- Name: capitals capitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capitals
    ADD CONSTRAINT capitals_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 16471)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 16440)
-- Name: flags flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 24719)
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- TOC entry 3215 (class 2606 OID 24717)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 24726)
-- Name: visited_countries visited_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 24733)
-- Name: visited_countries visited_countries_user_id_country_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_user_id_country_code_key UNIQUE (user_id, country_code);


--
-- TOC entry 3209 (class 2606 OID 16448)
-- Name: world_food world_food_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.world_food
    ADD CONSTRAINT world_food_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 24727)
-- Name: visited_countries visited_countries_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2024-10-12 15:02:06

--
-- PostgreSQL database dump complete
--

