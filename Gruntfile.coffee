module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			app:
				files:
					"app.js": "app.coffee"
				options:
					bare: true
					sourceMap: true
			routes:
				files:
					"routes/index.js": "routes/index.coffee"
				options:
					bare: true
					sourceMap: true
		watch:
			files: ["*.coffee", "./**/*.coffee"]
			tasks: "coffee"

		grunt.loadNpmTasks "grunt-contrib-coffee"
		grunt.loadNpmTasks "grunt-contrib-watch"