// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
// put all your jQuery goodness in here.
		var icons = {
			header: "ui-icon-circle-arrow-e",
			headerSelected: "ui-icon-circle-arrow-s"
		};
       
        $("#accordion").accordion({
	event: "mouseover",
	icons : icons
	});

	 $("#accordion-left").accordion({
        event: "mouseover",
        icons : icons
        });


	$(".sup_input").tokenInput("/suppliers.json", {
        crossDomain: false,
        prePopulate: $(this).data("pre"),
        tokenLimit: 1
      });


	$(".token_input").tokenInput('/items.json', {
	crossDomain: false,
	prePopulate: $(this).data('pre'),
	tokenValue: 'name',
	tokenLimit: 1
	});
	



});


