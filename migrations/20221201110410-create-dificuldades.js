'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
     await queryInterface.createTable('Dificuldades', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      nome: {
        type: Sequelize.STRING
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
    })/*.then(function(){
      queryInterface.sequelize.query("insert into Dificuldades (nome, createdAt, updatedAt) values ('Iniciante', now(), now())")
      queryInterface.sequelize.query("insert into Dificuldades (nome, createdAt, updatedAt) values ('Intermediario', now(), now())")
      queryInterface.sequelize.query("insert into Dificuldades (nome, createdAt, updatedAt) values ('Avancado', now(), now())")
    });*/
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
     await queryInterface.dropTable('Dificuldades');
  }
};
