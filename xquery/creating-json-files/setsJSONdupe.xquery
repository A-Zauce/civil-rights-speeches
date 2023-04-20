declare option saxon:output "method=text";
declare variable $linefeed := "&#10;&#10;";

let $speech := //speech

let $speaker := $speech//data(@speaker)

return ('{',$linefeed,'"elements": [',$linefeed,

    '{',$linefeed,'"label": ','"',replace($speaker,"_"," "),'",',$linefeed,'"type": "speaker"',$linefeed,'},',$linefeed,
    
    let $sets := //set/@group => distinct-values()
    
    for $set at $index in $sets
        
        return('{',$linefeed,'"label": ','"',replace($set,"_"," "),'",',$linefeed,
        '"type": "group"',$linefeed,
            if($index eq count($sets))
            then('}')
            else('},')
        ,$linefeed)
     ,'],',$linefeed,'"connections": [',$linefeed,
     
     let $speech := //speech
     
     let $sets := //set/@group => distinct-values()
    
    for $set at $index in $sets
    
        let $numRef := //set[@group=$set] => count()
        let $setOps := //set[data(@group)=$set]/data(@op)
    let $setOp := sum($setOps)div$numRef
        
        return('{',$linefeed,'"from": ','"',replace($speaker,"_"," "),'",',$linefeed,
        '"to": "',replace($set,"_"," "),'",',$linefeed,
        '"size": ',$numRef,",",$linefeed,
        '"opinion": ',$setOp,$linefeed,
        if($index eq count($sets))
            then('}')
            else('},')
        ,$linefeed),']',$linefeed,'}')