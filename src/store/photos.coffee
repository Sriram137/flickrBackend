console.log "photos1"
db = require "./db"
console.log "photos2"
console.log(db)
console.log "photos3"
photos = db.collection 'photos'
console.log "photos4"

module.exports =
    photos : photos
