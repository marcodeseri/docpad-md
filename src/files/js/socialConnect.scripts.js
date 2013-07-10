//tipTip Options
jQuery(document).ready(function($){ 
    $('.sc-icons a').tipTip({defaultPosition:"top"});
});

//Simple Modal Options
jQuery(document).ready(function($){
	$('.sc-icons a').contextmenu(function (e) {
		$('#sc-modalContent').modal({overlayClose:true,zIndex:99999});
		return false;
	});
});
