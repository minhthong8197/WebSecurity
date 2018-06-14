$(document).ready(function(){
	$('.smobitrigger').smplmnu();
    $('.score-callback').raty({
		starOff    : Url+'img/star-off.png',
		starOn     : Url+'/img/star-on.png',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});

	var nowTemp = new Date();
	var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

	var checkin = $('#date-out').datepicker({
		onRender: function(date) {
			return date.valueOf() < now.valueOf() ? 'disabled' : '';
		}
	}).on('changeDate', function(ev) {
		if (ev.date.valueOf() > checkout.date.valueOf() || date.valueOf() < now.valueOf()) {
			var newDate = new Date(ev.date);
			newDate.setDate(newDate.getDate() + 2);
			checkout.setValue(newDate);
		}
		checkin.hide();
	}).data('datepicker');
	//
	var checkout = $('#date-in').datepicker({
		onRender: function(date) {
			return date.valueOf() < checkin.date.valueOf() ? 'disabled' : '';
			return date.valueOf() < now.valueOf() ? 'disabled' : '';
		},
        minDate: new Date,
		dateFormat: "dd-mm-yy",
		}).on('changeDate', function(ev) {
		checkout.hide();
	}).data('datepicker');
});


$(document).ready(function() {
 
  var sync1 = $("#sync1");
  var sync2 = $("#sync2");
 
  sync1.owlCarousel({
    singleItem : true,
    slideSpeed : 1000,
    navigation: true,
    pagination:false,
    navigation : false,
      pagination:false,
    afterAction : syncPosition,
    responsiveRefreshRate : 200,
  });
 
  sync2.owlCarousel({
    itemsDesktop      : [1199,5],
    itemsDesktopSmall     : [979,5],
    itemsTablet       : [768,5],
    itemsMobile       : [479,4],
    pagination:false,
    responsiveRefreshRate : 100,
    afterInit : function(el){
      el.find(".owl-item").eq(0).addClass("synced");
    }
  });
 
  function syncPosition(el){
    var current = this.currentItem;
    $("#sync2")
      .find(".owl-item")
      .removeClass("synced")
      .eq(current)
      .addClass("synced")
    if($("#sync2").data("owlCarousel") !== undefined){
      center(current)
    }
  }
 
  $("#sync2").on("click", ".owl-item", function(e){
    e.preventDefault();
    var number = $(this).data("owlItem");
    sync1.trigger("owl.goTo",number);
  });
  function center(number){
    var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
    var num = number;
    var found = false;
    for(var i in sync2visible){
      if(num === sync2visible[i]){
        var found = true;
      }
    }
 
    if(found===false){
      if(num>sync2visible[sync2visible.length-1]){
        sync2.trigger("owl.goTo", num - sync2visible.length+2)
      }else{
        if(num - 1 === -1){
          num = 0;
        }
        sync2.trigger("owl.goTo", num);
      }
    } else if(num === sync2visible[sync2visible.length-1]){
      sync2.trigger("owl.goTo", sync2visible[1])
    } else if(num === sync2visible[0]){
      sync2.trigger("owl.goTo", num-1)
    }
  }
});