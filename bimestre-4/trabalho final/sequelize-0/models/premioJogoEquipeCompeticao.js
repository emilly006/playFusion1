const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const PremioJogoEquipeCompeticao = sequelize.define('PremioJogoEquipeCompeticao', {
  FK_premio_codigo: {
    type: DataTypes.INTEGER,
    references: {
      model: 'Premios',
      key: 'codigo',
    },
  },
  FK_jogo_codigo: {
    type: DataTypes.INTEGER,
    references: {
      model: 'Jogos',
      key: 'codigo',
    },
  },
  FK_equipe_idDaEquipe: {
    type: DataTypes.INTEGER,
    references: {
      model: 'Equipes',
      key: 'idDaEquipe',
    },
  },
  FK_competicao_codigo: {
    type: DataTypes.INTEGER,
    references: {
      model: 'Competicoes',
      key: 'codigo',
    },
  },
}, {
  primaryKey: ['FK_premio_codigo', 'FK_jogo_codigo', 'FK_equipe_idDaEquipe', 'FK_competicao_codigo'],
});

module.exports = PremioJogoEquipeCompeticao;
