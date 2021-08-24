CREATE TABLE pessoa(
    cpf VARCHAR(11),
    nome VARCHAR(50) NOT NULL,
    end_rua VARCHAR (50),
    end_cidade VARCHAR(30),
    end_CEP NUMBER(8,0),
    CONSTRAINT key_pessoa PRIMARY KEY (cpf)
);

CREATE TABLE contato(
    cpf VARCHAR(11),
    telefone VARCHAR(14),
    email VARCHAR(40),
    CONSTRAINT fk_contato FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
);

CREATE TABLE avaliacao(
    id_avaliacao NUMBER(7, 0),
    massa_muscular NUMBER(4,1) NOT NULL,
    peso NUMBER(4,1) NOT NULL,
    altura NUMBER(3,0) NOT NULL,
    data_avaliacao DATE NOT NULL,
    CONSTRAINT pk_avaliacao PRIMARY KEY (id_avaliacao)
);

CREATE TABLE unidade(
    id_unidade NUMBER (5,0) NOT NULL,
    nome VARCHAR(60) NOT NULL,
    end_rua VARCHAR(50),
    end_cidade VARCHAR(30),
    end_cep NUMBER(8,0),
    CONSTRAINT pk_academia PRIMARY KEY (id_unidade)
);

CREATE TABLE funcionario(
    cpf VARCHAR(11),
    funcao VARCHAR(20) NOT NULL,
    salario NUMBER(15,0) NOT NULL,
    CONSTRAINT pk_funcionario  PRIMARY KEY (cpf),
    CONSTRAINT fk_funcionario FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
);

CREATE TABLE cliente(
    cpf VARCHAR(11),
    frequencia NUMBER(2,0) NOT NULL,
    digital VARCHAR(13) NOT NULL,
    CONSTRAINT key_cliente PRIMARY KEY (cpf),
    CONSTRAINT fk_cliente FOREIGN KEY (cpf) REFERENCES pessoa(cpf)
);

CREATE TABLE matricula(
    cpf VARCHAR(11),
    id_matricula NUMBER(5,0),
    data_matricula DATE NOT NULL,
    tipo_plano VARCHAR(11) NOT NULL,
    anuidade NUMBER(5,0),
    data_renovacao DATE NOT NULL,
    id_unidade NUMBER(5,0),
    CONSTRAINT key_matricula PRIMARY KEY (cpf, id_matricula),
    CONSTRAINT fk_matricula_cpf FOREIGN KEY (cpf) REFERENCES pessoa(cpf),
    CONSTRAINT fk_matricula_unidade FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade) 
);

CREATE TABLE avalia(
    id_avaliacao NUMBER(7,0),
    cpf_funcionario VARCHAR(11),
    cpf_aluno VARCHAR(11),
    CONSTRAINT fk_avaliacao FOREIGN KEY (id_avaliacao) REFERENCES avaliacao (id_avaliacao),
    CONSTRAINT pk_avalia PRIMARY KEY (cpf_funcionario, cpf_aluno),
    CONSTRAINT fk_funcionario_avalia FOREIGN KEY (cpf_funcionario) REFERENCES funcionario(cpf),
    CONSTRAINT fk_cliente_avalia FOREIGN KEY (cpf_aluno) REFERENCES cliente(cpf)
);

CREATE TABLE acompanha(
    acompanhante VARCHAR(11),
    acompanhado VARCHAR(11),
    CONSTRAINT pk_acompanha PRIMARY KEY (acompanha, acompanhado),
    CONSTRAINT fk_acompanhante FOREIGN KEY(acompanhante) REFERENCES funcionario(cpf),
    CONSTRAINT fk_acompanhado FOREIGN KEY (acompanhado) REFERENCES cliente(cpf)
);

CREATE TABLE gerencia(
    gerente VARCHAR (11),
    gerenciado VARCHAR(11),
    CONSTRAINT pk_gerencia PRIMARY KEY (gerenciado),
    CONSTRAINT fk_gerente FOREIGN KEY (gerente) REFERENCES funcionario(cpf),
    CONSTRAINT fk_gerenciado FOREIGN KEY (gerenciado) REFERENCES funcionario(cpf)
);
