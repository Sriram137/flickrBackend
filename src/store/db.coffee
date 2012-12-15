mongoskin = require "mongoskin"

db = mongoskin.db "localhost:27017/flickr2facebook_development" , {strict:true,safe:true}
module.exports =
    boot: (cb) ->
        db.open (err) ->
            module.exports['photos'] = db.collection('photos')
            module.exports['users'] = db.collection('users')
            module.exports['photosets'] = db.collection('photosets')
            cb(err)
    db: db
