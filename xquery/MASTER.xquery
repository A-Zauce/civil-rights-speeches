declare variable $speeches:=collection('../xml');
declare variable $nvm-speeches := $speeches//Q{}speech[@speaker="joseph_h_jackson" or @speaker ="MLK" or @speaker="stokely_carmichael" ];
declare variable $jackson-speeches := $speeches//Q{}speech[@speaker="joseph_h_jackson"];
declare variable $mlk-speech1 := $speeches//Q{}speech[@title="i_have_a_dream"];
declare variable $mlk-speech2 := $speeches//Q{}speech[@title="i've_been_to_the_mountaintop"];
declare variable $carmichael-speeches := $speeches//Q{}speech[@speaker="stokely_carmichael"];
declare variable $noi-speeches := $speeches//Q{}speech[@speaker="malcolm_x" or @speaker="muhammad_ali" ]; 
declare variable $malcolmx-speech1 := $speeches//Q{}speech[@title="the_ballot_or_the_bullet"];
declare variable $malcolmx-speech2 := $speeches//Q{}speech[@title="message_to_the_grassroots"];
declare variable $ali-speeches := $speeches//Q{}speech[@speaker="muhammad_ali"];
declare variable $bpp-speeches := $speeches//Q{}speech[@speaker="h_newton" or @speaker="b_seale" or @speaker="f_hampton" ];
declare variable $newton-speeches := $speeches//Q{}speech[@speaker="h_newton"];
declare variable $hampton-speeches := $speeches//Q{}speech[@speaker="f_hampton"];
declare variable $xspacer := 800;
declare variable $bar-width :=30;

<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1100 550">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Organizations</text>
</g>

    <g><!--NVM Master Line-->
    
    <line x1="0" y1="25" 
      x2="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="25" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="25" 
      x2="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="25" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="25" 
      x2="{$xspacer}" 
    y2="25" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--Jackson line-->
    <line x1="0" y1="75"
    x2="{let $actcount := $jackson-speeches//Q{}act[@cat="active-resistance"] => count() div $jackson-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="75" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $jackson-speeches//Q{}act[@cat="active-resistance"] => count() div $jackson-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="75"
    x2="{let $actcount := $jackson-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $jackson-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="75" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $jackson-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $jackson-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="75"
    x2="{$xspacer}"
    y2="75" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--MLK lines-->
    <line x1="0" y1="125"
    x2="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="125" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="125"
    x2="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="125" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $mlk-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $mlk-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="125"
    x2="{$xspacer}"
    y2="125" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="175"
    x2="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="175" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="175"
    x2="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="175" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $mlk-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $mlk-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="175"
    x2="{$xspacer}"
    y2="175" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--Carmichael line-->
    <line x1="0" y1="225"
    x2="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="225" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="225"
    x2="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="225" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $carmichael-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $carmichael-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="225"
    x2="{$xspacer}"
    y2="225" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--NOI Master line-->
    <line x1="0" y1="275" 
      x2="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="275" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="275" 
      x2="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="275" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="275" 
      x2="{$xspacer}" 
    y2="275" stroke-width="{$bar-width}" stroke="green"/>
    
    
    </g>
</g>
</svg>