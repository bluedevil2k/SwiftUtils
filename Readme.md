SwiftUtils
=======

As a Java/Ruby developer coming to Swift, I found some of the core classes lacking in common functions that other languages have readily available.  These classes
are extensions to expand the core classes of Swift to make them easier to work with.

Also, more importantly, they're a good way to practice writing Swift.

CabForward - Austin's Leading iOS and Swift Shop - <a href="http://cabforward.com">http://cabforward.com</a>

StringUtils
-------
* length() -> "myString".length()  ==> 8
* substring(start: Int, length: Int) -> "myString".substring(1, length: 2)  ==> "ub"
* indexOf(searchChar: String) -> "myString".indexOf("S")  ==> 2
* replace(replaceText: String, replaceWith: String) -> "myExtraLongString".replace("ExtraLong", replaceWith: "Short")  ==> "myShortString"
* convertToCamelCase()  ->  "my_database_table".convertToCamelCase() ==> "MyDatabaseTable"
* convertToUnderscoreCase()  -> "MyClassName".convertToUnderscoreCase() ==> "my_class_name"