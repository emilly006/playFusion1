// src/models/UsuarioRegistro.js
const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const UsuarioRegistro = sequelize.define('UsuarioRegistro', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  username: {
    type: DataTypes.STRING(100),
    allowNull: false,
    unique: true, 
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false,
    unique: true,
  },
  senha: {
    type: DataTypes.STRING(50),
    allowNull: false,
    unique: true,
  },
  telefone: {
    type: DataTypes.STRING(20),
    allowNull: false,
    unique: true,
  },
  dataDeNascimento: {
    type: DataTypes.DATEONLY,
    allowNull: false, 
  },
});

module.exports = UsuarioRegistro;
