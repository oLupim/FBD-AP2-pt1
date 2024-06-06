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