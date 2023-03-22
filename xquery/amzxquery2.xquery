declare option saxon:output "method=text";
(: text! :)
declare variable $lnBreak := "&#10;";
(: line breaks! :)
let $persons := //person/@name=>data()
(: defines persons as the list of attribute values for names under person element tags :)
for $person in distinct-values($persons)
(: a person is any distinct value of persons, each with a first initial, underscore, and last name :)
let $refCount := count($persons[.=$person])
(: each person is referenced a specific number of times, relayed by this line :)
where $person != 'm_zedong'
(: filters out Chairman Mao because like Spiders Georg he is an outlier and should not be counted.  Actually I just couldn't think of anything else good to do for a where :)
order by $refCount descending
(: people referenced more are listed first, then in descending order :)
(: below returns the person, number of times they are referenced, and a line break before beginning the next person.  I was disappointed to find that the \U and \L regex do not work on Oxygen :)
return (replace($person, '_', '. '), $refCount, $lnBreak)