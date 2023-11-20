var checkedValue;
var radioButtons = document.getElementsByClassName("myRadioGroup");
for (var i = 0; i < radioButtons.length; i++)
{
if (radioButtons[i].checked)
{
checkedValue = radioButtons[i].value;
break;
}
}
alert (checkedValue);

$("#myButton").click(function()
{
    alert("Hello world");
//some actions
});