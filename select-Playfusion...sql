#selects:

#premio por tipo:1
SELECT tipo, COUNT(codigo) AS quantidade_premios 
FROM PREMIO GROUP BY tipo;

#qual o jogador com o maior e menor nivel? 2
select max(nivel), min(nivel)
from jogador;

# rank dos jogadores/ equipe(top3)3
SELECT nome,nivel FROM JOGADOR
ORDER BY nivel DESC LIMIT 3;

#quantos jogadores de cada cidade tem?4
SELECT cidade, COUNT(*) AS total_jogadores FROM JOGADOR GROUP BY cidade;

#jogos disponiveis em cada categoria 5
SELECT nome, categoria, jogosDisponoveis FROM JOGO WHERE categoria = 'iniciantes';

#  jogos disponiveis e categoria 6
SELECT nome, categoria, jogosDisponoveis FROM JOGO;

#exibir competiçoes que ocorrem em um ano especifico 7
SELECT dataI, dataF FROM COMPETICAO WHERE dataI = 2024 AND dataF = 2022;

# listar todos os jogadores com um nível superior ao valor 50 8:
SELECT nome, nivel FROM JOGADOR WHERE nivel > 50;

#quantas equipes estão cadastradas na plataforma 9
select idDaequipe, count(*) as quantidade_equipe from equipe where idDaequipe;

#competicao mais recente 10
SELECT codigo, local, dataI, dataF
FROM COMPETICAO ORDER BY dataF DESC LIMIT 1;
