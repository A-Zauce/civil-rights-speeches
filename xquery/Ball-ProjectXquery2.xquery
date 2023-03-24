declare option saxon:output "method=text";
declare variable $tab:="&#9;";
declare variable $line-return:="&#xa;";
declare variable $files:=collection(' ../XML/?select=*.xml'); 
let $speech :=//speech
let $orgs :=$speech//org/data(@group)=>distinct-values()  (: finds all of the distinct organization:)
    for $groups in $orgs
        let $groups-count :=//p[org/data(@group) =$groups]=> count() (: This is a tree-walker, it finds each distinct organizations then begins to count them by how many times they are mentioned:)
        order by $groups-count descending (: this orders the group count by most mentions to least mentions in a descending format:)
        return( $line-return,"In Hampton's speech, the organization",$groups,"is mentioned", $groups-count, "times.")
        

(:create a list of all the organizations and how many times they are mentioned:)
