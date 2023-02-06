'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Exercicios', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      nome: {
        type: Sequelize.STRING
      },
      equipamento_id: {
        type: Sequelize.INTEGER,
        foreignKey: true,
        references: {
          model: 'Equipamentos',
          key: 'id'
        }
      },
      dificuldade_id: {
        type: Sequelize.INTEGER,
        foreignKey: true,
        references: {
          model: 'Dificuldades',
          key: 'id'
        }
      },
      musculo_id: {
        type: Sequelize.INTEGER,
        foreignKey: true,
        references: {
          model: 'Musculos',
          key: 'id'
        }
      },
      descricao: {
        type: Sequelize.TEXT('long'),
        allowNull: true,
      },
      video: {
        type: Sequelize.STRING(100),
        allowNull: true,
      },
      createdAt: {
        allowNull: false,
        type: 'TIMESTAMP',
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
      },
      updatedAt: {
        allowNull: false,
        type: 'TIMESTAMP',
        defaultValue: Sequelize.literal('CURRENT_TIMESTAMP'),
      }
    });
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Exercicios');
  }
};
