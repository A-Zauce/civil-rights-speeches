declare variable $speeches :=collection('../xml');
declare variable $malcolmx-speeches := $speeches//Q{}speech[@speaker="malcolm_x"];
declare variable $xspacer := 800;
declare variable $bar-width := 30;

<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1100 550">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Malcolm X</text>
</g>
<g>

    <g>
    
    <line x1="0" y1="100"
    x2="{let $actcount := $malcolmx-speeches//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $malcolmx-speeches//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{let $actcount := $malcolmx-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $malcolmx-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $malcolmx-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $malcolmx-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{$xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="0" x2="0" y2="125" stroke-width="5" stroke="black"/>
    <line x1="-2" y1="125" x2="800" y2="125" stroke-width="5" stroke="black"/>
    
    </g>
    </g>
</g>
</svg>