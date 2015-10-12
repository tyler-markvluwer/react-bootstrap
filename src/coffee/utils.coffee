
class utils
	constructor: () ->

	print: (printable) ->
		console.log printable

	#will generate a random number between min (inclusive) and max (inclusive)
	rand: (min, max) ->
		Math.floor(Math.random() * (max - min + 1)) + min;

module.exports = new utils()