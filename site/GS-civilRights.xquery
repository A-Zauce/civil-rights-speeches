declare option saxon:output "method=text";  (:will create a text output stripping out XML element tags etc. :)
declare variable $linefeed := "&#10;";  (: global variable: now we can call for it without using the escape character :)
declare variable $tab := "&#9;";     (: note: global variables come at top of doc and line ends with semicolon :)


let $subCats :=//speech//act/data(@subcat)=>distinct-values()
(: this is to list the subcategories within the speech :)
for $subCat in $subCats
order by $subCat ascending (: this lists the subcats in alphabetical order :)
return ($subCat, $linefeed) (: this formats the outputs so they occur in a list form with one on top of another :)