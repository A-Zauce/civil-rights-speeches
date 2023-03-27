
declare option saxon:output "method=text";
declare variable $tab:="&#9;";
declare variable $line-break:="&#xa;";
declare variable $files:=collection(' ../XML/?select=*.xml'); 
<html>
    <head>
        <title>Organizations</title>
    </head>
    <body>
         <h1>Organization References</h1>
         <table>
            <th>Organization</th>
                    <th>Ref. #</th>
                        {
                    let $speech :=//speech
                    let $orgs :=$speech//org/data(@group)=>distinct-values()  
                    for $groups in $orgs
                    let $org-count :=$speech//p[org/data(@group) =$groups]=> count()
                            where $org-count > 1
                            order by $org-count descending
                                return 
                                    <tr>
                                               <td>{$groups}</td>
                                               <td>{$org-count}</td>
                                    </tr> 
                                }
        </table> 
        </body>


</html>

