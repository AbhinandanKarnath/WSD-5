<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:p="http://www.example.com/products" exclude-result-prefixes="p">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Product List</title>
                <style>                    
                    .card {
                        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                        transition: 0.3s;
                        width: 300px;
                        margin: 10px;
                        float: left;
                        border-radius:10px;
                    }
                      
                    .card:hover {
                        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
                        
                    }
                      
                    .container {
                        padding: 16px;
                        background:black;
                        color:white;
                    }
                    img
                    {
                        border-top-left-radius:20px;
                        border-top-right-radius:20px;
                        width:300;
                        height:200;
                    }
                </style>
            </head>
            <body>
                <h2>Malnad Stores</h2>
                <xsl:for-each select="products/product">
                    <div class="card">
                        <img src="{product_image}" alt="Product Image" style="width:100%" />
                        <div class="container">
                            <h4><b><xsl:value-of select="name"/></b></h4>
                            <p>Price: <xsl:value-of select="price"/></p>
                            <p>Category: <xsl:value-of select="@category"/></p>
                            <p>Quantity: <xsl:value-of select="quantity"/></p>
                            <p>Discount: <xsl:value-of select="discount"/></p>
                            <p>Product Code: <xsl:value-of select="product_code"/></p>
                            <p>Description: <xsl:value-of select="description"/></p>
                            <p>Product From: <xsl:value-of select="product_from"/></p>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>