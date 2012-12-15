db = require "./store/db"

db.boot (err,data) ->
    if err
        console.log "Cannot connect to database due to ",err
        return
    else
        console.log("DF")
        split_start = require "./split"
        # split_start.boot()
