--Considere o esquema conceitual abaixo.

create table emp_depto(
    num_depto int Not Null primary key,
    nome_depto varchar(30),
    num_emp int Not Null,
    salario int Not Null,
    nome_emp varchar(30)
);

create table dependente(
    id_dep int Not Null primary key,
    nome_dep varchar(30) not null,
    data_nasc date not null,
    numero_emp int not null,
    constraint empregado_dependente
    foreign key (numero_emp) references emp_depto(num_depto)
);

create table projeto(
    id_projeto int Not Null primary key,
    nome_projeto varchar(30),
    numero_depto int not null,
    constraint departamento_projeto
    foreign key (numero_depto) references emp_depto(num_depto)
);

create table participa_de(
    hs_trab time not null,
    numero_empdepto int not null,
    constraint empdepto_participa_de
    foreign key (numero_empdepto) references emp_depto(num_depto),
    id_proj int not null,
    constraint projeto_participa
    foreign key (id_proj) references projeto(id_projeto)
);


INSERT INTO emp_depto (num_depto, nome_depto, num_emp, salario, nome_emp)
VALUES
  (1, 'Direcao', 11, 2500, 'Juliano'),
  (2, 'Gerencia', 12, 3500, 'Julia'),
  (3, 'Secretaria', 13, 1500, 'Julio');

INSERT INTO dependente (id_dep, nome_dep, data_nasc, numero_emp)
VALUES
  (1, 'dep01', 1995, 2),
  (2, 'dep02', 1993, 2),
  (3, 'dep03', 1997, 1);

INSERT INTO projeto (id_projeto, nome_projeto, numero_depto)
VALUES
  (1, 'projetoADS1', 1995, 3),
  (2, 'projetoADS2', 1993, 2),
  (3, 'projetoADS3', 1997, 1);

INSERT INTO participa_de (hs_trab, numero_empdepto, id_proj)
VALUES
  (40, 1, 3),
  (64, 3, 3),
  (80, 2, 1);
  
