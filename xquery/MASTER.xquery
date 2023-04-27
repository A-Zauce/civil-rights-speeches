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
<g transform="translate(200,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Organizations</text>
<text x="-55" y="25">NVM</text>
<text x="-110" y="75">Joseph Jackson</text>
<text x="-160" y="125">MLK (I have a Dream)</text>
<text x="-140" y="175">MLK (Mountaintop)</text>
<text x="-140" y="225">Stokely Carmichael</text>
<text x="-55" y="275">NOI</text>
<text x="-195" y="325">Malcolm X (Ballot or Bullet)</text>
<text x="-165" y="375">Malcolm X (Grassroots)</text>
<text x="-110" y="425">Muhammad Ali</text>
<text x="-55" y="475">BPP</text>
<text x="-100" y="525">Huey Newton</text>
<text x="-100" y="575">Fred Hampton</text>
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
    
    <!--Malcolm X lines-->
    <line x1="0" y1="325"
    x2="{let $actcount := $malcolmx-speech1//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="325" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $malcolmx-speech1//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="325"
    x2="{let $actcount := $malcolmx-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $malcolmx-speech1//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="325" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $malcolmx-speech1//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $malcolmx-speech1//Q{}act=>count()
    return $actcount * $xspacer}" y1="325"
    x2="{$xspacer}"
    y2="325" stroke-width="{$bar-width}" stroke="green"/>
    
    
    <line x1="0" y1="375"
    x2="{let $actcount := $malcolmx-speech2//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="375" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $malcolmx-speech2//Q{}act[@cat="active-resistance"] => count() div $malcolmx-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="375"
    x2="{let $actcount := $malcolmx-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $malcolmx-speech2//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="375" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $malcolmx-speech2//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $malcolmx-speech2//Q{}act=>count()
    return $actcount * $xspacer}" y1="375"
    x2="{$xspacer}"
    y2="375" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--Ali lines-->
    <line x1="0" y1="425"
    x2="{let $actcount := $ali-speeches//Q{}act[@cat="active-resistance"] => count() div $ali-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="425" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $ali-speeches//Q{}act[@cat="active-resistance"] => count() div $ali-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="425"
    x2="{let $actcount := $ali-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $ali-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="425" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $ali-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $ali-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="425"
    x2="{$xspacer}"
    y2="425" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--BPP Master line-->
    <line x1="0" y1="475" 
      x2="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="475" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="475" 
      x2="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="475" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="475" 
      x2="{$xspacer}" 
    y2="475" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--Newton line-->
    <line x1="0" y1="525"
    x2="{let $actcount := $newton-speeches//Q{}act[@cat="active-resistance"] => count() div $newton-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="525" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $newton-speeches//Q{}act[@cat="active-resistance"] => count() div $newton-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="525"
    x2="{let $actcount := $newton-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $newton-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="525" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $newton-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $newton-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="525"
    x2="{$xspacer}"
    y2="525" stroke-width="{$bar-width}" stroke="green"/>
    
    <!--Hamton line-->
    <line x1="0" y1="575"
    x2="{let $actcount := $hampton-speeches//Q{}act[@cat="active-resistance"] => count() div $hampton-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="575" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actcount := $hampton-speeches//Q{}act[@cat="active-resistance"] => count() div $hampton-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="575"
    x2="{let $actcount := $hampton-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $hampton-speeches//Q{}act=>count()
    return $actcount * $xspacer}"
    y2="575" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actcount := $hampton-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] =>count() div $hampton-speeches//Q{}act=>count()
    return $actcount * $xspacer}" y1="575"
    x2="{$xspacer}"
    y2="575" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="0" x2="0" y2="600" stroke-width="5" stroke="black"/>
    <line x1="-2" y1="600" x2="800" y2="600" stroke-width="5" stroke="black"/>
    <line x1="200" y1="595" x2="200" y2="605" stroke-width="3" stroke="black"/>
    <text x="190" y="625">25%</text>
    <line x1="400" y1="595" x2="400" y2="605" stroke-width="3" stroke="black"/>
    <text x="390" y="625">50%</text>
    <line x1="600" y1="595" x2="600" y2="605" stroke-width="3" stroke="black"/>
    <text x="590" y="625">75%</text>
    <line x1="800" y1="595" x2="800" y2="605" stroke-width="3" stroke="black"/>
    <text x="790" y="625">100%</text>
    
    
    </g>
</g>
</svg>