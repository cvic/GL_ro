#stergere date anterioare - doar daca este cazul !!!!
truncate table predicate ;
truncate table argumente_predicat ;
truncate table cuvinte ;
truncate table matrix_word_q_formal ;
truncate table matrix_word_q_telic ;


insert into predicate (id,nume,nr_arg,exemplu) values ('PREDICATEa_citi1','a citi',2,'Elevul citeste o carte');
insert into predicate (id,nume,nr_arg,exemplu) values ('PREDICATEa_construi','a construi',2,'Muncitorul construieste o casa. Elevul construieste o propozitie (figura geometrica)');

insert into argumente_predicat (id,id_predicat,id_rol_tematic,tip_ontologic,exemplu,pozitie)
  values('Arg0a_citi1','PREDICATEa_citi1',1,'human','Elevul citeste o carte',1);
insert into argumente_predicat (id,id_predicat,id_rol_tematic,tip_ontologic,exemplu,pozitie)
  values('Arg1a_citi1','PREDICATEa_citi1',2,'information','Elevul citeste o carte',2);
insert into argumente_predicat (id,id_predicat,id_rol_tematic,tip_ontologic,exemplu,pozitie)
  values('Arg0a_construi','PREDICATEa_construi',1,'human','Muncitorul construieste o casa. Elevul construieste o propozitie (figura geometrica)',1);
insert into argumente_predicat (id,id_predicat,id_rol_tematic,tip_ontologic,exemplu,pozitie)
  values('Arg1a_construi','PREDICATEa_construi',2,'representation','Muncitorul construieste o casa. Elevul construieste o propozitie (figura geometrica)',2);

insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values 
  ('USem1a_citi1','A citi','A parcurge un text','Elevul citeste o carte','purpose_act','activity','verb','PREDICATEa_citi1',1);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos)
  values 
  ('USem2activitate','activitate','Participare activa si constienta la ceva','Activitate scolara','act','activity','unpredicative_noun');
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values  
  ('USem3carte','carte','Scriere cu un anumit subiect. Cunostinte','Elevul citeste o carte. Elevul are carte.','information',null,'unpredicative_noun',null,null);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values 
  ('USem4ziar','ziar','Publicatie periodica, care contine stiri si informatii','Elevul citeste un ziar','information',null,'unpredicative_noun',null,null);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values  
  ('USem5a_construi','A construi','A forma un intreg','Muncitorul construieste o casa. Elevul construieste o propozitie (figura geometrica)','purpose_act','process','verb',null,null);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values  
  ('USem6obiect','obiect','Entitate concreta sau abstracta','Mingea este un obiect. Obiect de studiu. Obiect direct.','entity',null,'unpredicative_noun',null,null);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,tip_predicat,id_legatura)
  values  
  ('USem7constructor','constructor','Persoana care construieste','Constructorul construieste o casa.','profession',null,'predicative_noun','PREDICATEa_construi',2);
insert into cuvinte 
  (cod,cuvant,definitie,exemplu,tip_ontologic,tip_evenimential,tip_pos,sens,tip_predicat,id_legatura)
  values  
  ('USem8constructie','constructie','Ceva care alcatuieste un intreg','Constructia casei. Constructie lingvistica.','representation',null,'predicative_noun','alive','PREDICATEa_construi',3);


insert into matrix_word_q_formal (id_base_word,id_ref_word,tip_q_formal) 
  values (1,2,'isa');
insert into matrix_word_q_formal (id_base_word,id_ref_word,tip_q_formal) 
  values (3,6,'isa');
insert into matrix_word_q_formal (id_base_word,id_ref_word,tip_q_formal) 
  values (4,6,'isa');

insert into matrix_word_q_telic (id_base_word,id_ref_word,tip_q_telic) 
  values (6,5,'purpose');

