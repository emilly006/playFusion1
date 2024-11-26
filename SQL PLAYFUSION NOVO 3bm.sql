create database playFusion;
use playFusion;


CREATE TABLE usuario(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(100)unique,
email VARCHAR(100),
senha VARCHAR(50) unique,
telefone VARCHAR(20) unique,
dat_de_nasc DATE
);


create table equipe(
idDaEquipe int,
nome varchar(100),
primary key(idDaEquipe)
);

create table jogo(
nome varchar(30),
codigo int primary key,
categoria varchar(10),
jogosDisponiveis varchar(30),
foto varchar(100),
descrição varchar(100)
);

create table live_streams(
id int auto_increment primary key,
foto varchar(100),
fk_usuario_id int,
fk_jogo_codigo int,
nome varchar(100),
descrição varchar(100),
foreign key (fk_usuario_id) references usuario(id),
foreign key (fk_jogo_codigo) references jogo(codigo)
);

create table chat(
fk_usuario_id int,
id int auto_increment primary key,
ultima_mensagem varchar(100),
foto varchar (100),
quantidadeDeMensagens int,
horario timestamp,
foreign key (fk_usuario_id) references usuario(id)
);

create table premio(
codigo varchar(20)primary key,
descricao varchar (32),
tipo varchar(21)
);

create table competicao(
premiacao varchar (20),
codigo varchar (20) primary key,
dataI int,
dataF int,
local varchar (50),
descricao varchar(100),
classificacao_indicativa varchar(50),
fk_premio_codigo varchar(20),
fk_jogo_codigo int auto_increment,
foreign key (fk_jogo_codigo) references jogo(codigo),
foreign key (fk_premio_codigo) references premio(codigo)
);


create table criarCompteticao(
fk_jogo_codigo int,
nomeDaCompeticao varchar(100),
categoriaDosJogadores varchar(100),
codigoDaCompeticao int auto_increment primary key,
valorDoPremio varchar(100),
localDaCompeticao varchar(100),
data date,
foreign key(fk_jogo_codigo) references jogo(codigo)
);

CREATE TABLE escolherCompeticao(
fk_jogo_codigo int,
foto varchar (100),
Descricao varchar(20),
foreign key(fk_jogo_codigo) references jogo(codigo)
);

create table jogador(
nome varchar (32),
categoria varchar (25),
nivel int,
Id int primary key,
cidade varchar (100)
);

create table inscricao(
fk_jogo_codigo int,
fk_competicao_codigo varchar (20),
quantidadeDeJogadores int,
categoria int,
fk_equipe_idDaEquipe int,
id int auto_increment primary key,
foreign key(fk_jogo_codigo) references jogo(codigo),
foreign key(fk_competicao_codigo) references competicao(codigo),
foreign key(fk_equipe_idDaEquipe) references equipe(idDaEquipe)
);

create table pagamento(
cartao varchar(50),
pix varchar(50) ,
fk_inscricao_id int,
id int auto_increment primary key,
foreign key (fk_inscricao_id) references inscricao(id)
);

create table perfil(
Fk_jogador_id int,
fk_usuario_id int,
foto varchar(100),
id int auto_increment primary key,
foreign key (Fk_jogador_id) references jogador(id),
foreign key (fk_usuario_id) references usuario(id)
);

create table confi_notificacao(
ativarNotificacao boolean,
receberNotificacaoDasCompeticao boolean,
receberNotificacaoDasEquipesVencedoras boolean,
ReceberNotificacaoDePremios boolean
);

CREATE TABLE PremioJogoEquipeCompeticao(
FK_premio_codigo varchar(20),
FK_jogo_codigo int,
FK_equipe_idDaEquipe int,
FK_competicao_codigo VARCHAR(20),
FOREIGN KEY(FK_premio_codigo) REFERENCES premio (codigo),
FOREIGN KEY(FK_jogo_codigo) REFERENCES jogo (codigo),
FOREIGN KEY(FK_equipe_idDaEquipe) REFERENCES equipe(idDaEquipe),
FOREIGN KEY(FK_competicao_codigo ) REFERENCES competicao(codigo),
PRIMARY KEY(FK_premio_codigo, FK_jogo_codigo, FK_equipe_idDaEquipe, FK_competicao_codigo)
);

create table competicaoEquipeJogo(
TAXADEINSCRICAO INT,
FK_jogo_codigo int,
FK_equipe_idDaEquipe int,
FK_competicao_codigo varchar(20),
FOREIGN KEY(FK_jogo_codigo) REFERENCES jogo(codigo),
FOREIGN KEY(FK_equipe_idDaEquipe) REFERENCES equipe(idDaEquipe),
FOREIGN KEY(FK_competicao_codigo) REFERENCES competicao(codigo),
PRIMARY KEY(FK_jogo_codigo,FK_equipe_idDaEquipe,FK_competicao_codigo)
);

#tabela cadastro
INSERT INTO Usuario  (id, username, email ,senha, telefone, dat_de_nasc) VALUES(888,'betohxz9', 'betohxz123@gmail.com', '526488bet', '(82) 99821.2691', '2006-04-26');
INSERT INTO usuario(id, username, email ,senha, telefone, dat_de_nasc) VALUES(555,'thomas', 'thomas2024@gmail.com', 'thomas123', '(82) 90000.0000', '2009-04-22');
INSERT INTO usuario (id, username, email , senha, telefone, dat_de_nasc) VALUES(6666,'emy', 'emiig20@gmail.com', 'emig00', '(82) 99410.01130', '2008-06-01');

#tabela equipe
INSERT INTO equipe(idDaEquipe, nome) VALUES('5555', 'equipe1');
INSERT INTO equipe(idDaEquipe, nome) VALUES('5556', 'equipe2');
INSERT INTO equipe(idDaEquipe, nome) VALUES('5522', 'equipe3');

#tabela jogo
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis) VALUES('FREE FIRE', 2222, '1', 'FF');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis) VALUES('LEAGUE OF LEGENDS', 2262, '2', ' VV');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis) VALUES('VALORANT', 2252, '3', ' LOL');

#tabela live_streams
INSERT INTO live_streams (fk_usuario_id, fk_jogo_codigo, nome, descrição)VALUES (888, 2222, 'Ao vivo free fire', '250mil participantes');
INSERT INTO live_streams (fk_usuario_id, fk_jogo_codigo, nome, descrição)VALUES (555, 2262, 'Ao vivo LOL', '200mil participantes');
INSERT INTO live_streams (fk_usuario_id, fk_jogo_codigo, nome, descrição)VALUES (6666, 2252, 'Ao vivo valorante', '100mil participantes');


#tabela prêmio
INSERT INTO premio(codigo, descricao, tipo) VALUES('444B', 'PIX', '1');
INSERT INTO premio(codigo, descricao, tipo) VALUES('494B', 'MOEDA EM JOGO', '2');
INSERT INTO premio(codigo, descricao, tipo) VALUES('444AB', 'Credito', '1');

#tabela competicao
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('2', '505', 2023, 2024, 'ENDEREÇO TAL3');
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('6', '565', 2023, 2024, 'ENDEREÇO TAL1');
INSERT INTO competicao(premiacao, codigo, dataI, dataF, local) VALUES('2', '557', 2025, 2026, 'ENDEREÇO TAL2');

#tabela jogador
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('EMILLY', 'INICIANTE', 3, '66N', 'maceió');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('CLAUDIO', 'SUPREMO', 100, '06M', 'rio largo');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('DAVID', 'AVANÇADO', 60, '677', 'arapiraca');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('Adriely', 'intermediário', 50, '678', 'arapiraca');

#tabela PremioJogoEquipeCompeticao
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('444B', 2222, '5555', '505');
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('494B', 2262, '5556', '565');
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES ('444AB', 2252, '5522', '557');

INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(50, 2222, '5555', '505');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(45, 2262, '5556', '565');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(35, 2252, '5522', '557');