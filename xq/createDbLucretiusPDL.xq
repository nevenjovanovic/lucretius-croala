(: Pull Lucretius's Latin source from PerseusDL Github repo :)
let $path := doc('https://raw.githubusercontent.com/PerseusDL/canonical-latinLit/master/data/phi0550/phi001/phi0550.phi001.perseus-lat1.xml') 
return db:create("lucretius", $path, (), map { 'intparse' : true() })