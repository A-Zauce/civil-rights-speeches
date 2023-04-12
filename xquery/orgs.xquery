declare option saxon:output "method=text";
declare variable $newLine := "&#10;";

let $speaker := //speech/data(@speaker)

let $orgs1 := //org/@name => distinct-values()
let $orgs2 := //org/@group => distinct-values()

let $orgs := ($orgs1, $orgs2) => distinct-values()

return($speaker,$newLine,
for $org in $orgs

    let $orgCount := //org[@name=$org or @group=$org] => count()
    let $orgOps := //org[data(@group)=$org]/data(@op)
    let $orgOp := sum($orgOps)div$orgCount
    where $org != //speech/data(@organization)
    
    return(replace($org,"_"," "), $orgCount, $orgOp, $newLine))