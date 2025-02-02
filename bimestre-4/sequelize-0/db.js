
const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(
  'playFusion', 
  'root',     
  '24042006',   
  {
    host: 'localhost', 
    port: 3306,         
    dialect: 'mysql',   
  }
);
