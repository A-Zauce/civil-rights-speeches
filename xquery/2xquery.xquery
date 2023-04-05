declare option saxon:output "method=text";
declare variable $linefeed := "&#10;";
declare variable $tab := "&#9;";  
(:declare variable $subcat-count := //speech//act/data(@subcat) =>count(); :)


let $subCats:=//speech//act/data(@subcat)=>distinct-values()
for $subCat in $subCats
let $subcat-count := //speech//act/data(@subcat) =>count()
(: this is to list the subcategories within the speech :)
order by $subCat (:    this lists the subcats in alphabetical order :)
count $pos
return ($subcat-count, $subCat, $linefeed) (: this formats the outputs so they occur in a list form with one on top of another :)