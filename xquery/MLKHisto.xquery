declare variable $speeches :=collection('../xml');
declare variable $mlk-speech1 := $speeches//Q{}speech[@title="i_have_a_dream"];
declare variable $mlk-speech2 := $speeches//Q{}speech[@title="i've_been_to_the_mountaintop"];
declare variable $xspacer := 800;
declare variable $bar-width := 30;

<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1100 550">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Martin Luther King Jr.</text>
<text x="-110" y="100">I have a Dream</text>
<text x="-110" y="200">Mountaintop</text>
</g>
<g>

    <g>
    
    <line x1="0" y1="100"
    x2="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="100"
    x2="{$xspacer}"
    y2="100" stroke-width="{$bar-width}" stroke="green"/>
    <!--next-->
    <line x1="0" y1="200"
    x2="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="200" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="200"
    x2="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="200" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="200"
    x2="{$xspacer}"
    y2="200" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="0" x2="0" y2="225" stroke-width="5" stroke="black"/>
    <line x1="-2" y1="225" x2="800" y2="225" stroke-width="5" stroke="black"/>
    
    <line x1="200" y1="220" x2="200" y2="230" stroke-width="3" stroke="black"/>
    <line x1="400" y1="220" x2="400" y2="230" stroke-width="3" stroke="black"/>
    <line x1="600" y1="220" x2="600" y2="230" stroke-width="3" stroke="black"/>
    <line x1="800" y1="220" x2="800" y2="230" stroke-width="3" stroke="black"/>
    
    <text x="190" y="250">25%</text>
        <text x="390" y="250">50%</text>
        <text x="590" y="250">75%</text>
        <text x="790" y="250">100%</text>
    
    </g>
    </g>
</g>
</svg>