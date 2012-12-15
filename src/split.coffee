config = require "config"
constants = require "../constants"
db = require "./store/db"
photos = db.photos
photosets = db.photosets
users = db.users

done = -> console.log "BOOOYA!"

photosets.findOne {status:0}, (err,set) ->
    if err
        console.log(err)
        done()
        return
    if set
        console.log set
        users.findOne {_id:set.user_id},console.log
    else
        console.log(set)
        done()

# split = (done) ->
