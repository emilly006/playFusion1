
const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Premio = sequelize.define('Premio', {
  codigo: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  descricao: {
    type: DataTypes.STRING(32),
    allowNull: false,
  },
  tipo: {
    type: DataTypes.STRING(21),
  },
});

module.exports = Premio;
