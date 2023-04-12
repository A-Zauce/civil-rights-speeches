declare option saxon:output "method=text";
declare variable $newLine := "&#10;";

let $speaker := //speech/data(@speaker)

let $sets1 := //set/@name => distinct-values()
let $sets2 := //set/@group => distinct-values()

let $sets := ($sets1, $sets2) => distinct-values()

return($speaker,$newLine,
for $set at $index in $sets

    let $setCount := //set[@name=$set or @group=$set] => count()
    
    return($index, replace($set,"_"," "), $setCount,$newLine))