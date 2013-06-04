http = require "http"
express = require "express"
routes = require "./routes"
path = require "path"

app = express()

server = http.createServer app

app.configure ->
	app.set "port", process.env.PORT || 3000
	app.set "views", __dirname + '/views'
	app.set "view engine", "jade"
	app.use app.router
	app.use express.favicon()
	app.use express.logger "dev"
	app.use require('stylus').middleware({ src: __dirname + '/public' })
	app.use express.static(path.join __dirname, "public")

app.get "/", routes.index

server.listen app.get("port"), ->
	console.log "Listening port at: #{app.get("port")}"