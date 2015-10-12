

	var svg = d3.select("body").append("svg").attr("width",600).attr("height",500);

	//var data = [ 0, 1, 2, 3, ,4, 5, 6, 7, 8];

	var numberLine = d3.scale.linear().domain([0, 8]).range([100,500]);
	var xAxis = d3.svg.axis().scale(numberLine).orient("bottom").ticks(7);

	svg.append("g").attr("class", "axis").call(xAxis);
