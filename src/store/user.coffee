console.log "user1"
db = require "./db".db

console.log "user2"
user = db.collection 'user'

console.log "user3"
module.exports =
    user : user
