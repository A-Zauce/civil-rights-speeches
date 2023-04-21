declare variable $speeches:=collection('../xml');
declare variable $nvm-speeches := $speeches//Q{}speech[@speaker="joseph_h_jackson" or @speaker ="MLK" or @speaker="stokely_carmichael" ]; 
declare variable $noi-speeches := $speeches//Q{}speech[@speaker="malcolm_x" or @speaker="muhammad_ali" ]; 
declare variable $bpp-speeches := $speeches//Q{}speech[@speaker="h_newton" or @speaker="b_seale" or @speaker="f_hampton" ]; 
(:whc: who else is NVM in your sample? add them to this predicate but ONLY after the xml is validated:)
(:whc: also define new global variables for NoI speakers, Panthers speakers:)
declare variable $organ := //speech/data(@organization);
declare variable $acts := //act/@cat => distinct-values();
declare variable $xspacer := 800;
declare variable $yspacer := 25;
declare variable $bar-width :=30;

<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1100 550">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Organizations</text>
<text x="-55" y="100">NVM</text>
<text x="-55" y="200">NOI</text>
<text x="-55" y="300">BPP</text>
</g>
<g>

    
      <g><!--whc: first the bar for NVM, in three lines-->
      
      <line x1="0" y1="100" 
      x2="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="100" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="100" 
      x2="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="100" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $nvm-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $nvm-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="100" 
      x2="{$xspacer}" 
    y2="100" stroke-width="{$bar-width}" stroke="green"/>
    <!--nation of islam-->
    <line x1="0" y1="200" 
      x2="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="200" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="200" 
      x2="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="200" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $noi-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $noi-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="200" 
      x2="{$xspacer}" 
    y2="200" stroke-width="{$bar-width}" stroke="green"/>
    <!--black panthers line -->
    <line x1="0" y1="300" 
      x2="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="300" stroke-width="{$bar-width}" stroke="red"/>
    
    <line x1="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" y1="300" 
      x2="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}" 
    y2="300" stroke-width="{$bar-width}" stroke="yellow"/>
    
    <line x1="{let $actCount := $bpp-speeches//Q{}act[@cat="active-resistance" or @cat="self-defense"] => count() div $bpp-speeches//Q{}act=>count()
    return $actCount * $xspacer}"  y1="300" 
      x2="{$xspacer}" 
    y2="300" stroke-width="{$bar-width}" stroke="green"/>
    
    <line x1="0" y1="500" x2="50" y2="500" stroke-width="{$bar-width}" stroke="red"/>
    <text x="0" y="550">Active Resistance</text>
    <line x1="150" y1="500" x2="200" y2="500" stroke-width="{$bar-width}" stroke="yellow"/>
    <text x="150" y="550">Self Defense</text>
    <line x1="300" y1="500" x2="350" y2="500" stroke-width="{$bar-width}" stroke="green"/>
    <text x="300" y="550">Nonviolence</text>
    <line x1="0" y1="0" x2="0" y2="330" stroke-width="5" stroke="black"/>
    <line x1="-2" y1="330" x2="800" y2="330" stroke-width="5" stroke="black"/>
</g>



</g>
</g>
</svg>