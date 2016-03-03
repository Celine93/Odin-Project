
var hoi = prompt("Hoeveel grids?")


$(document).ready(function() {
	blokje(hoi);
	kleuren();
	hoeveel();
	regenboog();
	randomKleur();
	regenboogkleur();
});

function blokje(x) {

	for (var i = 0; i < (x*x); i++) {
		$("<div>").addClass("grid").appendTo("#container");
	}
	var squareSize = (400 / x) - 2;
	$(".grid").width(squareSize);
	$(".grid").height(squareSize);

}


function kleuren() {
	$(".grid").mouseenter(function() {
		$(this).css("background-color", "yellow");
	});
}	

function hoeveel() {
	$("#hoeveel").click(function() {
		$(".grid").remove();
		var hoi = prompt("Hoeveel grids?");
		blokje(hoi);
		kleuren();
	});
}

function regenboog() {
	$(".grid").mouseenter(function() {
		$(this).css("background-color", randomKleur());
	});
}

function randomKleur() {
	var kleur = "#";
	var kleurMaken = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'A', 'B', 'C', 'D', 'E', 'F']
	for (var p = 0; p < 6; p++){
		kleur += kleurMaken[Math.floor(Math.random()*15)];
	}
	return kleur;
}

function regenboogkleur() {
	$("#randomkleur").click(function() {
		$(".grid").remove();
		var hoi = prompt("Hoeveel grids?");
		blokje(hoi);
		regenboog();
	});
}