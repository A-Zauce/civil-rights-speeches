declare variable $tab:="&#9;";
declare variable $line-return:="&#xa;";
declare variable $speeches:=collection(' ../xml/xml.wip');
declare variable $speech :=//speech;
declare variable $orgs :=$speech//org/data(@group)=>distinct-values();
declare variable $xspacer := 10;
declare variable $yspacer := 25;

<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
        <g transform="translate(150,100)"> 
        <g>
        <text x ="0" y="-5" font-family="garamond"  font-size="30px" fill="black"> Organization Mentions in Carmichael's "Black Power"</text>
        </g>
            <g>
        {
                            for $groups at $pos in $orgs
                            let $groups-count :=//Q{}p[Q{}org/data(@group) =$groups]=> count()
                                order by $groups-count descending 
                                    return
                                        <g>
                                            <text  x ="-115" y="{$pos * $yspacer + 5}" font-family="garamond"  font-size="15px" fill="black">{$groups}</text>
                                            <line  x1 ="0" y1="{$pos * $yspacer}" x2="{$groups-count * $xspacer}" y2="{$pos * $yspacer}" stroke="red"  stroke-width="15"/>
                                            <text  x ="{$groups-count * $xspacer +10}" y="{$pos * $yspacer + 5}" font-family="garamond"  font-size="15px" fill="black">{$groups-count}</text>
                                            <line  x1 ="0" y1="0" x2="0" y2="{max ($pos+1) * $yspacer}"  stroke="black" stroke-width="2"/>
                                    </g>
            }
        </g> 
    </g>
</svg>