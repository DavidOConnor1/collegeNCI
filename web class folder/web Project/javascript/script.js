var basketItems =
{//open basketItems

    "basket": //open
    {//open basket
        "basketID": 1,
        "itemName": "",
        "itemCategory": "",
        "itemPrice": 0,
        "itemQuantity": 0
    }//close basket

}//close basketItems


function addToBasket() {

    for (i = 0; i < tr.length; i++) {
        if (td) {//open if
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(fitler) > -1) {
                var newItemName = JSON.parse(itemName);
                var newItemCategory = JSON.parse(itemCategory);
                var newItemPrice = JSON.parse(itemPrice);
                addPrices();
                itemQuantity + 1;
                alert("you added an item to your basket!");
            } else {
                alert("insufficient information");
            }
        }//close if 
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
    td = tr[i].querySelector('td');
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
