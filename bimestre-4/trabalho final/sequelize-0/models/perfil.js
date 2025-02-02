const Perfil = sequelize.define("Perfil", {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    foto: {
      type: DataTypes.STRING(100),
    },
  });
  
  module.exports = Perfil;