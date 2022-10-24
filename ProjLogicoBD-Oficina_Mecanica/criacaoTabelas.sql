-- DROP DATABASE oficina;

CREATE DATABASE oficina;
USE oficina;

CREATE TABLE Endereco(
idEndereco INT AUTO_INCREMENT,
end_Logradouro VARCHAR(45),
end_Numero INT(6),
end_Complemento VARCHAR(25),
end_Bairro VARCHAR(35),
end_CEP CHAR(8),
end_Celular CHAR(11) NOT NULL,
end_Telefone CHAR(10),
end_Municipio VARCHAR(45),
end_UF VARCHAR(2) DEFAULT 'RS',
end_email VARCHAR(45),
CONSTRAINT PK_Endereco PRIMARY KEY Endereco(idEndereco)
);

CREATE TABLE Cliente(
idCliente INT AUTO_INCREMENT,
idEndCli INT,
cli_Cliente VARCHAR(60) NOT NULL,
cli_Tipo ENUM('Pessoa Física', 'Pessoa Jurídica') DEFAULT 'Pessoa Física',
cli_CPF CHAR(11),
cli_CNPJ CHAR(17),
-- CONSTRAINT cli_CPF_UNIQUE UNIQUE Cliente(cli_CPF),
-- CONSTRAINT cli_CNPJ_UNIQUE UNIQUE Cliente(cli_CNPJ),
CONSTRAINT PK_clientex PRIMARY KEY Cliente(idCliente),
CONSTRAINT FK_Cliente_Endereco FOREIGN KEY Cliente(idEndCli) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Mecanico(
idMecanico INT AUTO_INCREMENT,
idEnd_Mec INT,
mec_NomeCompleto VARCHAR(45),
mec_EspMecanico ENUM('Ar-Condicionado','Pintor','Chapeador','Elétrico','Hidráulico', 'Suspensão', 'Mecânico Geral') DEFAULT 'Mecânico Geral',
CONSTRAINT PK_Mecanico PRIMARY KEY Mecanico(idMecanico),
CONSTRAINT FK_Mecanico_Endereco FOREIGN KEY Mecanico(idEnd_Mec) REFERENCES Endereco(idEndereco)
);

CREATE TABLE Equipe(
idEquipe INT AUTO_INCREMENT,
idMec_Equip INT,
equip_Nome ENUM('Manutenção', 'Revisão', 'Conserto'),
equip_EspEquipe ENUM('Refrigeração', 'Pintura e Chapeação', 'Elétrica', 'Manutenção', 'Conserto', 'Revisão') DEFAULT 'Revisão',
CONSTRAINT PK_Equipe PRIMARY KEY Equipe(idEquipe),
CONSTRAINT FK_Equipe_Mecanico FOREIGN KEY Equipe(idMec_Equip) REFERENCES Mecanico(idMecanico)
);

CREATE TABLE OrdemServico(
idOrdemServico INT AUTO_INCREMENT,
idCli_OS INT,
idEqui_OS INT,
OS_Inicio DATETIME,
OS_Conclusao DATETIME,
OS_Descricao VARCHAR(500),
OS_Total FLOAT,
OS_Status ENUM('Em Análise', 'Autorizada', 'Não Autorizada', 'Iniciada', 'Concluída'),
CONSTRAINT PK_OrdemServico PRIMARY KEY OrdemServico(idOrdemServico),
CONSTRAINT FK_OrdemServico_Equipe FOREIGN KEY OrdemServico(idEqui_OS) REFERENCES Equipe(idEquipe),
CONSTRAINT FK_OrdemServico_Cliente FOREIGN KEY OrdemServico(idCli_OS) REFERENCES Cliente(idCliente)
);

CREATE TABLE Veiculo(
idVeiculo INT AUTO_INCREMENT,
idCli_Vei INT,
idEqu_Vei INT,
idOrdSer_Vei INT,
vei_Marca VARCHAR(45),
vei_Modelo VARCHAR(45),
vei_Ano CHAR(4),
vei_Cor VARCHAR(15),
CONSTRAINT PK_Veiculo PRIMARY KEY Veiculo(idVeiculo),
CONSTRAINT FK_Veiculo_Cliente FOREIGN KEY Veiculo(idCli_Vei) REFERENCES Cliente(idCliente),
CONSTRAINT FK_Veiculo_Equipe FOREIGN KEY Veiculo(idEqu_Vei) REFERENCES Equipe(idEquipe),
CONSTRAINT FK_Veiculo_OrdServico FOREIGN KEY Veiculo(idOrdSer_Vei) REFERENCES OrdemServico(idOrdemServico)
);

CREATE TABLE Servicos(
idServicos INT AUTO_INCREMENT,
serv_Descricao VARCHAR(250),
serv_ValorUnitario FLOAT,
CONSTRAINT PK_Servico PRIMARY KEY Servicos(idServicos)
);

CREATE TABLE Materiais(
idMateriais INT AUTO_INCREMENT,
mat_Descricao VARCHAR(250),
mat_ValorUnitario FLOAT,
CONSTRAINT PK_Materiais PRIMARY KEY Materiais(idMateriais)
);


CREATE TABLE Servicos_OS(
idServicos_OS INT,
idOrdSer_ServicosOS INT,
serv_TotalServico FLOAT,
CONSTRAINT Servicos_OS PRIMARY KEY Servicos_OS(idServicos_OS, idOrdSer_ServicosOS),
CONSTRAINT FK_ServicoOS_OrdemServico FOREIGN KEY Servicos_OS(idOrdSer_ServicosOS) REFERENCES OrdemServico(idOrdemServico),
CONSTRAINT FK_ServicoOS_Servico FOREIGN KEY Servicos_OS(idServicos_OS) REFERENCES Servicos(idServicos)
);

CREATE TABLE Materiais_OS(
idMateriais_MateriaisOS INT,
idOrdSer_MateriaisOS INT,
OS_TotalMateriais FLOAT,
CONSTRAINT MateriaisOS_Materiais PRIMARY KEY Materiais_OS(idMateriais_MateriaisOS, idOrdSer_MateriaisOS),
CONSTRAINT FK_Materiais_MateriaisOS FOREIGN KEY Materiais_OS(idMateriais_MateriaisOS) REFERENCES Materiais(idMateriais),
CONSTRAINT FK_MateriaisOS_OrdemServico FOREIGN KEY Materiais_OS(idOrdSer_MateriaisOS) REFERENCES OrdemServico(idOrdemServico)
);

ALTER TABLE Cliente AUTO_INCREMENT=1000;
ALTER TABLE Mecanico AUTO_INCREMENT=2000;
ALTER TABLE Endereco AUTO_INCREMENT=3000;
ALTER TABLE Equipe AUTO_INCREMENT=200;
ALTER TABLE OrdemServico AUTO_INCREMENT=5000;
ALTER TABLE Servicos AUTO_INCREMENT=500;
ALTER TABLE Materiais AUTO_INCREMENT=50;

