/* aula 27/05/2019 */

create database dbFaculdade;
use dbFaculdade;

create table tbInstrutores ( 
    nome varchar (50),
    email varchar (50),
    valor_hora int (10),
    certificados varchar (255)
);   

create table tbCursos ( 
    nome varchar (50),
    requisito varchar (255),
    carga_horaria smallint (5),
    preco double
    ); 

create table tbAlunos ( 
    cpf char (11),
    nome varchar (50),
    email varchar (50),
    fone char (14),
    data_nascimento date
); 

create table tbTurmas ( 
    data_inicio date,
    data_final date,
    carga_horaria smallint (5)
); 

create table tbMatriculas ( 
    turmas_id int (10),
    alunos_id int (11),
    data_matricula date
); 

/*  - Incluindo Id's da forma correta */
alter table tbturmas add column id_turmas int (10) primary key AUTO_INCREMENT not null first;
alter table tbInstrutores add column id_instrutores int (11) primary key AUTO_INCREMENT not null first;
alter table tbcursos add column id_cursos int (10) primary key AUTO_INCREMENT not null first;
alter table tbAlunos add column id_alunos int (11) primary key AUTO_INCREMENT not null first;

/*  - Fazendo Chaves estrangeiras */
alter table tbTurmas add column instrutores_id int (11);
alter table tbTurmas add constraint fkIndex1 foreign key (instrutores_id) references tbInstrutores (id_instrutores);
alter table tbTurmas add column cursos_id int (10);
alter table tbTurmas add constraint fkIndex2 foreign key (cursos_id) references tbCursos (id_cursos);

alter table tbmatriculas add constraint fkIndex4 foreign key (turmas_id) references tbturmas (id_turmas);
alter table tbmatriculas add constraint fkIndex5 foreign key (alunos_id) references tbalunos (id_alunos);










