var xmlFile = 'products.xml';
var xsltFile = 'productsDesign.xsl';

var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function () {
    if (xhr.readyState == 4 && xhr.status == 200) {
        var parser = new DOMParser();
        var xmlDoc = parser.parseFromString(xhr.responseText, 'text/xml');

        var xsltProcessor = new XSLTProcessor();
        var xsltDoc = new DOMParser().parseFromString(xhr.responseText, 'text/xml');

        updateResult(xsltProcessor.transformToFragment(xmlDoc, document));

        window.searchXML = function () {
            var searchTerm = document.getElementById('searchP').value.toLowerCase();
            var xpathResult = xmlDoc.evaluate('//product[contains(name, "' + searchTerm + '") or contains(code, "' + searchTerm + '")]', xmlDoc, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);

            updateResult(xsltProcessor.transformToFragment(xpathResult.snapshotItem(0), document));
        };
    }
};

xhr.open('GET', xmlFile, true);
xhr.send();

function updateResult(fragment) {
    var resultDIV = document.getElementById('displayArea-div');
    resultDIV.innerHTML = '';
    resultDIV.appendChild(fragment);
}


	


function searchTable() {
  var input, filter, table, tr, td, i, j, txtValue;
  input = document.getElementById("search");
  filter = input.value.toUpperCase();
  table = document.getElementById("productsTable");
  tr = table.getElementsByTagName("tr");

  var expandSearch = [0, 1, 3, 5];

  for (i = 0; i < tr.length; i++) {
    var display = "none"; // Initialize display outside the inner loop
    for (j = 0; j < expandSearch.length; j++) {
      var indexing = expandSearch[j];
      td = tr[i].getElementsByTagName("td")[indexing];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          display = ""; // Set display to an empty string if a match is found
          break; // Break out of the inner loop if a match is found
        }
      }
    }
    tr[i].style.display = display; // Set the display based on whether a match was found
  }
}


	
	

function addToBasket() {
		
		var addToCartBTN = document.getElementById("addToBasketBTN");
		var itemName = document.getElementById("productName").innerText;
	var itemCategory = document.getElementById("productCategory").innerText;
	var itemPrice = document.getElementById("productPrice").innerText;
	var itemQuantity = 0;
						var basketItems =
{//open basketItems
        "basket": //open
    {//open basket
        "basketID": 1,
        "itemName": "",
        "itemCategory": "",
        "itemPrice": 0,
        "itemQuantity": itemQuantity
		}//close basket
	};	//close basketItems
	
	
    for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[0];
        if (td) {//open if
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(fitler) > -1) {
               
			   basketItems.basket.itemName = itemName;
			   basketItems.basket.itemCategory = itemCategory;
			   basketItems.basket.itemPrice = parseFloat(itemPrice);
			   
			   
                addPrices();
                itemQuantity ++;
                alert("you added an item to your basket!");
				

				
				
            } else {
                alert("insufficient information, please try again!");
            }
        }//close if 
    }
}

alert("Hello! I am an alert box!!");

function addingToCart(){
	addEventListener()
	alert('Hello World!');
}

function addPrices()
{
	sum =0;
		for(i =0; i<basketItems.length; i++)
		{
			sum += basketItems[i].itemPrice;
			
		}
		return sum;
}



