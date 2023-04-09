declare option saxon:output "method=html";

declare variable $speech := //speech;
declare variable $xspacer := 10;
declare variable $yspacer := 25;
declare variable $subCats :=//speech//act/data(@subcat)=>distinct-values();
declare variable $subCat :=//speech//act/data(@subcat);
declare variable $subCat-count := //Q{}speech//Q{}act[data(@subcat)=$subCat] =>count();

(:<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">:)
<html xmlns="http://www.w3.org/2000/html" width="100%" height="100%">
        <g transform="translate(150,100)"> 
        <g>
        <text x ="0" y="-5" font-family="times-new-roman"  font-size="30px" fill="black"> Subcategories from Fred Hampton's (BPP) "Murder a Liberator" Speech</text>
        </g>
         <g>
{     
for $subCat at $pos in $subCats
let $subCat-count := //Q{}speech//Q{}act[data(@subcat)=$subCat] =>count()
(:let $subCats:=//speech//act/data(@subcat)=>distinct-values()
for $subCat in $subCats:)
(:let $subCat-count := //Q{}speech//Q{}act[data(@subcat)=$subCat] =>count():)
order by $subCat 
count $pos
return <g>
<text x="-115" y="{$pos * $yspacer + 5}" font-family="times-new-roman" font-size="18px" fill="black">{$subCat}</text>
<line x1="0" y1="{$pos * $yspacer}" x2="{$subCat-count * $xspacer}" y2="{$pos * $yspacer}" stroke="green" stroke-width="15"/>
<text x="{$subCat-count * $xspacer + 10}" y="{$pos * $yspacer + 5}" font-family="times-new-roman" font-size="16px" fill="black">{$subCat-count} </text>
<line x1="0" y1="0" x2="0" y2= "{($pos +1) * $yspacer}" stroke="black" stroke-width="4"/>
</g>                        
}


</g> 
</g>
</html>
(:</svg>:)
