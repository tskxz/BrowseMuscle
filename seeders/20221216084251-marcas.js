"use strict";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
     */
    await queryInterface.bulkInsert("Marcas", [
      {
        nome: "LIDL",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Prozis",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Pingo Doce",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Continente",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Auchan",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "MyProtein",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Zumub",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
      {
        nome: "Mercadona",
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ]);
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  },
};
