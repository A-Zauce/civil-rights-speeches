declare variable $speeches:=collection(' ../../xml/*.xml');
declare variable $organ := //speech/data(@organization);
declare variable $acts := //act/@cat => distinct-values();
declare variable $xspacer := 10;
declare variable $yspacer := 25;

<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
<g transform="translate(150,100)">
<g>
<text x="0" y="-5" font-family="" font-size="" fill="">Frequency of Acts by Organizations</text>
</g>
<g>

    
      <g>
      <line x1="0" 
      y1="100" 
      x2="{let $actCount := //Q{}act[@cat=$act] => count()
    return $actCount}" 
    y2="100"/>
      <line x1="" y1="" x2="" y2=""

</g>
</g>
</svg>