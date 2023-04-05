declare option saxon:ouput "method=text";
declare variable $tab := "&#xa;";
declare variable $linefeed :="&#10;";
let $speech :=//speech
let $people :=$speech//person/data(@name)=>distinct-values() (:get a list of the people referenced:)
for $pers in $people
order by $pers ascending
return ($pers, $linefeed)(:returns a list of the name in alphabetical order:)
