create database playFusion;
use playFusion;


CREATE TABLE Usuario(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(100),
email VARCHAR(100),
senha VARCHAR(50),
telefone VARCHAR(20),
dat_de_nasc DATE
);


create table equipe(
idDaEquipe varchar(15),
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
Id varchar (15) primary key,
cidade varchar (100)
);

create table inscricao(
fk_jogo_codigo varchar(30),
fk_competicao_codigo varchar (20),
quantidadeDeJogadores int,
categoria int,
telefone varchar(13),
fk_equipe_IdDaEquipe int,
id int auto_increment primary key,
foreign key(fk_jogo_codigo) references jogo(codigo),
foreign key(fk_equipe_idDaEquipe) references equipe(IdDaEquipe),
foreign key(fk_competicao_codigo) references competicao(codigo)
);

create table pagamento(
cartao varchar(50),
pix varchar(50) ,
fk_inscricao_id int auto_increment,
id int auto_increment primary key,
foreign key (fk_inscricao_id) references inscricao(id)
);


create table perfil(
Fk_jogador_categoria varchar (25),
fk_usuario_username varchar (100),
foto varchar(100),
id int auto_increment primary key,
foreign key (Fk_jogador_categoria) references jogador(categoria),
foreign key (fk_usuario_username) references usuario(username)
);

create table confi_notificacao(
ativarNotificacao boolean,
receberNotificacaoDasCompeticao boolean,
receberNotificacaoDasEquipesVencedoras boolean,
ReceberNotificacaoDePremios boolean
);

CREATE TABLE PremioJogoEquipeCompeticao(
FK_PREMIO_CODIGO VARCHAR(20),
FK_JOGO_CODIGO int,
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
FK_JOGO_CODIGO int,
FK_EQUIPE_IDDAEQUIPE VARCHAR(15),
FK_COMPETICAO_CODIGO VARCHAR(20),
FOREIGN KEY(FK_JOGO_CODIGO) REFERENCES JOGO (CODIGO),
FOREIGN KEY(FK_EQUIPE_IDDAEQUIPE) REFERENCES EQUIPE(IDDAEQUIPE),
FOREIGN KEY(FK_COMPETICAO_CODIGO) REFERENCES COMPETICAO(CODIGO),
PRIMARY KEY(FK_JOGO_CODIGO,FK_EQUIPE_IDDAEQUIPE,FK_COMPETICAO_CODIGO)
);
