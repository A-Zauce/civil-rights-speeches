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
</g>



</g>
</g>
</svg>