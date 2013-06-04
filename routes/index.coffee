class Routes
	index: (req, res)->
		res.render "index"

module.exports = new Routes()