module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			mul:
				files:
					"mul.js": "mul.coffee"
				options:
					bare: true
					sourceMap: true
			test:
				files:
					"mul.test.js": "mul.test.coffee"
				options:
					bare: true
					sourceMap: true
		exec:
			test:
				command: "mocha mul.test.js -R spec"
		watch:
			files: ["*.coffee"]
			tasks: ["coffee", "exec:test"]

		grunt.loadNpmTasks "grunt-contrib-coffee"
		grunt.loadNpmTasks "grunt-contrib-watch"
		grunt.loadNpmTasks "grunt-exec"