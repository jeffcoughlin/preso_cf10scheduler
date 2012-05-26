$(document).ready(function(){
	
	/******************************
	 * Logs (read/reset/pauseall/resumeall)
	 ******************************/

	// Read LOG
	if ($("#logview").length) {
		setInterval(function(){
	
			// ajax request to get log data
			$.ajax({
				method: "get",
				url: "demos/helper.cfc?method=readlog&returnformat=plain",
				dataType: "text",
				success: function (data, status, req) {
					$("#logview").html("<pre>" + data + "</pre>");
					$("#logview").scrollTop($("#logview").prop("scrollHeight"));
				}
			});
		},1000);
	}

	// Reset Log (click handler)				
	$("#cmdResetLog").click(function(event){
		$.ajax({
			url: "demos/helper.cfc?method=resetlog&returnformat=plain",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {
				$("#logview").html("");
			}
		});
	});

	// Pause All Tasks
	$("#cmdPauseAll").click(function(event){
		$.ajax({
			url: "demos/pauseall.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Resume All Tasks
	$("#cmdResumeAll").click(function(event){
		$.ajax({
			url: "demos/resumeall.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	/******************************
	 * Demo 2
	 ******************************/

	// Create Task
	$("#cmdDemo2Create").click(function(event){
		$.ajax({
			url: "demos/demo2/create.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	/******************************
	 * Demo 3
	 ******************************/

	// Create Tasks
	$("#cmdDemo3Create").click(function(event){
		$.ajax({
			url: "demos/demo3/create.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Pause Tasks
	$("#cmdDemo3Pause").click(function(event){
		$.ajax({
			url: "demos/demo3/pause.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Resume Tasks
	$("#cmdDemo3Resume").click(function(event){
		$.ajax({
			url: "demos/demo3/resume.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Delete Tasks
	$("#cmdDemo3Delete").click(function(event){
		$.ajax({
			url: "demos/demo3/delete.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	/******************************
	 * Demo 4
	 ******************************/

	// Create Tasks
	$("#cmdDemo4Create").click(function(event){
		$.ajax({
			url: "demos/demo4/create.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Run Tasks
	$("#cmdDemo4Run").click(function(event){
		$.ajax({
			url: "demos/demo4/run.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Pause Tasks
	$("#cmdDemo4Pause").click(function(event){
		$.ajax({
			url: "demos/demo4/pause.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Resume Tasks
	$("#cmdDemo4Resume").click(function(event){
		$.ajax({
			url: "demos/demo4/resume.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	/******************************
	 * Demo 6
	 ******************************/

	// Create Tasks
	$("#cmdDemo6Create").click(function(event){
		$.ajax({
			url: "demos/demo6/create.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Run Tasks
	$("#cmdDemo6Run").click(function(event){
		$.ajax({
			url: "demos/demo6/run.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	/******************************
	 * Demo 7
	 ******************************/

	// Create Tasks
	$("#cmdDemo7Create").click(function(event){
		$.ajax({
			url: "demos/demo7/create.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Read CPU
	if ($("#gauge").length) {
  		setInterval(function(){
  		// ajax request to get cpu data
			$.ajax({
				method: "get",
				url: "demos/helper.cfc?method=readcpu&returnformat=plain",
				dataType: "text",
				success: function(data, status, req){
				
					// Set the property on the gauge
					//$("#cpu").val(data);
					$("#gauge").wijlineargauge("option", {
						value: data
					});
					
				}
			});
		}, 1000);
	}
			
	$("#gauge").wijlineargauge({
		orientation: "vertical",
          width: 120,
          height: 400,
          value: 70,
          max: 100,
          min: 0, 
          animation: {
              enabled: true,
              duration: 400,
              easing: ">"
          },
          labels: {
              style: {
                  fill: "#1E395B",
                  "font-size": 12,
                  "font-weight": "800"
              }
          },
          tickMajor: {
              position: "inside",
              offset: -11,
              interval: 20,
              factor: 12,
              style: {
                  fill: "#E395B",
                  stroke: "none",
                  width: 2
              }
          },
          tickMinor: {
              position: "inside",
              offset: -11,
              visible: true,
              interval: 4,
              factor: 10,
              style: {
                  fill: "#1E395B",
                  stroke: "none",
                  width: 1
              }
          },
          pointer: {
              shape: "rect",
              length: 0.6,
              style: {
                  fill: "#1E395B",
                  stroke: "#7BA0CC",
                  "stroke-width": 1,
                  opacity: 1
              }
          },
          face: {
              style: {
                  fill: "270-#FFFFFF-#D9E3F0",
                  stroke: "#7BA0CC",
                  "stroke-width": 2
              }
          },
          ranges: [{
              startValue: 0,
              endValue: 100,
              startDistance: 0.85, //A ratio value determine the location of the range at start value.
              endDistance: 0.85, //A ratio value determine the location of the range at end value.
              startWidth: 0.5,
              endWidth: 0.5,
              style: {
                  fill: "90-#3DA1D8-#3A6CAC",
                  opacity: 1,
                  stroke: "none"
              }
          }]
      });

	// Click Start Loop Button
	$("#cmdStartLoop").click(function(event){
		$.ajax({
			url: "demos/helper.cfc?method=startloop&returnformat=plain",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {
				//$("#cmdStartLoop").attr("disabled",true);
				//$("#cmdStopLoop").attr("disabled",false);
			}
		});
		$("#cmdStartLoop").attr("disabled",true);
		$("#cmdStopLoop").attr("disabled",false);
		$.ajax({
			url: "demos/demo7/pause.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});
	
	// Click Stop Button
	$("#cmdStopLoop").click(function(event){
		$.ajax({
			url: "demos/helper.cfc?method=stoploop&returnformat=plain",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {
				//$("#cmdStartLoop").attr("disabled",false);
				//$("#cmdStopLoop").attr("disabled",true);
			}
		});
		$("#cmdStartLoop").attr("disabled",false);
		$("#cmdStopLoop").attr("disabled",true);
		$.ajax({
			url: "demos/demo7/resume.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Pause Tasks
	$("#cmdDemo7Pause").click(function(event){
		$.ajax({
			url: "demos/demo7/pause.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

	// Resume Tasks
	$("#cmdDemo7Resume").click(function(event){
		$.ajax({
			url: "demos/demo7/resume.cfm",
			method: "get",
			dataType: "text",
			success: function (data, status, req) {}
		});
	});

});


!function ($) {

  $(function(){

    // fix sub nav on scroll
    var $win = $(window)
      , $nav = $('.subnav')
	  , navHeight = $('.navbar').first().height()
      , navTop = $('.subnav').length && $('.subnav').offset().top - navHeight
      , isFixed = 0

    processScroll()

    $win.on('scroll', processScroll)

    function processScroll() {
      var i, scrollTop = $win.scrollTop()
      if (scrollTop >= navTop && !isFixed) {
        isFixed = 1
        $nav.addClass('subnav-fixed')
      } else if (scrollTop <= navTop && isFixed) {
        isFixed = 0
        $nav.removeClass('subnav-fixed')
      }
    }

  })

}(window.jQuery)