<html>
    <head>
        <title>A. Zavatchan</title>
    </head>
    <body>
        <h1>Something</h1>
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
    </body>
</html>