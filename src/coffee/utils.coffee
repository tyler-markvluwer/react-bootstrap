
class utils
	constructor: () ->

	print: (printable) ->
		console.log printable

	rand: (min, max) ->
		#TODO(cmtholm): Make this work exactly for min and max
		Math.floor((Math.random() * max) + min) % max + 1;

module.exports = new utils()