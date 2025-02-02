// src/models/ConfiNotificacao.js
const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const ConfiNotificacao = sequelize.define('ConfiNotificacao', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  ativarNotificacao: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false,  },
  receberNotificacaoDasCompeticao: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false,
  },
  receberNotificacaoDasEquipesVencedoras: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false,  
  },
  receberNotificacaoDePremios: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false,
  },
});

ConfiNotificacao.belongsTo(Usuario, {
  foreignKey: 'fk_usuarioRegistro_id',
  as: 'usuario', 
});

module.exports = ConfiNotificacao;
