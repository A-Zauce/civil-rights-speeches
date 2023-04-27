declare variable $speeches :=collection('../xml');
declare variable $carmichael-speeches := $speeches//Q{}speech[@speaker="stokely_carmichael"];
declare variable $xspacer := 800;
declare variable $bar-width := 30;

<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1100 550">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Stokely Carmichael</text>
</g>
<g>

    <g>
    
    <line x1="0" y1="100"
    x2="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{$xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="0" x2="0" y2="125" stroke-width="5" stroke="black"/>
    <line x1="-2" y1="125" x2="800" y2="125" stroke-width="5" stroke="black"/>
    
    <line x1="200" y1="120" x2="200" y2="130" stroke-width="3" stroke="black"/>
    <line x1="400" y1="120" x2="400" y2="130" stroke-width="3" stroke="black"/>
    <line x1="600" y1="120" x2="600" y2="130" stroke-width="3" stroke="black"/>
    <line x1="800" y1="120" x2="800" y2="130" stroke-width="3" stroke="black"/>
    
    <text x="190" y="150">25%</text>
        <text x="390" y="150">50%</text>
        <text x="590" y="150">75%</text>
        <text x="790" y="150">100%</text>
    
    </g>
    </g>
</g>
</svg>