<html>
<head><title>Andrew Weston</title></head>
<body>

<h1>My data</h1>

<ol>{
let $speech :=//speech
let $people :=$speech//person/data(@name)=>distinct-values()
for $pers in $people
order by $pers ascending
return <li>{($pers)}</li> (:creates a number list of all people referenced in the speech, in alphabetical order:)
}</ol>

</body>
</html>