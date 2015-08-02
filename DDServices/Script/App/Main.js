var dataJson=[];
var len;
var Left;
var Top;
var HT;
var WD;
var topAlign;
var colIndex;
var rowIndex;
var myArr=[];
var $element;
var index;

$(document).ready(function()
{
	$('#addNewBtn').bind('click',Add);
	$('.btnEdit').bind('click',Edit);
	$('.btnDelete').bind('click',Delete);
	
	$('.tooltip').tooltipster();
	$('#myToolTip').hide();

	//////////////// Function for Date formation ////////////////////////
	function currentTime() 
	{
		var d = new Date(),
		minutes = d.getMinutes().toString().length == 1 ? '0'+d.getMinutes() : d.getMinutes(),
		hours = d.getHours().toString().length == 1 ? '0'+d.getHours() : d.getHours(),
		ampm = d.getHours() >= 12 ? 'pm' : 'am',
		months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
		days = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'];
		return days[d.getDay()]+' | '+months[d.getMonth()]+' '+d.getDate()+' '+d.getFullYear()+' | '+hours+':'+minutes+ampm;
	}
	//////////////// End of Function for Date formation ////////////////////////

	/////////////// function for Search ////////////////////////////////////////

	$("#search").keyup(function () 
	{
		var value = this.value.toLowerCase().trim();

		$("#dataTable tr").each(function (index) 
		{
			if (!index) return;

			$(this).find("td").each(function () 
			{
				var id = $(this).text().toLowerCase().trim();
				var not_found = (id.indexOf(value) == -1);
				$(this).closest('tr').toggle(!not_found);
				return not_found;
			});
		});
	});

	/////////////// End of function for Search ////////////////////////////////////////
	init();
	function init()
	{
		 myArr=[
			{
				date:"Fri | May 22 2015 | 12:49am",
				name:"Prashant Gupta",
				address:"S-1, Plot No - 6, ShaktiKhand - 3, Indirapuram, Ghaziabad (UP)",
				mobile:"+(91) - 9990041118"
			},
			{
				date:"Fri | May 22 2015 | 01:50am",
				name:"Ayushmaan Gupta", 
				address:"P - 239, Phase - 3, Shivalik Nagar, BHEL, Ranipur, Haridwar (UA)", 
				mobile:"+(91) - 9891358511"
			},

		];
		 $.each(myArr,function(index,item)
		{
			$('#dataTable').prepend(
				'<tr>'
					+'<td>'+myArr[index].date+'</td>'
					+'<td>'+myArr[index].name+'</td>'
					+'<td>'+myArr[index].address+'</td>'
					+'<td>'+myArr[index].mobile+'</td>'
					+'<td><img class="img-thumbnail btnEdit" src="images/edit.png" title="EDIT"/> | <img class="img-thumbnail btnDelete" src="images/delete.png" title="DELETE"/></td>'
					//+'tdButtons.html(<img class="img-thumbnail btnEdit" src="images/edit.png" title="EDIT"/> | <img class="img-thumbnail btnDelete" src="images/delete.png" title="DELETE"/>);
				+'</tr>'
			);

			$('.btnEdit').bind('click',Edit);
			$('.btnDelete').bind('click',Delete);
			$('#dataTable td').bind('mouseover',tooltipshow);
		$('#dataTable td').bind('mouseout',tooltiphide);
		});
	}

	function Add()
	{
	   
		$('#dataTable').prepend(
			'<tr>'
				+'<td>'+currentTime()+'</td>'
				+'<td><textarea class="form-control txtarea myclass" id="nameText" rows="1" spellcheck="true"></textarea></td>'
				+'<td><textarea class="form-control txtarea myclass" id="addressText" rows="1" spellcheck="true"></textarea></td>'
				+'<td><textarea class="form-control txtarea myclass" id="cellText" rows="1" spellcheck="true"></textarea></td>'
				+'<td><img class="img-thumbnail btnSave" src="images/save.png" title="SAVE"/> | <img class="img-thumbnail btnDelete" src="images/delete.png" title="DELETE"/></td>'
			+'</tr>'
		);

		$('.btnSave').bind('click',Save);
		$('.btnDelete').bind('click',Delete);
		
		function expandTextarea(id,index) 
		{
			$element = $('.myclass').get(index);  
			$element.addEventListener('keyup', function() 
			{
				this.style.overflow = 'hidden';
				this.style.height =0;
				this.style.height = this.scrollHeight + 'px';
			}, false);
		}
		

		$( "#nameText,#addressText,#cellText").focus(function() 
		{
			$(this).animate({ height: "66px" }, 500); 
			$(this).css({'background-color':'#E5FFF3'});
			index=$(this).parent().index();
			expandTextarea('textarea',(index-1));
		});
		$( "#nameText,#addressText,#cellText" ).focusout(function() 
		{
			$(this).animate({ height: "36px" }, 500);
			$(this).css({'background-color':'#FFFFFF'});
		});
	};
	
	function Save()
	{

		var rootref=$(this).parent().parent();
	
		var tdDate=rootref.children('td:nth-child(1)');
		var tdName=rootref.children('td:nth-child(2)');
		var tdAddress=rootref.children('td:nth-child(3)');
		var tdCell=rootref.children('td:nth-child(4)');
		var tdButtons=rootref.children('td:nth-child(5)');

		tdDate.html(currentTime());
		tdName.text($("textarea#nameText").val());
		tdAddress.text($("textarea#addressText").val());
		tdCell.text($("textarea#cellText").val());
		console.log(tdDate.html());
		var url = " http://localhost:1799/DDServices/CRUDPrashant.svc/json/" + tdName.html() + "/" + tdAddress.html() + "/" + tdCell.html();
		$.ajax({
		    type: "GET",
		    url: url,
		    cache: false,
		    contentType: "application/json; charset=utf-8",
		    dataType: "json",
		    success: function (response) {
		        alert(response);
		        console.log(response);
		    }
		});

		tdButtons.html('<img class="img-thumbnail btnEdit" src="images/edit.png" title="EDIT"/> | <img class="img-thumbnail btnDelete" src="images/delete.png" title="DELETE"/>');
		myArr.push(
			{
				date:tdDate.html(),
				name:tdName.html(),
				address:tdAddress.html(),
				mobile:tdCell.html()
			}
		);
		len=$('#dataTable > tbody > tr').length;
		$('.btnEdit').bind('click',Edit);
		$('.btnDelete').bind('click',Delete);
		$('#dataTable td').bind('mouseover',tooltipshow);
		$('#dataTable td').bind('mouseout',tooltiphide);

		


	}

	function Update()
	{
		var rootref=$(this).parent().parent();
		var tdDate=rootref.children('td:nth-child(1)');
		var tdName=rootref.children('td:nth-child(2)');
		var tdAddress=rootref.children('td:nth-child(3)');
		var tdCell=rootref.children('td:nth-child(4)');
		var tdButtons=rootref.children('td:nth-child(5)');

		tdDate.html(currentTime());
		tdName.text($("textarea#nameText").val());
		tdAddress.text($("textarea#addressText").val());
		tdCell.text($("textarea#cellText").val());

		tdButtons.html('<img class="img-thumbnail btnEdit" src="images/edit.png" title="EDIT"/> | <img class="img-thumbnail btnDelete" src="images/delete.png" title="DELETE"/>');
		len=$('#dataTable > tbody > tr').length;
		var indx=(len)-(rootref.closest('tr').index());
		indx=indx-1;
		myArr[indx].date=tdDate.html();
		myArr[indx].name=tdName.html();
		myArr[indx].address=tdAddress.html();
		myArr[indx].mobile=tdCell.html();
		$('.btnEdit').bind('click',Edit);
		$('.btnDelete').bind('click',Delete);

		$('#dataTable td').bind('mouseover',tooltipshow);
		$('#dataTable td').bind('mouseout',tooltiphide);
	}
	
	function tooltipshow()
	{
		len=$('#dataTable > tbody > tr').length;
		Left=$(this).position().left;
		Top=$(this).position().top;
		HT=$(this).height();
		WD=$(this).width();
		topAlign=Top+HT;
		
		colIndex = $(this).parent().children().index($(this));
		rowIndex = $(this).parent().parent().children().index($(this).parent());

		$('#myToolTip').html(myArr[(len)-(rowIndex)-(1)][(colIndex)]);
		switch(colIndex)
		{
			case 0:
			{
				$('#myToolTip').html(myArr[(len)-(rowIndex)-(1)].date);
				break;
			}
			case 1:
			{
				$('#myToolTip').html(myArr[(len)-(rowIndex)-(1)].name);
				break;
			}
			case 2:
			{
				$('#myToolTip').html(myArr[(len)-(rowIndex)-(1)].address);
				break;
			}
			case 3:
			{
				$('#myToolTip').html(myArr[(len)-(rowIndex)-(1)].mobile);
				break;
			}
		}
		
		$('#myToolTip').css('top',topAlign);
		$('#myToolTip').css('left',Left);
		if(colIndex==4)
		{
			$('#myToolTip').hide();
		}
		else
		{
			$('#myToolTip').show();
		}
	}
	function tooltiphide()
	{
		$('#myToolTip').html('');
		$('#myToolTip').hide();
		colIndex = $(this).parent().children().index($(this));
		rowIndex = $(this).parent().parent().children().index($(this).parent());
	}
	function Delete()
	{
		var rootref=$(this).parent().parent();
		len=$('#dataTable > tbody > tr').length;
		var indx=(len)-(rootref.closest('tr').index());
		indx=indx-1;
		rootref.remove();
		myArr.splice(indx,1);
		$('#dataTable td').bind('mouseover',tooltipshow);
		$('#dataTable td').bind('mouseout',tooltiphide);
		
	}
	function Edit()
	{
		$('#dataTable td').unbind('mouseover',tooltipshow);
		
		$('#dataTable td').unbind('mouseout',tooltiphide);
		var rootref=$(this).parent().parent();
		var tdDate=rootref.children('td:nth-child(1)');
		var tdName=rootref.children('td:nth-child(2)');
		var tdAddress=rootref.children('td:nth-child(3)');
		var tdCell=rootref.children('td:nth-child(4)');
		var tdButtons=rootref.children('td:nth-child(5)');
		tdDate.html(currentTime());
		tdName.html('<textarea class="form-control txtarea myclass" id="nameText" rows="1" spellcheck="true" >'+tdName.html()+'</textarea>');
		tdAddress.html('<textarea class="form-control txtarea myclass" id="addressText" rows="1" spellcheck="true">'+tdAddress.html()+'</textarea>');
		tdCell.html('<textarea class="form-control txtarea myclass" id="cellText" rows="1" spellcheck="true">'+tdCell.html()+'</textarea>');
		tdButtons.html('<img class="img-thumbnail btnUpdate" src="images/images.jpg" title="UPDATE"/>');
		
		$('.btnUpdate').bind('click',Update);

		function expandTextarea(id,index) 
		{
			$element = $('.myclass').get(index);
			$element.addEventListener('keyup', function() 
			{
				this.style.overflow = 'hidden';
				this.style.height = 0;
				this.style.height = this.scrollHeight + 'px';
			}, false);
		}
		

		$( "#nameText,#addressText,#cellText").focus(function() 
		{
			$(this).animate({ height: "66px" }, 500);
			$(this).css({'background-color':'#E5FFF3'});
			index=$(this).parent().index();
			expandTextarea('textarea',(index-1));
			
		});
		$( "#nameText,#addressText,#cellText" ).focusout(function() 
		{
			$(this).animate({ height: "36px" }, 500);
			$(this).css({'background-color':'#FFFFFF'});
		});
	}
});