<html>
    <head>
        <title>A. Zavatchan</title>
    </head>
    <body>
        <h1>Number of References as a Table</h1>
        <table>
            <tr><th>Person</th><th>Ref. #</th></tr>
            {
            let $persons := //person/@name=>data()
            for $person in distinct-values($persons)
            let $refCount := count($persons[.=$person])
            where $person != 'm_zedong'
            order by $refCount descending
            return 
            <tr><td>{replace($person, '_', '. ')}</td><td>{$refCount}</td></tr>
            }
        </table>
        <h1>Number of References as a List</h1>
        <ul>
            {
            let $persons := //person/@name=>data()
            for $person in distinct-values($persons)
            let $refCount := count($persons[.=$person])
            where $person != 'm_zedong'
            order by $refCount descending
            return 
            <li>{replace($person, '_', '. ')} is referenced in the text {$refCount} times.</li>
            }
        </ul>
    </body>
</html>