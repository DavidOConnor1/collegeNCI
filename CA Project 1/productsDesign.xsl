<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	<xsl:template match="/">
	
	<html>
	
	<head>
	<title>Shop4LessTech</title>
				
	<script src="javascript.js"/>	
	
	<style>
	
	*{
	padding:0px;
	margin:0px;
	box-sizing:border-box;
	font-family:Arial;
}

	
				#wrapper
				{
				width:90%;
				min-height:100px;
				margin:auto;
				}


	
	table
	{
		width:100%;
	}

 th, td{
	
	border:1px solid;
	min-height:100px;
	line-height:100px;
	text-align:center;
	
	}




	button
	{
		cursor:pointer;
	}



	#homeBTN{
		line-height:100px;
		min-height:100px;
		width:100%;
		background-color:orange;
		text-align:center;
		padding-left:2%;
		margin-bottom:16.6px;
}

	#productsBTN{
		line-height:100px;
		min-height:100px;
		width:100%;
		background-color:orange;
		text-align:center;
		padding-left:2%;
		margin-bottom:16.6px;
	}

		#searchBTN
		{
			line-height:100px;
		min-height:100px;
		width:100%;
		background-color:orange;
		text-align:center;
		padding-left:2%;
		
		}
	


	#main-div
	{
		min-height:500px;
		width:100%;
		background-color:#F98B88;
	}
	
	#left-div
	{
		width:25%;
		min-height:500px;
		float:left;
		
	}
	
	#right-div
	{
		width:70%;
		min-height:500px;
		float:right;
		background-color:#F98B88;
	}
	
	.clearfix::after
	{
		content:"";
		display:block;
		clear:both;
	}
	
	#sidebar-div
	{
		min-height:50px;
		width:100%;
		text-align:center;
		line-height:50px;
		background-color:#F98B88;
		margin-bottom:50px;
		
	}

	#nav-div
	{
		min-height:450px;
		width:100%;
		background-color: #F98B88;
		border:2px solid;
	}

	#header-div
	{
		min-height:50px;
		line-height:50px;
		text-align:center;
		background-color:orange;
		margin-bottom:50px;
		width:100%;
	}
	
	#productsTable
	{
		width:100%;
		min-height:450px;
		line-height:450px;
		background-color:orange;
	}

	
	


	
	</style>
	
	</head>
	
	<body>
	<div id="wrapper">
		<div id="logoDiv">
		<h1>Shop4LessTech</h1>
		</div>	<!--end of logoDiv-->
		
		<div id="main-div" class="clearfix"> <!--start of main div to make the website look better-->
		
		<div id="left-div">
		
		<div id="sidebar-div">side bar</div>
		
		<div id="nav-div">
			
			
			
			<button id="homeBTN" onclick="location.href='index.html'">Home</button>
			<button id="productsBTN" onlclick="location.href='products.html'">products</button>
			<button id="searchBTN" onlclick="location.href='products.html'" >Search</button>
			
			
			
			
		
			
			</div> <!--end of nav div-->
		</div> <!--end of left div-->
		
		
		
		<div id="right-div">
		
		<div id="header-div"> Product List </div>
		
		
		
		<div id="productsTable">
		<table>
		<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Category</th>
		<th>Price</th>
		<th>Description</th>
		<th>Quantity</th>
		</tr>
		<xsl:for-each select="//product">
		<tr>
		<td id="productID"><xsl:value-of select="code"/></td>
		<td id="productName"><xsl:value-of select="name"/></td>
		<td id="productCategory"><xsl:value-of select="category"/></td>
		<td id="productPrice"><xsl:value-of select="Unit_Price"/></td>
		<td id="productDesc"><xsl:value-of select="Description"/></td>
		<td id="productQuantity"><xsl:value-of select="Quantity"/></td>
		
		<td id="productImg">
		<img style="width:100%; height:100%;">
			<xsl:attribute name="src">
				<xsl:value-of select="productPicture"/>
			</xsl:attribute>
		</img>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		
		</div> <!--end of product div-->
		</div> <!--end of right div-->
			</div> <!--end of main div-->
			
			<div id="footer">
				footer	
				
			
			</div> <!--end of footer-->
			
			
			
			
		</div> <!--end of wrapper div-->
	</body>
	
	</html>
</xsl:template>
</xsl:stylesheet>