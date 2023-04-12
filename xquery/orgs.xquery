declare option saxon:output "method=text";
declare variable $newLine := "&#10;";

let $speaker := //speech/data(@speaker)

let $orgs1 := //org/@name => distinct-values()
let $orgs2 := //org/@group => distinct-values()

let $orgs := ($orgs1, $orgs2) => distinct-values()

return($speaker,$newLine,
for $org at $index in $orgs

    let $orgCount := //org[@name=$org or @group=$org] => count()
    
    return($index, replace($org,"_"," "), $orgCount,$newLine))