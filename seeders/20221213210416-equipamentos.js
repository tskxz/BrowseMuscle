'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */

    await queryInterface.bulkInsert('Equipamentos', [
    {
      nome: 'Barra',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Halteres',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Maquina',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Cabos',
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      nome: 'Peso Corporal',
      createdAt: new Date(),
      updatedAt: new Date()
    },

  ])
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};
