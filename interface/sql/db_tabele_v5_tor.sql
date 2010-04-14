#stergere tabele;
drop table IF EXISTS cuvinte;
drop table IF EXISTS pos_list;
drop table IF EXISTS evenimential;
drop table IF EXISTS qualia_formal;
drop table IF EXISTS qualia_constitutive;
drop table IF EXISTS qualia_agentive;
drop table IF EXISTS qualia_telic;
drop table IF EXISTS matrix_word_q_constitutive;
drop table IF EXISTS matrix_word_q_agentive;
drop table IF EXISTS matrix_word_q_telic;
drop table IF EXISTS ontologie_termeni;
drop table IF EXISTS ontologie_l1;
drop table IF EXISTS ontologie_l2;
drop table IF EXISTS ontologie_l3;
drop table IF EXISTS ontologie_l4;
drop table IF EXISTS ontologie_l5;
drop table IF EXISTS predicate;
drop table IF EXISTS rol_tematic;
drop table IF EXISTS tip_legatura;
drop table IF EXISTS argumente_predicat;

#generare tabele
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
  exemple varchar(50)
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
  nume varchar(30) not null,
  id_predicat varchar(50) not null,
  id_rol_tematic smallint not null,
  tip_ontologic varchar(50) not null,
  exemplu varchar(100),
  pozitie smallint not null
);

