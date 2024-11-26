create database playFusion1;
use playFusion1;

create table equipe(
idDaEquipe varchar(15),
nome varchar(100),
primary key(idDaEquipe)
);

create table jogo(
nome varchar(30),
codigo varchar(10) primary key,
categoria varchar(10),
jogosDisponoveis varchar(30)
);

create table premio(
codigo varchar(20)primary key,
descricao varchar (32),
tipo varchar(21)
);

create table competicao(
premiação varchar (20),
codigo varchar (20) primary key,
dataI int,
dataF int,
local varchar (50)
);

create table jogador(
nome varchar (32),
categoria varchar (25),
nivel int,
Id varchar (15) primary key,
cidade varchar (100)
);

CREATE TABLE PremioJogoEquipeCompetição(
FK_PREMIO_CODIGO VARCHAR(20),
FK_JOGO_CODIGO VARCHAR(10),
FK_EQUIPE_IDDAEQUIPE VARCHAR(15),
FK_COMPETICAO_CODIGO VARCHAR(20),
FOREIGN KEY(FK_PREMIO_CODIGO) REFERENCES PREMIO (CODIGO),
FOREIGN KEY(FK_JOGO_CODIGO) REFERENCES JOGO (CODIGO),
FOREIGN KEY(FK_EQUIPE_IDDAEQUIPE) REFERENCES EQUIPE(IDDAEQUIPE),
FOREIGN KEY(FK_COMPETICAO_CODIGO) REFERENCES COMPETICAO(CODIGO),
PRIMARY KEY(FK_PREMIO_CODIGO,FK_JOGO_CODIGO,FK_EQUIPE_IDDAEQUIPE,FK_COMPETICAO_CODIGO)
);
create table competicaoEquipeJogo(
TAXADEINSCRICAO INT,
FK_JOGO_CODIGO VARCHAR(10),
FK_EQUIPE_IDDAEQUIPE VARCHAR(15),
FK_COMPETICAO_CODIGO VARCHAR(20),
FOREIGN KEY(FK_JOGO_CODIGO) REFERENCES JOGO (CODIGO),
FOREIGN KEY(FK_EQUIPE_IDDAEQUIPE) REFERENCES EQUIPE(IDDAEQUIPE),
FOREIGN KEY(FK_COMPETICAO_CODIGO) REFERENCES COMPETICAO(CODIGO),
PRIMARY KEY(FK_JOGO_CODIGO,FK_EQUIPE_IDDAEQUIPE,FK_COMPETICAO_CODIGO)
);

#tabela de equipe
INSERT INTO equipe(idDaEquipe, nome ) values('5555', 'equipe1');
INSERT INTO equipe(idDaEquipe, nome ) values('5556', 'equipe2');
INSERT INTO equipe(idDaEquipe, nome ) values('5522', 'equipe3');

#tabela jogo

INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('FREE FIRE','2222','1','FF, VV, LOL');
INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('LEAGUE OF LEGENDS','2262','2','FF, VV, LOL');
INSERT INTO JOGO(nome,codigo ,categoria,jogosDisponoveis ) VALUES('VALORANT','2252','3','FF, VV, LOL');

#PREMIO

INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('444B','PIX','1');
INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('494B','MOEDA EM JOGO','2');
INSERT INTO PREMIO(codigo,descricao,tipo) VALUES('444AB','TRANSFERENCIA','1');

#COMPETIÇÃO

INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('2','505', 2023, 2024, 'ENDEREÇO TAL3');
INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('6','565', 07, 09, 'ENDEREÇO TAL1');
INSERT INTO COMPETICAO(premiação,codigo ,dataI,dataF,local)VALUES('2','557', 2025, 2026, 'ENDEREÇO TAL2');

#JOGADOR

INSERT INTO JOGADOR(nome,categoria,Nivel,Id, cidade ) VALUES('EMILLY', 'INICIANTE', 3, '66N', 'maceió');
INSERT INTO JOGADOR(nome,categoria,Nivel,Id, cidade ) VALUES('CLAUDIO', 'SUPREMO', 100, '06M', 'rio largo');
INSERT INTO JOGADOR(nome,categoria,Nivel,Id, cidade ) VALUES('DAVID', 'AVANÇADO', 60, '677', 'arapiraca');
INSERT INTO JOGADOR(nome,categoria,Nivel,Id, cidade ) VALUES('Adriely', 'intermediario', 50, '678', 'arapiraca');

#PremioJogoEquipeCompetição

INSERT INTO PremioJogoEquipeCompetição(FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES('444B', '2222', '5555', '505');
INSERT INTO PremioJogoEquipeCompetição(FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES('494B', '2262', '5556', '565');
INSERT INTO PremioJogoEquipeCompetição(FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES('444AB', '2252', '5522', '557');

#competicaoEquipeJogo

INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO,
FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES(50, '2222', '5555', '505');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO,
FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES(45, '2262', '5556', '565');
INSERT INTO competicaoEquipeJogo(TAXADEINSCRICAO, FK_JOGO_CODIGO,
FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO) VALUES(35, '2252', '5522', '557');




