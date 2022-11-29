const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('exercicios', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nome: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    equipamento_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'equipamentos',
        key: 'id'
      }
    },
    dificuldade_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'dificuldades',
        key: 'id'
      }
    },
    musculo_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'musculos',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'exercicios',
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
        name: "musculo_id",
        using: "BTREE",
        fields: [
          { name: "musculo_id" },
        ]
      },
      {
        name: "equipamento_id",
        using: "BTREE",
        fields: [
          { name: "equipamento_id" },
        ]
      },
      {
        name: "dificuldade_id",
        using: "BTREE",
        fields: [
          { name: "dificuldade_id" },
        ]
      },
    ]
  });
};
