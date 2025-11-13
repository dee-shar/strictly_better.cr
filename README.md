# strictly_better.cr
Web-API for www.strictlybetter.eu which offers information about Magic: The Gathering cards that are functionally superior to other cards

## Example
```cr
require "./strictly_better"

strictly_better = StrictlyBetter.new
obsoletes = strictly_better.get_obsoletes()
puts obsoletes
```
