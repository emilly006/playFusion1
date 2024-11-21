create database playFusion;
use playFusion;


CREATE TABLE usuarioRegistro(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(100) not null unique,
email VARCHAR(100) not null,
senha VARCHAR(50) not null unique,
telefone VARCHAR(20) not null unique,
dat_de_nasc DATE not null
);


create table equipe(
idDaEquipe int auto_increment primary key,
nome varchar(100) not null 
);

create table jogo(
nome varchar(30) not null,
codigo int auto_increment primary key,
categoria varchar(30) not null,
jogosDisponiveis varchar(30),
foto varchar(100),
descricao varchar(100)
);

create table live_streams(
id int auto_increment primary key,
foto varchar(100),
fk_usuarioRegistro_id int,
fk_jogo_codigo int,
nome varchar(100),
descrição varchar(100),
foreign key (fk_usuarioRegistro_id) references usuarioRegistro(id),
foreign key (fk_jogo_codigo) references jogo(codigo)
);

create table chat(
fk_usuarioRegistro_id int,
id int auto_increment primary key,
ultima_mensagem varchar(100),
foto varchar (100),
quantidadeDeMensagens int,
horario timestamp,
foreign key (fk_usuarioRegistro_id) references usuarioRegistro(id)
);

create table premio(
codigo int auto_increment primary key,
descricao varchar (32) not null,
tipo varchar(21)
);

create table competicao(
taxaDeinscricao int,
premiacao varchar (30),
codigo int auto_increment primary key,
dataI date not null,
dataF date not null,
local varchar (50),
descricao varchar(100),
classificacao_indicativa varchar(50),
fk_premio_codigo int,
fk_jogo_codigo int,
foreign key (fk_jogo_codigo) references jogo(codigo),
foreign key (fk_premio_codigo) references premio(codigo)
);

create table inscricao(
fk_jogo_codigo int not null,
fk_competicao_codigo int not null,
quantidadeDeJogadores int not null,
categoria int not null,
fk_equipe_idDaEquipe int not null,
id int auto_increment primary key,
foreign key(fk_jogo_codigo) references jogo(codigo),
foreign key(fk_competicao_codigo) references competicao(codigo),
foreign key(fk_equipe_idDaEquipe) references equipe(idDaEquipe)
);

create table criarCompteticao(
fk_jogo_codigo int,
nomeDaCompeticao varchar(100),
categoriaDosJogadores int,
codigoDaCompeticao int auto_increment primary key,
valorDoPremio int,
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
categoria int,
nivel int,
Id int primary key,
cidade varchar (100)
);

create table pagamento(
cartao varchar(50),
pix varchar(50) ,
fk_inscricao_id int not null,
id int auto_increment primary key,
foreign key (fk_inscricao_id) references inscricao(id)
);

create table perfil(
Fk_jogador_id int,
fk_usuarioRegistro_id int,
foto varchar(100),
id int auto_increment primary key,
foreign key (Fk_jogador_id) references jogador(id),
foreign key (fk_usuarioregistro_id) references usuarioRegistro(id)
);

create table confi_notificacao(
id int auto_increment primary key,
ativarNotificacao bool not null default false,
receberNotificacaoDasCompeticao bool not null default false,
receberNotificacaoDasEquipesVencedoras bool not null default false,
ReceberNotificacaoDePremios bool not null default false
);

CREATE TABLE Suporte (
    id INT AUTO_INCREMENT PRIMARY KEY, 
	FK_usuarioRegistro_id int,         
    duvida TEXT,  
    status_atendimento VARCHAR(50),
    foreign key(fk_usuarioRegistro_id) references usuarioRegistro (id)
);


CREATE TABLE PremioJogoEquipeCompeticao(
FK_premio_codigo int,
FK_jogo_codigo int,
FK_equipe_idDaEquipe int,
FK_competicao_codigo int,
FOREIGN KEY(FK_premio_codigo) REFERENCES premio (codigo),
FOREIGN KEY(FK_jogo_codigo) REFERENCES jogo (codigo),
FOREIGN KEY(FK_equipe_idDaEquipe) REFERENCES equipe(idDaEquipe),
FOREIGN KEY(FK_competicao_codigo ) REFERENCES competicao(codigo),
PRIMARY KEY(FK_premio_codigo, FK_jogo_codigo, FK_equipe_idDaEquipe, FK_competicao_codigo)
);

create table competicaoEquipeJogo(
FK_jogo_codigo int not null,
FK_equipe_idDaEquipe int not null,
FK_competicao_codigo int not null,
FOREIGN KEY(FK_jogo_codigo) REFERENCES jogo(codigo),
FOREIGN KEY(FK_equipe_idDaEquipe) REFERENCES equipe(idDaEquipe),
FOREIGN KEY(FK_competicao_codigo) REFERENCES competicao(codigo),
PRIMARY KEY(FK_jogo_codigo,FK_equipe_idDaEquipe,FK_competicao_codigo)
);

#tabela cadastro
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (222, 'betohxz9', 'betohxz123@gmail.com', '526488bet', '(82) 99821.2691', '2006-04-26');
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (333, 'thomas', 'thomas2024@gmail.com', 'thomas123', '(82) 90000.0000', '2009-04-22');
insert into usuarioRegistro (id, username , email , senha , telefone , dat_de_nasc) values (444, 'emy', 'emiig20@gmail.com', 'emig00', '(82) 99410.01130', '2008-06-01');

#tabela equipe
INSERT INTO equipe(idDaEquipe, nome) VALUES(555, 'equipe1');
INSERT INTO equipe(idDaEquipe, nome) VALUES(999, 'equipe2');
INSERT INTO equipe(idDaEquipe, nome) VALUES(222, 'equipe3');

#tabela jogo
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('FREE FIRE', 254, '1', 'FF', '', 'Já disponivel');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('LEAGUE OF LEGENDS', 002, '2', '',' VV', 'ja disponivel');
INSERT INTO jogo(nome, codigo, categoria, jogosDisponiveis, foto, descricao) VALUES('VALORANT', 236, '3', ' LOL', '', 'ja disponivel');

#tabela live_streams
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (589, 222, 254, '', 'Ao vivo free fire', '250mil participantes');
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (698, 333, 002, '','Ao vivo LOL', '200mil participantes');
INSERT INTO live_streams (id, fk_usuarioRegistro_id, fk_jogo_codigo, foto, nome, descrição)VALUES (445, 444, 236, '', 'Ao vivo valorante', '100mil participantes');

#chat
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadedemensagens, foto, horario)values (222,'Não sei, será que a pain ganha hoje?', 1 ,'', '2024-11-21 07:10:40') ;
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadeDeMensagens, foto, horario)values (333, 'vai ser tranquilo', 1, '', '2024-11-21 10:50:55') ;
insert into chat(fk_usuarioRegistro_id, ultima_mensagem, quantidadedemensagens, foto, horario)values (444, 'VRK ganha suave',  4,'', '2024-11-21 9:30:32') ;

#tabela prêmio
INSERT INTO premio(codigo, descricao, tipo) VALUES(254, 'PIX', '1');
INSERT INTO premio(codigo, descricao, tipo) VALUES(694, 'MOEDA EM JOGO', '2');
INSERT INTO premio(codigo, descricao, tipo) VALUES(024, 'Credito no app', '3');

#tabela competicao
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local, descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa) 
VALUES('30','credito no jogo', 650, '2023-12-01', '2023-12-02', 'ENDEREÇO TAL3','Jogo fps', 254, 254, '16');
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local,descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa) 
VALUES('30','pix', 697, '2023-11-26', '2023-11-27', 'ENDEREÇO TAL4', 'Jogo moba', 694, 002,'12');
INSERT INTO competicao(taxaDeinscricao, premiacao, codigo, dataI, dataF, local,descricao, fk_premio_codigo, fk_jogo_codigo, classificacao_indicativa)
VALUES('40' ,'credito na plata', 698, '2023-11-21', '2023-11-22', 'ENDEREÇO TAL5', 'jogo moba', 024, 236, '14');

#inscricao
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(254,650, 50, 3, 555,698);
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(002,697, 100, 2, 999, 6965);
insert into inscricao (fk_jogo_codigo, fk_competicao_codigo, quantidadeDeJogadores, categoria, fk_equipe_idDaEquipe, id) 
values(236,698,20, 10, 222,4587);

#criar_competiçãoptimi
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(254, 'competição 1', 3, 567, 300, 'competição 100% online', 2024-11-20);
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(002, 'competição 2', 5, 5617, 350, 'competição 100% online', 2024-11-22);
insert into criarCompeticao(fk_jogo_codigo, nomeDaCompeticao, categoriaDosJogadores, codigoDaCompeticao, valorDoPremio, localDaCompeticao, data)
values(236, 'competição 3', 6, 5657, 100, 'casa de eventos rua 3', 2024-11-25);

#escolherCompeticao
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(254, '', 'competição 5x5');
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(002, '', 'competição 1x1');
insert into escolherCompeticao(fk_jogo_codigo, foto, descricao) values(236, '', 'competição 4x4');

#pagamento
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix', 100);
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix', 200);
insert into pagamento(cartao, pix, fk_inscricao_id, id) values('Número do cartão, Data de nascimento, cod de segurança, Nome do titular do cartão','pague com pix', 360);

#perfil
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(66,222, '', 98753);
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(55,333, '', 74841);
insert into perfil(fk_jogador_id, fk_usuarioRegistro_id, foto, id) values(677,444, '',5487);

#confinotificacao
INSERT INTO confi_notificacao (ativarNotificacao,receberNotificacaoDasCompeticao,receberNotificacaoDasEquipesVencedoras,receberNotificacaoDePremios) 
VALUES (TRUE,FALSE, TRUE,FALSE);

#suporte
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(5998,222, 'não consigo fazer(...)','em analise');
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(55598,333, 'não consigo fazer(...)','em analise');
insert into suporte(id, fk_usuarioRegistro_id, duvida, status_atendimento) values(898,444, 'não consigo fazer(...)','em analise');


#tabela jogador
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('EMILLY', 3, 3, 66, 'maceió');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('CLAUDIO', 1, 75, 55, 'rio largo');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('DAVID', 5, 60, 677, 'arapiraca');
INSERT INTO jogador(nome, categoria, nivel, id, cidade) VALUES('Adriely', 4, 50, 500, 'arapiraca');

#tabela PremioJogoEquipeCompeticao
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (254, 254, 555, 650);
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (694, 002, 999, 697);
INSERT INTO PremioJogoEquipeCompeticao (FK_PREMIO_CODIGO, FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES (024, 236, 222, 698);

#competicaoEquipeJogos

INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(254, '555', '650');
INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(002, '999', '697');
INSERT INTO competicaoEquipeJogo(FK_JOGO_CODIGO, FK_EQUIPE_IDDAEQUIPE, FK_COMPETICAO_CODIGO)VALUES(236, '222', '698');