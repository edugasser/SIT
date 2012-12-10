/* ---------------------------- */
/* XMLHTTPRequest Enable 		*/
/* ---------------------------- */

var ios = 0;
var aos = 0;

function removeOldSchool(theSel)
{
  var selIndex = theSel.selectedIndex;
  if (selIndex != -1) {
    for(i=theSel.length-1; i>=0; i--)
    {
      if(theSel.options[i].selected)
      {
        theSel.options[i] = null;
      }
    }
    if (theSel.length > 0) {
      theSel.selectedIndex = selIndex == 0 ? 0 : selIndex - 1;
    }
  }
}

function createObject() {
	var request_type;
	var browser = navigator.appName;
	if(browser == "Microsoft Internet Explorer"){
	request_type = new ActiveXObject("Microsoft.XMLHTTP");
	}else{
		request_type = new XMLHttpRequest();
	}
		return request_type;
}

function Confirm(delUrl) {
  if (confirm("¿Está seguro que desea realizar esta acción?")) {
    document.location = delUrl;
  }
}

var http = createObject();


function fill(div,i) { /*para el buscador 1 de asignar lider-celula */

	e = document.getElementById(div+'-q');
	e.value=i;

	document.getElementById(div).style.display="none";
}
/* i = div, f = nombre de la funcion search, t = template, id variable pasada*/
function autosuggest(i,f,t,id,id2) {
	q = document.getElementById(i+'-q').value;
	 
	// Set te random number to add to URL request
	nocache = Math.random();
	 
	http.open('get', '/igovern/search/index/'+f+'/'+t+'/'+id+'/'+id2+'/?q='+q+'&nocache = '+nocache);
	http.onreadystatechange =  function(){autosuggestReply(i)};
	http.send(null);
}

function autosuggestReply(i) {
	if(http.readyState == 4){
		var response = http.responseText;
		e = document.getElementById(i);
		if(response!=" "){
			e.innerHTML=response;
 
					
			e.style.display="block";
		} else {
			e.style.display="none";
		}
	}
}
 
