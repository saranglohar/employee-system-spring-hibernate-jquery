$(document).ready(function(){
	var count=0;
	var arr=[];
	$('#employeetable').delegate('#checkbox', 'click', function() {			  
		var check = $(this).is(":checked");
		if(check==true) {	
			arr[count]=($(this).parent().siblings().first().text());				
			count++; 				  
		}
		else {
			var number=$(this).parent().siblings().first().text();				
		    var i = arr.indexOf(number);
			if(i != -1) 
				arr.splice(i, 1);				
			count--;				  	
		}
	});
		
	$("#deleteButton").click(function() {
		if(arr=='')
		{
			bootbox.dialog({
				  message: "Please select record first",				
				  buttons: {
				    success: {
				      label: "Ok!",
				      className: "btn-default bootbox-btn",
				   
				    }
				  }			
			}).css("margin-top", "300px");
		}
		else{		
						
		    bootbox.confirm("Are you sure want to delete Employees : "+arr,  function(result) {
			    if(result==true)	{ 
			    	var i;
				    	for(i=0;i<arr.length;i++)	{
				    		$.get("delete", {"employee_number":arr[i]}, function(responseText) { 
								location.reload();
							});
				    	}
				   }
			}).css("margin-top", "300px");
		}
	  });		  
	/*--------------------------------------------------Multiple Checkbox Selection----------------------------------------*/	
		/*------------------------------------------------Pager Start-------------------------------------------------------	*/	
		$('#employeetable').before(' <div class="footer"><ul class="pagination table-nav-before"></ul></div>');		
		$('#employeetable').after(' <div class="panel-footer footer"><ul class="pagination table-nav-after"></ul></div>');
        var rowsShown = 7;
        var rowsTotal = $('#employeetable tbody tr').length;
        var numPages = Math.ceil(rowsTotal/rowsShown);          
        for(i = 0;i < numPages;i++) {
            var pageNum = i + 1;
            $('.table-nav-after').append('<li class="pager-li" id="li'+i+'"><a href="#" rel="'+i+'" style="color: rgb(0, 0, 0);">'+pageNum+'</a></li> ');
            $('.table-nav-before').append('<li class="pager-li" id="li'+i+'"><a href="#" rel="'+i+'" style="color: rgb(0, 0, 0);">'+pageNum+'</a></li> ');
            }
        $('#employeetable tbody tr').hide();
        $('#employeetable tbody tr').slice(0, rowsShown).show();
        $('.table-nav-after #li0').addClass('active');
        $('.table-nav-before #li0').addClass('active');
        var previous=0;
        $('li a').bind('click', function(){        	
        	var currPage = $(this).attr('rel');        	
            $('.table-nav-before #li'+previous).removeClass('active');
            $('.table-nav-before #li'+currPage).addClass('active');    
            
            $('.table-nav-after #li'+previous).removeClass('active');
            $('.table-nav-after #li'+currPage).addClass('active'); 
            
            var startItem = currPage * rowsShown;
            var endItem = startItem + rowsShown;
            $('#employeetable tbody tr').hide().slice(startItem, endItem).css('display','table-row');
            previous = $(this).attr('rel')
        });   

        $('li a').css('color','#A0A0A0');
        
		$('li a').mouseenter(function(){
			$(this).css('color','white');
		});
		$('li a').mouseleave(function(){
			$(this).css('color','#A0A0A0');
		});
		
		$('.pager-li>a').css('color','black');
		
		 $('.pager-li>a').mouseenter(function(){
			$(this).css('color','black');
		 });
		 
		 $('.pager-li>a').mouseleave(function(){
				$(this).css('color','black');
			});
	/*------------------------------------------------------------------Pager End-------------------------------------------------------	*/
	/*-------------------------------------Delete button inside table---------------------------------------------------------------------*/	 
		$('#employeetable').delegate('#delete', 'click', function() {			
			var number=$(this).parent().siblings().first().next().text();	
		    bootbox.confirm("Are you sure want to delete Employee Number : "+number, function(result) {
		    	if(result==true){  
					$.get("delete", {"employee_number":number}, function(responseText) { 
								bootbox.alert(responseText).css("margin-top","300px");
								location.reload();
					});   
		         }
		    }).css("margin-top", "300px");	  
			
		});
/*-------------------------------------update button inside table---------------------------------------------------------------------*/		
		
		$('#employeetable').delegate('#update', 'click', function() {			 
	
			 var currentTD = $(this).parents('tr').find('td');	 
		           					 
			  if ($(this).attr('class') == 'glyphicon glyphicon-pencil update-delete') {
				  
				  $(this).removeClass('glyphicon glyphicon-pencil update-delete');
				  $(this).addClass('glyphicon glyphicon-ok update-delete');
		          currentTD = $(this).parents('tr').find('td');
		               $.each(currentTD, function () {
		                   $(this).prop('contenteditable', true);		                  
		                });
		               
		     } else {
		    	 $(this).removeClass('glyphicon glyphicon-ok update-delete');
				 $(this).addClass('glyphicon glyphicon-pencil update-delete');
		           $.each(currentTD, function () {
		        	   $(this).prop('contenteditable', false);		        	   
		            });
		            var next=$(this).parent().siblings('td');		       
		            $.get("update", {"employee_number":next[0].innerHTML,"employee_name":next[1].innerHTML, "employee_job":next[2].innerHTML, "employee_joindate":next[3].innerHTML, "employee_mobile":next[4].innerHTML, "employee_dno":next[5].innerHTML, "employee_loc":next[6].innerHTML}, function(responseText) { 
				         	bootbox.alert(responseText).css("margin-top","300px");
				         });
		      }
		});			
/*------------------------------------------------------------Submit Create Employee Form ----------------------------------------------------*/
		
		$("#submit").click(function(){  
	        var employee_no=$("#empno").val();
	        var employee_name=$("#ename").val();
	        var employee_job=$("#job").val();
	        var employee_loc=$("#location").val();
	        var employee_date=$("#date").val();
	        var employee_mobile=$("#mobile").val();
	        var employee_dept_no=$("#deptno").val();
	        
	        console.log(employee_no);
	        console.log(employee_name);
	        console.log(employee_job);
	        console.log(employee_loc);
	        console.log(employee_date);
	        console.log(employee_mobile);
	        console.log(employee_dept_no);
	        
	    
	        $.get("create",{"employee_number":employee_no, "employee_name":employee_name, "employee_job":employee_job, "employee_joindate":employee_date, "employee_mobile":employee_mobile, "employee_dno":employee_dept_no},function(responseText){
	        	    location.reload();
	        	});
	    });	
/*------------------------------------------------------------Submit Create Employee Form ----------------------------------------------------*/	
		$("#employeetable").tablesorter();			
/*------------------------------------------------------------Search Input box         ----------------------------------------------------*/			
		
		$("#searchInput").keyup(function () {
			
			     var rows = $("#tbody").find("tr").hide();			 
			    if (this.value.length) {
			        var data = this.value.split(" ");			       
			        $.each(data, function (i, v) {			
			        	
			            rows.filter(":contains('" + v + "')").show();
			         });
			    } else rows.show(); 
			});

/*------------------------------------------------------------Select All Employe ----------------------------------------------------*/	
		    $('#selectall').click(function(event) {  
		        if(this.checked) { 
		            $('.check-icon-size').each(function() { 
		                this.checked = true; 
		                arr[count]=($(this).parent().siblings().first().text());
		                count++;
		                
		            });
		           for(var i=0;i<arr.length;i++) {
		        	   if(arr[i]=='')
		            	 arr.splice(i, 1);
		            }
		           
		        }else{
		            $('.check-icon-size').each(function() { 
		                this.checked = false;
		                var number=$(this).parent().siblings().first().text();				
						  var i = arr.indexOf(number);
						  if(i != -1) 
							  arr.splice(i, 1);
						  count--;
		                
		            });         
		        }
		    });
/*------------------------------------------------------------END ----------------------------------------------------*/
		    
		    $("#redButton").click(function(){
		    	document.getElementById("dash-red").disabled = false;
		    	document.getElementById("dash-black").disabled = true;
		    	document.getElementById("dash-blue").disabled = true;
		    	document.getElementById("dash-green").disabled = true;
		        return false;
		    });
		    $("#blackButton").click(function(){
		    	document.getElementById("dash-black").disabled = false;
		    	document.getElementById("dash-red").disabled = true;
		    	document.getElementById("dash-blue").disabled = true;
		    	document.getElementById("dash-green").disabled = true;
		        return false;
		    });
		    $("#greenButton").click(function(){
		    	document.getElementById("dash-green").disabled = false;
		    	document.getElementById("dash-red").disabled = true;
		    	document.getElementById("dash-black").disabled = true;
		    	document.getElementById("dash-blue").disabled = true;
		        return false;
		    });
		    $("#blueButton").click(function(){
		    	document.getElementById("dash-blue").disabled = false;
		    	document.getElementById("dash-red").disabled = true;
		    	document.getElementById("dash-green").disabled = true;
		    	document.getElementById("dash-black").disabled = true;
		        return false;
		    });
		    
		   
		    $('#style-1').mouseenter(function(){
		    	$('#style-1:-webkit-scrollbar-thumb').attr("background-color","white");	    	
		    });
		    
		    $('i').mouseenter(function(){
		    	$(this).addClass('w3-spin');
		    });
		    $('i').mouseleave(function(){
		    	$(this).removeClass('w3-spin');
		    });
		   
	    
	});
