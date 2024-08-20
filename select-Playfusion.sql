#selects 

# 1 quantos são os jogos?
select count(*) as TotalDejogos from jogo;

#2 quantos jogadores de cada cidade tem?
SELECT cidade, COUNT(*) AS total_jogadores FROM JOGADOR GROUP BY cidade;

# 3 jogos disponiveis em cada categoria

SELECT nome, codigo, categoria, jogosDisponoveis FROM JOGO WHERE categoria = 'iniciantes';

#4 lista de jogos  
SELECT nome, codigo, categoria, jogosDisponoveis
FROM JOGO;

#5 exibir competiçoes que ocorrem em um ano especifico
SELECT dataI, dataF FROM COMPETICAO WHERE dataI <= 2024 AND dataF >= 2022;

#6 Encontrar todos os jogadores com um nível acima de um determinado valor Para listar todos os jogadores com um nível superior a um valor específico:
SELECT nome, nivel FROM JOGADOR WHERE nivel > 50;

#Listar todos os jogos e as equipes que participaram dessas competições