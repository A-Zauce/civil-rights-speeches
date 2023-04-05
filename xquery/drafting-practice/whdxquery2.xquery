declare option saxon:output "method=text";  (:will create a text output stripping out XML element tags etc. :)
declare variable $linefeed := "&#10;";  (: global variable: now we can call for it without using the escape character :)
declare variable $tab := "&#9;";     (: note: global variables come at top of doc and line ends with semicolon :)

let $indivs :=//speech/section/p//person/data(@name)=>distinct-values() (: identifying individuals referenced :)
let $indiv-count := $indivs => count()  (: counting how many referenced :)
for $indiv in $indivs 
order by $indiv-count  (:trying to count who was referenced first :)
return ($indiv, $tab, $indiv-count , $linefeed)
