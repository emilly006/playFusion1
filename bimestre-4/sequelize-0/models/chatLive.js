const { DataTypes } = require('sequelize');
const sequelize = require('../db');  

const ChatLive = sequelize.define('ChatLive', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  mensagem: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  foto: {
    type: DataTypes.STRING,
  },
  horario: {
    type: DataTypes.DATE,
  },
});

module.exports = ChatLive;