--tabela CUVINTE;
drop table cuvinte;
create table cuvinte (
  id int unsigned not null auto_increment primary key,
  cod varchar(50) not null unique,
  cuvant varchar(30) not null,
  definitie varchar(200) not null,
  tip_ontologic varchar(30) not null,
  tip_evenimential varchar(30) not null,
  tip_pos varchar(30) not null,
  sens varchar(100),
  tip_q_formal varchar(30) not null,
  tip_predicat varchar(50)
)

--tabela EVENIMENTIAL;
drop table evenimential;
create table evenimential (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--tabela POS_LIST'
drop table pos_list;
create table pos_list (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--tabela QUALIA_FORMAL;
drop table qualia_formal;
create table qualia_formal (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--tabela QUALIA_CONSTITUTIVE;
drop table qualia_constitutive;
create table qualia_constitutive (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--table QUALIA_AGENTIVE;
drop table qualia_agentive;
create table qualia_agentive (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--table QUALIA_TELIC;
drop table qualia_telic;
create table qualia_telic (
  tip varchar(30) not null primary key,
  descriere varchar(50)
)

--table MATRIX_WORD_Q_CONSTITUTIVE;
drop table matrix_word_q_constitutive;
create table matrix_word_q_constitutive (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_constitutive varchar(30)
)

--table MATRIX_WORD_Q_AGENTIVE;
drop table matrix_word_q_agentive;
create table matrix_word_q_agentive (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_agentive varchar(30)
)

--table MATRIX_WORD_Q_TELIC;
drop table matrix_word_q_telic;
create table matrix_word_q_telic (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_telic varchar(30)
)

--table ONTOLOGIE_TERMENI;
drop table ontologie_termeni;
create table ontologie_termeni (
  tip varchar(30) not null primary key,
  descriere varchar(50),
  exemple varchar(50)
)

--table ONTOLOGIE_L1;
drop table ontologie_l1;
create table ontologie_l1 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint not null
)

--table ONTOLOGIE_L2;
drop table ontologie_l2;
create table ontologie_l2 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint not null
)

--table ONTOLOGIE_L3;
drop table ontologie_l3;
create table ontologie_l3 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint not null
)

--table ONTOLOGIE_L4;
drop table ontologie_l4;
create table ontologie_l4 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint not null
)

--table ONTOLOGIE_L5;
drop table ontologie_l5;
create table ontologie_l5 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint not null
)

--table PREDICATE;
drop table predicate;
create table predicate (
  id varchar(50) not null unique,
  nume varchar(30) not null,
  nr_arg smallint not null,
  rol_tematic_1 smallint,
  ont_1 varchar(50),
  rol_tematic_2 smallint,
  ont_2 varchar(50),
  rol_tematic_3 smallint,
  ont_3 varchar(50)
)

--table ROL_TEMATIC;
drop table rol_tematic;
create table rol_tematic (
  id smallint not null auto_increment primary key ,
  nume varchar(30) not null
)


--completare ONTOLOGIE_TERMENI;
insert into ontologie_termeni (tip, exemple) values ('TELIC','scopo, fine, meta');
insert into ontologie_termeni (tip, exemple) values ('AGENTIVE','causa, origine, ragione, motivo,  principio');
insert into ontologie_termeni (tip, exemple) values ('CAUSE','causare, comportare, produrre');
insert into ontologie_termeni (tip, exemple) values ('CONSTITUTIVE','parte, elemento/insieme, gruppo/ modo, modalità');
insert into ontologie_termeni (tip, exemple) values ('PART','pezzo, porzione, nucleo');
insert into ontologie_termeni (tip, exemple) values ('BODY_PART','braccio, fegato');
insert into ontologie_termeni (tip, exemple) values ('GROUP','complesso, costellazione, insieme');
insert into ontologie_termeni (tip, exemple) values ('HUMAN_GROUP','comitiva, assemblea');
insert into ontologie_termeni (tip, exemple) values ('AMOUNT','quantità, pizzico, bottiglia, paniere, forchettata');
insert into ontologie_termeni (tip, exemple) values ('ENTITY','ente, entità');
insert into ontologie_termeni (tip, exemple) values ('CONCRETE_ENTITY','');
insert into ontologie_termeni (tip, exemple) values ('LOCATION','luogo, località/spazio');
insert into ontologie_termeni (tip, exemple) values ('3_D_Location','promontorio, precipizio/mare');
insert into ontologie_termeni (tip, exemple) values ('Geopolitical_Location','stato, regione');
insert into ontologie_termeni (tip, exemple) values ('Area','campo, pianura, collina');
insert into ontologie_termeni (tip, exemple) values ('Opening','caverna/voragine, finestra');
insert into ontologie_termeni (tip, exemple) values ('Building','palazzo ');
insert into ontologie_termeni (tip, exemple) values ('Artifactual_Area','piazza /autostrada');
insert into ontologie_termeni (tip, exemple) values ('MATERIAL','rivestimento, doratura /imbottitura');
insert into ontologie_termeni (tip, exemple) values ('ARTIFACT','manufatto');
insert into ontologie_termeni (tip, exemple) values ('Artifactual_Material','tessuto, carta/pelle/vetro');
insert into ontologie_termeni (tip, exemple) values ('Furniture','tavolo, sedia, armadio');
insert into ontologie_termeni (tip, exemple) values ('Clothing','cappello, gonna, stivale');
insert into ontologie_termeni (tip, exemple) values ('Container','scatola, paniere /bottiglia');
insert into ontologie_termeni (tip, exemple) values ('Artwork','scultura, dipinto');
insert into ontologie_termeni (tip, exemple) values ('Instrument','zappa, martello, bisturi');
insert into ontologie_termeni (tip, exemple) values ('Money','dollaro, lira, euro');
insert into ontologie_termeni (tip, exemple) values ('Vehicle','macchina, aereo');
insert into ontologie_termeni (tip, exemple) values ('Semiotic_Artifact','libro, volume, tomo/dizionario/enciclopedia/(plus_semiotic)/manifesto (plus_iconic)');
insert into ontologie_termeni (tip, exemple) values ('FOOD','alimento, cibo/carne');
insert into ontologie_termeni (tip, exemple) values ('Artifact_Food','torta, soufflé');
insert into ontologie_termeni (tip, exemple) values ('Flavouring','rosmarino, origano/aroma, sale, pepe');
insert into ontologie_termeni (tip, exemple) values ('PHYSICAL_ENTITY','pianeta /roccia');
insert into ontologie_termeni (tip, exemple) values ('ORGANIC_ENTITY','piastrina, placenta, ovulo/piastrina ');
insert into ontologie_termeni (tip, exemple) values ('LIVING_ENTITY','creatura, embrione, organismo/essere');
insert into ontologie_termeni (tip, exemple) values ('Animal','felino, insetto, mammifero');
insert into ontologie_termeni (tip, exemple) values ('earth_animal','cane, leone');
insert into ontologie_termeni (tip, exemple) values ('air_animal','passerotto, aquila');
insert into ontologie_termeni (tip, exemple) values ('water_animal','orata, pesce');
insert into ontologie_termeni (tip, exemple) values ('Human','donna, giovane, parente');
insert into ontologie_termeni (tip, exemple) values ('people','abitante, italiano, parigino');
insert into ontologie_termeni (tip, exemple) values ('role','abitante, italiano,');
insert into ontologie_termeni (tip, exemple) values ('ideo','protestante, femminista, progressista,');
insert into ontologie_termeni (tip, exemple) values ('kinship','conoscente, contemporaneo, mamma');
insert into ontologie_termeni (tip, exemple) values ('social_status','nobile, borghese, prelato');
insert into ontologie_termeni (tip, exemple) values ('agent_of_temporary_activity','studente, pedone,');
insert into ontologie_termeni (tip, exemple) values ('agent_of_persistent_activity','artista, intenditore, musicista');
insert into ontologie_termeni (tip, exemple) values ('patient_of_event','carcerato, ammalato, defunto');
insert into ontologie_termeni (tip, exemple) values ('profession','medico, insegnante, commesso');
insert into ontologie_termeni (tip, exemple) values ('Vegetal_Entity','fiore, pianta, ortaggio');
insert into ontologie_termeni (tip, exemple) values ('plant','albero, quercia, rosa');
insert into ontologie_termeni (tip, exemple) values ('flower','garofano, malva, rosa');
insert into ontologie_termeni (tip, exemple) values ('fruit','mela, arancia, banana');
insert into ontologie_termeni (tip, exemple) values ('vegetable','zucchina, carota, melanzana');
insert into ontologie_termeni (tip, exemple) values ('Micro-Organism','cellula, microrganismo');
insert into ontologie_termeni (tip, exemple) values ('SUBSTANCE','lucido, colore additivo');
insert into ontologie_termeni (tip, exemple) values ('Natural_Substance','ossigeno, gas acqua');
insert into ontologie_termeni (tip, exemple) values ('Substance_Food','pesce /maiale, agnello');
insert into ontologie_termeni (tip, exemple) values ('Drink','latte /bevanda');
insert into ontologie_termeni (tip, exemple) values ('artifactual_drink','spremuta, birra/vino, cognac ');
insert into ontologie_termeni (tip, exemple) values ('PROPERTY','caratteristica, proprietà');
insert into ontologie_termeni (tip, exemple) values ('QUALITY','duplicità /capacità, facoltà, abilità ');
insert into ontologie_termeni (tip, exemple) values ('PSYCH_PROPERTY','intelligenza, ');
insert into ontologie_termeni (tip, exemple) values ('PHYSICAL_PROPERTY','acquosità, bianchezza, consistenza, crudezza');
insert into ontologie_termeni (tip, exemple) values ('Physical_Power','odorato, olfatto, tatto');
insert into ontologie_termeni (tip, exemple) values ('Color','rosso, bianco');
insert into ontologie_termeni (tip, exemple) values ('Shape','cerchio, triangolo');
insert into ontologie_termeni (tip, exemple) values ('SOCIAL_PROPERTY','accortezza, furberia');
insert into ontologie_termeni (tip, exemple) values ('ABSTRACT_ENTITY','teoria, ideologia/fortuna');
insert into ontologie_termeni (tip, exemple) values ('DOMAIN','medicina, fisica/musica');
insert into ontologie_termeni (tip, exemple) values ('TIME','mese, secolo, decennio giorno /tempo');
insert into ontologie_termeni (tip, exemple) values ('MORAL_STANDARDS','giustizia moralità , onore/onestà/patriottismo/uguaglianza');
insert into ontologie_termeni (tip, exemple) values ('COGNITIVE_FACT','idea, concetto,  nozione');
insert into ontologie_termeni (tip, exemple) values ('MOVEMENT_OF_THOUGHT','marxismo, cristianesimo');
insert into ontologie_termeni (tip, exemple) values ('INSTITUTION','scuola, banca');
insert into ontologie_termeni (tip, exemple) values ('CONVENTION','titolo/tassa, tributo');
insert into ontologie_termeni (tip, exemple) values ('ABSTRACT_LOCATION','meridione, occidente /zenit');
insert into ontologie_termeni (tip, exemple) values ('REPRESENTATION','emblema /befana, folletto (plus_fictive)');
insert into ontologie_termeni (tip, exemple) values ('LANGUAGE','italiano, arabo');
insert into ontologie_termeni (tip, exemple) values ('SIGN','dieresi');
insert into ontologie_termeni (tip, exemple) values ('INFORMATION','documento /poster ');
insert into ontologie_termeni (tip, exemple) values ('NUMBER','quattro');
insert into ontologie_termeni (tip, exemple) values ('UNIT_OF_MEASUREMENT','metro, litro');
insert into ontologie_termeni (tip, exemple) values ('METALANGUAGE','nome, verbo, imperativo vocabolo/anaphora, metafora ');
insert into ontologie_termeni (tip, exemple) values ('EVENT','accadere, avvenire, succedere/festa/evento');
insert into ontologie_termeni (tip, exemple) values ('PHENOMENON','terremoto, temporale /luce, vento, sintomo/febbre');
insert into ontologie_termeni (tip, exemple) values ('Weather_Verbs','piovere');
insert into ontologie_termeni (tip, exemple) values ('Disease','morbillo, polmonite, cefalea');
insert into ontologie_termeni (tip, exemple) values ('Stimuli ','odore, sapore/rumore, scoppio');
insert into ontologie_termeni (tip, exemple) values ('ASPECTUAL','concludersi, terminare');
insert into ontologie_termeni (tip, exemple) values ('Cause_Aspectual','finire, concludere, terminare');
insert into ontologie_termeni (tip, exemple) values ('STATE (Event Type=State)','mancare/condizione, stato');
insert into ontologie_termeni (tip, exemple) values ('Exist','esistere, essere');
insert into ontologie_termeni (tip, exemple) values ('Relational_State','armonizzarsi, accordarsi, combinarsi/armonia, concordia');
insert into ontologie_termeni (tip, exemple) values ('identificational_state','identificarsi ');
insert into ontologie_termeni (tip, exemple) values ('constitutive_state','comporsi');
insert into ontologie_termeni (tip, exemple) values ('stative_location','essere, trovarsi');
insert into ontologie_termeni (tip, exemple) values ('stative_possession','possedere, avere');
insert into ontologie_termeni (tip, exemple) values ('ACT','agire, operare');
insert into ontologie_termeni (tip, exemple) values ('Non_Relational_Act','grugnire, tossire, suonare, starnutire');
insert into ontologie_termeni (tip, exemple) values ('Relational_Act','amministrare, dirigere, curare');
insert into ontologie_termeni (tip, exemple) values ('cooperative_activity','collaborare, cooperare/lottare, combattere, battersi');
insert into ontologie_termeni (tip, exemple) values ('purpose_act','lavorare, trattare, curare');
insert into ontologie_termeni (tip, exemple) values ('Move','muoversi, viaggiare, nuotare, salire camminare, passeggiare, volare');
insert into ontologie_termeni (tip, exemple) values ('cause_motion','dondolare, tirare, spingere');
insert into ontologie_termeni (tip, exemple) values ('Cause_Act','esplodere, suonare, costringere /dirottare');
insert into ontologie_termeni (tip, exemple) values ('Speech_Act ','parlare,esprimersi');
insert into ontologie_termeni (tip, exemple) values ('cooperative_speech_act ','chiacchierare, conversare');
insert into ontologie_termeni (tip, exemple) values ('reporting_events','affermare, annunciare');
insert into ontologie_termeni (tip, exemple) values ('commissives','assicurare/giurare');
insert into ontologie_termeni (tip, exemple) values ('directives','avvertire /chiedere, richiedere');
insert into ontologie_termeni (tip, exemple) values ('expressives','insultare, offendere, sgridare, rimproverare');
insert into ontologie_termeni (tip, exemple) values ('declaratives','dichiarare');
insert into ontologie_termeni (tip, exemple) values ('PSYCHOLOGICAL_EVENT','concepire, capire, comprendere/ragionare, pensare');
insert into ontologie_termeni (tip, exemple) values ('Cognitive_Event','individuare, scoprire, determinare/ conoscere, discernere, distinguere, decidere,riconoscere, scelta/concezione, pensiero');
insert into ontologie_termeni (tip, exemple) values ('judgment','giudicare, ritenere, stimare, considerare');
insert into ontologie_termeni (tip, exemple) values ('Experience_Event','spaventarsi, impaurirsi, amare, emozione, temere');
insert into ontologie_termeni (tip, exemple) values ('cause_experience_event','impaurire, spaventare, intimorire, meravigliare, ferire');
insert into ontologie_termeni (tip, exemple) values ('Perception','sentire, odorare /guardare');
insert into ontologie_termeni (tip, exemple) values ('Modal_Event','volere, desiderare');
insert into ontologie_termeni (tip, exemple) values ('CHANGE','cambiare, variare, mutare /evolversi/migliorare');
insert into ontologie_termeni (tip, exemple) values ('Relational_Change','unirsi, fondersi');
insert into ontologie_termeni (tip, exemple) values ('constitutive_change','rompersi, sgretolarsi, amalgamarsi');
insert into ontologie_termeni (tip, exemple) values ('change_of_state','liquefarsi, rinforzarsi');
insert into ontologie_termeni (tip, exemple) values ('change_of_value','aumentare, diminuire');
insert into ontologie_termeni (tip, exemple) values ('Change_Possession','dare, scambiare');
insert into ontologie_termeni (tip, exemple) values ('transaction','comprare/vendere');
insert into ontologie_termeni (tip, exemple) values ('Change_Of_Location','muoversi, spostarsi');
insert into ontologie_termeni (tip, exemple) values ('Natural_Transition','nascere/morire');
insert into ontologie_termeni (tip, exemple) values ('Acquire_Knoweldge','studiare, imparare, apprendere');
insert into ontologie_termeni (tip, exemple) values ('CAUSE_CHANGE','cambiare, modificare, migliorare');
insert into ontologie_termeni (tip, exemple) values ('Cause_Relational_Change','unire fondere');
insert into ontologie_termeni (tip, exemple) values ('cause_constitutive_change','sgretolare frantumare');
insert into ontologie_termeni (tip, exemple) values ('cause_change_of_state','cuocere/contrarre ridurre congelare, liquefare, rinforzare');
insert into ontologie_termeni (tip, exemple) values ('cause_change_of_value','aumentare /diminuire');
insert into ontologie_termeni (tip, exemple) values ('Cause_ Change_Location','spostare');
insert into ontologie_termeni (tip, exemple) values ('Cause_ Natural_Transition','procreare, generare uccidere ');
insert into ontologie_termeni (tip, exemple) values ('Creation','creare');
insert into ontologie_termeni (tip, exemple) values ('physical_creation','confezionare /costruire');
insert into ontologie_termeni (tip, exemple) values ('mental_creation','ideare, concepire, elaborare');
insert into ontologie_termeni (tip, exemple) values ('symbolic_creation','comporre/scrivere');
insert into ontologie_termeni (tip, exemple) values ('copy_creation','copiere,riprodurre');
insert into ontologie_termeni (tip, exemple) values ('Give_Knoweldge','insegnare, formare');

update ontologie_termeni
  set tip = lower(tip);

--completare ONTOLOGIE_L1;
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CAUSE','Agentive',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PART','Constitutive',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('BODY_PART','Part',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('GROUP','Constitutive',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('HUMAN_GROUP','Group',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('AMOUNT','Constitutive',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CONCRETE_ENTITY','Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('LOCATION','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('3_D_Location','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Geopolitical_Location','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Area','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Opening','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Building','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Area','Location',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('MATERIAL','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ARTIFACT','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Material','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Furniture','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Clothing','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Container','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artwork','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Instrument','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Money','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Vehicle','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Semiotic_Artifact','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('FOOD','Concrete_Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifact_Food','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Flavouring','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PHYSICAL_ENTITY','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ORGANIC_ENTITY','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('LIVING_ENTITY','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Animal','Living_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('earth_animal','Animal',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('air_animal','Animal',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('water_animal','Animal',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Human','Living_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('people','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('role','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ideo','Role',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('kinship','Role',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('social_status','Role',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('agent_of_temporary_activity','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('agent_of_persistent_activity','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('patient_of_event','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('profession','Human',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Vegetal_Entity','Living_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('plant','Vegetal_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('flower','Vegetal_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('fruit','Vegetal_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('vegetable','Vegetal_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Micro-Organism','Living_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('SUBSTANCE','Concrete_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Natural_Substance','Substance',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Substance_Food','Substance',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Drink','Substance',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('artifactual_drink','Substance',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PROPERTY','Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('QUALITY','Property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PSYCH_PROPERTY','Property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PHYSICAL_PROPERTY','Property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Physical_Power','Physical_property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Color','Physical_property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Shape','Physical_property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('SOCIAL_PROPERTY','Property',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ABSTRACT_ENTITY','Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('DOMAIN','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('TIME','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('MORAL_STANDARDS','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('COGNITIVE_FACT','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('MOVEMENT_OF_THOUGHT','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('INSTITUTION','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CONVENTION','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ABSTRACT_LOCATION','Abstract_entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('REPRESENTATION','Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('LANGUAGE','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('SIGN','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('INFORMATION','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('NUMBER','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('UNIT_OF_MEASUREMENT','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('METALANGUAGE','Representation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('EVENT','Entity',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PHENOMENON','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Weather_Verbs','Phenomenon',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Disease','Phenomenon',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Stimuli ','Phenomenon',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ASPECTUAL','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_Aspectual','Aspectual',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('STATE (Event Type=State)','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Exist','State',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Relational_State','State',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('identificational_state','Relational_state',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('constitutive_state','Relational_state',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('stative_location','Relational_state',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('stative_possession','Relational_state',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ACT','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Non_Relational_Act','Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Relational_Act','Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cooperative_activity','Relational_act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('purpose_act','Relational_act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Move','Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_motion','Move',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_Act','Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Speech_Act ','Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cooperative_speech_act ','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('reporting_events','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('commissives','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('directives','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('expressives','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('declaratives','Speech_Act',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('PSYCHOLOGICAL_EVENT','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cognitive_Event','Psychological_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('judgment','Cognitive_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Experience_Event','Psychological_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_experience_event','Experience_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Perception','Psychological_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Modal_Event','Psychological_event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CHANGE','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Relational_Change','Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('constitutive_change','Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('change_of_state','Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('change_of_value','Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Change_Possession','Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('transaction','Change_possession',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Change_Of_Location','Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Natural_Transition','Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Acquire_Knoweldge','Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CAUSE_CHANGE','Event',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_Relational_Change','Cause_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_constitutive_change','Cause_Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_change_of_state','Cause_Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_change_of_value','Cause_Relational_change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_ Change_Location','Cause_Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_ Natural_Transition','Cause_Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Creation','Cause_Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('physical_creation','Creation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('mental_creation','Creation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('symbolic_creation','Creation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('copy_creation','Creation',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Give_Knoweldge','Cause_Change',1);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Opening','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Building','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Area','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ARTIFACT','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Material','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Furniture','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Clothing','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Container','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artwork','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Instrument','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Money','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Vehicle','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Semiotic_Artifact','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifact_Food','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('agent_of_temporary_activity','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('patient_of_event','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('artifactual_drink','Artifact',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('SOCIAL_PROPERTY','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('COGNITIVE_FACT','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('MOVEMENT_OF_THOUGHT','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('INSTITUTION','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CONVENTION','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ABSTRACT_LOCATION','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('REPRESENTATION','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Disease','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Stimuli ','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_Aspectual','Cause',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cooperative_activity','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_motion','Cause',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Cause_Act','Cause',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Experience_Event','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('cause_experience_event','Cause',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Relational_Change','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('constitutive_change','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('change_of_state','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('change_of_value','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Change_Possession','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Change_Of_Location','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Natural_Transition','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Acquire_Knoweldge','Agentive',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('CAUSE_CHANGE','Cause',2);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Building','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Area','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('MATERIAL','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('ARTIFACT','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifactual_Material','Material',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Furniture','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Clothing','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Container','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Instrument','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Money','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Vehicle','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Semiotic_Artifact','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('FOOD','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Artifact_Food','Food',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Flavouring','Food',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('agent_of_persistent_activity','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('profession','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Substance_Food','Food',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Drink','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('artifactual_drink','Drink',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('INSTITUTION','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('REPRESENTATION','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('purpose_act','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('reporting_events','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('commissives','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('directives','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('expressives','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('declaratives','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('judgment','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Modal_Event','Telic',3);
insert into ontologie_l1 (tip_copil,tip_parinte,dimensiune) values('Give_Knoweldge','Telic',3);

update ontologie_l1
  set tip_copil = lower(tip_copil), tip_parinte = lower(tip_parinte);

--ONTOLOGIE_L2;
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Abstract_entity','Entity',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Act','Event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Animal','Living_entity',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Aspectual','Event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Cause_change','Event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Cause_Relational_change','Cause_change',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Change','Event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Change_possession','Change',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Cognitive_event','Psychological_event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Concrete_entity','Entity',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Creation','Cause_Change',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Event','Entity',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Experience_event','Psychological_event',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Group','Constitutive',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Human','Living_entity',1);
insert into ontologie_l2 (tip_copil,tip_parinte,dimensiune) values('Living_entity','Concrete_entity',1);

update ontologie_l2
  set tip_copil = lower(tip_copil), tip_parinte = lower(tip_parinte);

--ONTOLOGIE_L3;
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Act','Event',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Cause_change','Event',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Change','Event',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Concrete_entity','Entity',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Event','Entity',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Human','Living_entity',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Living_entity','Concrete_entity',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Property','Entity',1);
insert into ontologie_l3 (tip_copil,tip_parinte,dimensiune) values('Psychological_event','Event',1);

update ontologie_l3
  set tip_copil = lower(tip_copil), tip_parinte = lower(tip_parinte);

--ONTOLOGIE_L4;
insert into ontologie_l4 (tip_copil,tip_parinte,dimensiune) values('Concrete_entity','Entity',1);
insert into ontologie_l4 (tip_copil,tip_parinte,dimensiune) values('Event','Entity',1);
insert into ontologie_l4 (tip_copil,tip_parinte,dimensiune) values('Living_entity','Concrete_entity',1);

update ontologie_l4
  set tip_copil = lower(tip_copil), tip_parinte = lower(tip_parinte);

--ONTOLOGIE_L5;
insert into ontologie_l5 (tip_copil,tip_parinte,dimensiune) values('Concrete_entity','Entity',1);

update ontologie_l5
  set tip_copil = lower(tip_copil), tip_parinte = lower(tip_parinte);

--QUALIA_FORMAL;
insert into qualia_formal (tip, descriere) values ('isa','');
insert into qualia_formal (tip, descriere) values ('antonym_comp','');
insert into qualia_formal (tip, descriere) values ('antonym_grad','');
insert into qualia_formal (tip, descriere) values ('mult_opposition','');

--QUALIA_CONSTITUTIVE;
insert into qualia_constitutive (tip, descriere) values ('made_of','');
insert into qualia_constitutive (tip, descriere) values ('is_a_follower_of','');
insert into qualia_constitutive (tip, descriere) values ('has_as_member','');
insert into qualia_constitutive (tip, descriere) values ('is_a_member_of','');
insert into qualia_constitutive (tip, descriere) values ('has_as_part','');
insert into qualia_constitutive (tip, descriere) values ('instrument','');
insert into qualia_constitutive (tip, descriere) values ('kinship','');
insert into qualia_constitutive (tip, descriere) values ('is_a_part_of','');
insert into qualia_constitutive (tip, descriere) values ('resulting_state','');
insert into qualia_constitutive (tip, descriere) values ('relates','');
insert into qualia_constitutive (tip, descriere) values ('uses','');
insert into qualia_constitutive (tip, descriere) values ('causes','');
insert into qualia_constitutive (tip, descriere) values ('concerns','');
insert into qualia_constitutive (tip, descriere) values ('affects','');
insert into qualia_constitutive (tip, descriere) values ('constitutive_activity','');
insert into qualia_constitutive (tip, descriere) values ('contains ','');
insert into qualia_constitutive (tip, descriere) values ('has_as_colour','');
insert into qualia_constitutive (tip, descriere) values ('has_as_effect','');
insert into qualia_constitutive (tip, descriere) values ('has_as_property','');
insert into qualia_constitutive (tip, descriere) values ('measured_by','');
insert into qualia_constitutive (tip, descriere) values ('measures','');
insert into qualia_constitutive (tip, descriere) values ('produces','');
insert into qualia_constitutive (tip, descriere) values ('produced_by ','');
insert into qualia_constitutive (tip, descriere) values ('property_of','');
insert into qualia_constitutive (tip, descriere) values ('quantifies','');
insert into qualia_constitutive (tip, descriere) values ('related_to','');
insert into qualia_constitutive (tip, descriere) values ('successor_of','');
insert into qualia_constitutive (tip, descriere) values ('precedes','');
insert into qualia_constitutive (tip, descriere) values ('typical_of','');
insert into qualia_constitutive (tip, descriere) values ('feeling','');
insert into qualia_constitutive (tip, descriere) values ('is_in','');
insert into qualia_constitutive (tip, descriere) values ('lives_in','');
insert into qualia_constitutive (tip, descriere) values ('typical_location','');

--QUALIA_AGENTIVE;
insert into qualia_agentive (tip, descriere) values ('result_of','');
insert into qualia_agentive (tip, descriere) values ('agentive_prog','');
insert into qualia_agentive (tip, descriere) values ('agentive_cause','');
insert into qualia_agentive (tip, descriere) values ('agentive_experience','');
insert into qualia_agentive (tip, descriere) values ('caused_by','');
insert into qualia_agentive (tip, descriere) values ('source','');
insert into qualia_agentive (tip, descriere) values ('created_by','');
insert into qualia_agentive (tip, descriere) values ('derived_from','');

--QUALIA_TELIC;
insert into qualia_telic (tip, descriere) values ('used_for','');
insert into qualia_telic (tip, descriere) values ('used_as','');
insert into qualia_telic (tip, descriere) values ('used_by','');
insert into qualia_telic (tip, descriere) values ('used_against','');
insert into qualia_telic (tip, descriere) values ('indirect_telic','');
insert into qualia_telic (tip, descriere) values ('purpose','');
insert into qualia_telic (tip, descriere) values ('is_the_activity_of','');
insert into qualia_telic (tip, descriere) values ('is_the_ability_of','');
insert into qualia_telic (tip, descriere) values ('is_the_habit_of','');
insert into qualia_telic (tip, descriere) values ('object_of_activity','');

--POS;
insert into pos_list (tip,descriere) values ('verb','');
insert into pos_list (tip,descriere) values ('unpredicative_noun','');
insert into pos_list (tip,descriere) values ('predicative_noun','');
insert into pos_list (tip,descriere) values ('adjective','');
insert into pos_list (tip,descriere) values ('adverb','');

--EVENIMENTIAL;
insert into evenimential (tip,descriere) values ('process','');
insert into evenimential (tip,descriere) values ('state','');
insert into evenimential (tip,descriere) values ('activity','');

--ROLURI;
insert into rol_tematic (nume) values ('Protoagent');
insert into rol_tematic (nume) values ('Protopatient');
insert into rol_tematic (nume) values ('SecondParticipant');
insert into rol_tematic (nume) values ('StateOfAffair');
insert into rol_tematic (nume) values ('Location');
insert into rol_tematic (nume) values ('Direction');
insert into rol_tematic (nume) values ('Origin');
insert into rol_tematic (nume) values ('Kinship');
insert into rol_tematic (nume) values ('HeadQuantified');

