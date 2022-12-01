'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
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
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
    await queryInterface.dropTable('Exercicios');
  }
};
