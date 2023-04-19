declare option saxon:output "method=text";
declare variable $newLine := "&#10;";

let $organ := //speech/data(@organization)

let $acts := //act/@cat => distinct-values()

return ($organ, $newLine,
for $act at $index in $acts

    let $actCount := //act[@cat=$act] => count()
    
    return($index, replace($act,"_"," "), $actCount,$newLine))




