#stergere tabele;
drop table if exists cuvinte;
drop table if exists pos_list;
drop table if exists evenimential;
drop table if exists qualia_formal;
drop table if exists qualia_constitutive;
drop table if exists qualia_agentive;
drop table if exists qualia_telic;
drop table if exists matrix_word_q_formal;
drop table if exists matrix_word_q_constitutive;
drop table if exists matrix_word_q_agentive;
drop table if exists matrix_word_q_telic;
drop table if exists ontologie_termeni;
drop table if exists ontologie_l1;
drop table if exists ontologie_l2;
drop table if exists ontologie_l3;
drop table if exists ontologie_l4;
drop table if exists ontologie_l5;
drop table if exists predicate;
drop table if exists rol_tematic;
drop table if exists tip_legatura;
drop table if exists argumente_predicat;

#generare tabele
create table cuvinte (
  id int unsigned not null auto_increment primary key,
  cod varchar(50) not null unique,
  cuvant varchar(30) not null,
  definitie varchar(200) not null,
  exemplu varchar(200),
  tip_ontologic varchar(30) not null,
  tip_evenimential varchar(30),
  tip_pos varchar(30) not null,
  sens varchar(100),
  tip_predicat varchar(50),
  id_legatura smallint unsigned
);
create table evenimential (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table pos_list (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table qualia_formal (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table qualia_constitutive (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table qualia_agentive (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table qualia_telic (
  tip varchar(30) not null primary key,
  descriere varchar(50)
);
create table matrix_word_q_constitutive (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_constitutive varchar(30)
);
create table matrix_word_q_formal (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_formal varchar(30)
);
create table matrix_word_q_agentive (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_agentive varchar(30)
);
create table matrix_word_q_telic (
  id_base_word int not null,
  id_ref_word int not null,
  tip_q_telic varchar(30)
);
create table ontologie_termeni (
  tip varchar(30) not null primary key,
  descriere varchar(50),
  exemple varchar(150)
);
create table ontologie_l1 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint unsigned not null
);
create table ontologie_l2 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint unsigned not null
);
create table ontologie_l3 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint unsigned not null
);
create table ontologie_l4 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint unsigned not null
);
create table ontologie_l5 (
  tip_copil varchar(30) not null,
  tip_parinte varchar(30) not null,
  dimensiune smallint unsigned not null
);
create table predicate (
  id varchar(50) not null unique,
  nume varchar(30) not null,
  nr_arg smallint unsigned not null,
  exemplu varchar(100)
);
create table rol_tematic (
  id smallint unsigned not null auto_increment primary key ,
  nume varchar(30) not null
);
create table tip_legatura (
  id smallint unsigned not null auto_increment primary key ,
  nume varchar(30) not null
);
create table argumente_predicat (
  id varchar(50) not null unique,
  id_predicat varchar(50) not null,
  id_rol_tematic smallint not null,
  tip_ontologic varchar(50) not null,
  exemplu varchar(100),
  pozitie smallint not null
);

