const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Suporte = sequelize.define('Suporte', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  duvida: {
    type: DataTypes.TEXT,
  },
  statusAtendimento: {
    type: DataTypes.STRING(50),
  },
});

module.exports = Suporte;
