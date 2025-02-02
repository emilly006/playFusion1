// src/models/EscolherCompeticao.js
const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Jogo = require('../Jogo'); 

const EscolherCompeticao = sequelize.define('EscolherCompeticao', {
  fk_jogo_codigo: {
    type: DataTypes.INTEGER,
    references: {
      model: Jogo, 
      key: 'codigo', 
  },
  foto: {
    type: DataTypes.STRING(100),
    allowNull: true, 
  },
  descricao: {
    type: DataTypes.STRING(20),
    allowNull: true, 
  },
}});


EscolherCompeticao.belongsTo(Jogo, {
  foreignKey: 'fk_jogo_codigo',
  as: 'jogo', 
});

module.exports = EscolherCompeticao;
