const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('Utilizadores', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    username: {
      type: DataTypes.STRING(25),
      allowNull: false,
      unique: "username"
    },
    primeiro_nome: {
      type: DataTypes.STRING(25),
      allowNull: false
    },
    ultimo_nome: {
      type: DataTypes.STRING(25),
      allowNull: false
    },
    email: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    num_telemovel: {
      type: DataTypes.STRING(25),
      allowNull: true
    },
    password: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    id_cargo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 1,
      references: {
        model: 'cargos',
        key: 'id'
      }
    },
    descricao: {
      type: DataTypes.TEXT,
      allowNull: true
    },
    treinos_concluidos: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0
    }
  }, {
    sequelize,
    tableName: 'Utilizadores',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "username",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "username" },
        ]
      },
      {
        name: "id_cargo",
        using: "BTREE",
        fields: [
          { name: "id_cargo" },
        ]
      },
    ]
  });
};
