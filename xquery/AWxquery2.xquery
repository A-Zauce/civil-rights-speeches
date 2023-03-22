let $speech :=//speech
let $people :=$speech//person/data(@name)=>distinct-values() (:get a list of the people referenced:)
let $persRef :=$speech//person=>count()(:count the number of times people were referenced:)
for $pers in $people
let $persRefCount :=//speech//p[person/data(@name)=$pers]=>count()(:trying to get a count of how many times each person was referenced:)
where $persRefCount > 3
order by $pers
return ($pers, "&#xa;", $persRefCount, "&#xa;")(:getting a return of only one person and their count of times referenced, not working properly:)



(:  Trying to create a list of people that are referenced more than 3 times.
I want the list to contain the person's name and the number of times mentioned :)