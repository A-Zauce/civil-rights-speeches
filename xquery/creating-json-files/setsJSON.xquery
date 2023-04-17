declare option saxon:output "method=text";
declare variable $linefeed := "&#10;&#10;";

let $speech := //speech

let $speaker := $speech//data(@speaker)

return ('{',$linefeed,'"elements": [',$linefeed,

    '{',$linefeed,'"label": ','"',replace($speaker,"_"," "),'",',$linefeed,'"type": "speaker"',$linefeed,'},',$linefeed,
    
    let $orgs := //org/@group => distinct-values()
    
    for $org at $index in $orgs
        
        return('{',$linefeed,'"label": ','"',replace($org,"_"," "),'",',$linefeed,
        '"type": "group"',$linefeed,
            if($index eq count($orgs))
            then('}')
            else('},')
        ,$linefeed)
     ,'],',$linefeed,'"connections": [',$linefeed,
     
     let $speech := //speech
     
     let $orgs := //org/@group => distinct-values()
    
    for $org at $index in $orgs
    
        let $numRef := //org[@group=$org] => count()
        
        return('{',$linefeed,'"from": ','"',replace($speaker,"_"," "),'",',$linefeed,
        '"to": "',replace($org,"_"," "),'",',$linefeed,
        '"size": ',$numRef,$linefeed,
        if($index eq count($orgs))
            then('}')
            else('},')
        ,$linefeed),']',$linefeed,'}')