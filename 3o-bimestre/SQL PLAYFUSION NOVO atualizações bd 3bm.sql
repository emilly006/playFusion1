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
create table chat_live (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_live_streams_id INT NOT NULL,
    fk_usuarioRegistro_id INT NOT NULL,
    mensagem TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    foto VARCHAR(100),
    horario timestamp,
    FOREIGN KEY (fk_live_streams_id) REFERENCES live_streams(id),
    FOREIGN KEY (fk_usuarioRegistro_id) REFERENCES usuarioRegistro(id)
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

CREATE TABLE criarCompeticao (
    fk_jogo_codigo INT,
    nomeDaCompeticao VARCHAR(100),
    categoriaDosJogadores INT,
    codigoDaCompeticao INT AUTO_INCREMENT PRIMARY KEY,
    valorDoPremio INT,
    localDaCompeticao VARCHAR(100),
    data DATE,
    FOREIGN KEY(fk_jogo_codigo) REFERENCES jogo(codigo)
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
cartao varchar(100),
pix varchar(100) ,
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
