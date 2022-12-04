const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('Exercicios', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    nome: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    equipamento_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'Equipamentos',
        key: 'id'
      }
    },
    dificuldade_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'Dificuldades',
        key: 'id'
      }
    },
    musculo_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      references: {
        model: 'Musculos',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'Exercicios',
    timestamps: true,
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
      {
        name: "musculo_id",
        using: "BTREE",
        fields: [
          { name: "musculo_id" },
        ]
      },
    ]
  });
};
