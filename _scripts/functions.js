// This function will interact with p elements that have a class "exclamation"
// to display and hide an exclamation point, on hover and mouse out, respectively.

$(document).ready(function(){
	$("a.navigation").hover(function() {
		$(this).append($("<span style='color:black'>!</span>"));
	},
	function(){
		$(this).find("span:last").remove();
	});
});
