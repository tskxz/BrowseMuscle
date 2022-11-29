const LocalStrategy = require('passport-local');
const passport = require('passport');
const bcrypt = require('bcrypt');

function initialize(passport, getUserByUsername, getUserById) {
    const authenticateUser = async(username, password, done) => {
        const user = await getUserByUsername(username);
        // console.log(user)
        if(!user){
            return done(null, false, {message: 'Utilizador não encontrado!'});
        }
        try {
            if(await bcrypt.compare(password, user.password)){
                return done(null, user)
            } else {
                return done(null, false, {message: 'Palavra-passe incorreta!'})
            }
        } catch (error) {
            return done(error);
        }
    }

    passport.use(new LocalStrategy({usernameField: 'username'}, authenticateUser))
    passport.serializeUser((user, done) => {done(null, user.id)})
    passport.deserializeUser(async (id, done) => {
        const user = await getUserById(id)
        return done(null, user)
    })
}

module.exports = initialize