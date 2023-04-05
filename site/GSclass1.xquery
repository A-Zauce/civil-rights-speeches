<html>
<!--GS: this is a practice html for my xquery file on the first hampton "Murder a Liberator" speech-->
<head><title>Gia</title></head>

<body>
<h1>Hampton Speech Subcategories</h1>

<table>
<tr><th>Number</th>

<th>Term</th></tr>


{let $subCats :=//speech//act/data(@subcat)=>distinct-values()
for $subCat in $subCats
order by $subCat
count $pos

return 
<tr><td>{$pos}</td> <td>{$subCat}</td></tr>
}



</table>
</body>

</html>