// Função para verificar o cargo
function authRole(role) {
  return (req, res, next) => {
    if (req.user.id_cargo !== role) {
      res.status(401);
      return res.send("Not allowed!");
    }
    next();
  };
}

module.exports = {
  authRole,
};
