var DataTypes = require("sequelize").DataTypes;
var _SequelizeMeta = require("./SequelizeMeta");
var _TipoExercicios = require("./TipoExercicios");
var _alimentos = require("./Alimentos");
var _cargos = require("./cargos");
var _dificuldades = require("./Dificuldades");
var _equipamentos = require("./Equipamentos");
var _exercicios = require("./Exercicios");
var _musculos = require("./Musculos");
var _utilizadores = require("./Utilizadores");
var _marca = require("./marca")

function initModels(sequelize) {
  var SequelizeMeta = _SequelizeMeta(sequelize, DataTypes);
  var TipoExercicios = _TipoExercicios(sequelize, DataTypes);
  var Alimentos = _alimentos(sequelize, DataTypes);
  var cargos = _cargos(sequelize, DataTypes);
  var Dificuldades = _dificuldades(sequelize, DataTypes);
  var Equipamentos = _equipamentos(sequelize, DataTypes);
  var Exercicios = _exercicios(sequelize, DataTypes);
  var Musculos = _musculos(sequelize, DataTypes);
  var Utilizadores = _utilizadores(sequelize, DataTypes);
  var marca = _marca(sequelize, DataTypes);

  Utilizadores.belongsTo(cargos, { as: "id_cargo_cargo", foreignKey: "id_cargo"});
  cargos.hasMany(Utilizadores, { as: "Utilizadores", foreignKey: "id_cargo"});
  Exercicios.belongsTo(Dificuldades, { as: "dificuldade", foreignKey: "dificuldade_id"});
  Dificuldades.hasMany(Exercicios, { as: "Exercicios", foreignKey: "dificuldade_id"});
  Exercicios.belongsTo(Equipamentos, { as: "equipamento", foreignKey: "equipamento_id"});
  Equipamentos.hasMany(Exercicios, { as: "Exercicios", foreignKey: "equipamento_id"});
  Exercicios.belongsTo(Musculos, { as: "musculo", foreignKey: "musculo_id"});
  Musculos.hasMany(Exercicios, { as: "Exercicios", foreignKey: "musculo_id"});
  Alimentos.belongsTo(marca, {as: 'marca', foreignKey: "id_marca"})
  marca.hasMany(Alimentos, {as: "Alimentos", foreignKey: "id_marca"})

  return {
    SequelizeMeta,
    TipoExercicios,
    Alimentos,
    cargos,
    Dificuldades,
    Equipamentos,
    Exercicios,
    Musculos,
    Utilizadores,
    marca
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
