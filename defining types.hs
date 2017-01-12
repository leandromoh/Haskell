
        type keyword

The type keyword is for making type synonyms. What that means is that we just give another name to an already existing type so that the type is easier to refer to. Say we did the following:

type String = [Char]  

All this does is to allow us to refer to the [Char] type as String. They can be used interchangeably. We don't get an String value constructor or anything like that. Because [Char] and String are only two ways to refer to the same type, it doesn't matter which name we use in our type annotations:

main = print $ ("hello " :: String) ++ (['w','o','r','l','d'] :: [Char]) // hello word

We use type synonyms when we want to make our type signatures more descriptive by giving types names that tell us something about their purpose in the context of the functions where they're being used. For instance, when we used an association list of type [(String,String)] to represent a phone book, we gave it the type synonym of PhoneBook so that the type signatures of our functions were easier to read.



        newtype keyword 

The newtype keyword is for taking existing types and wrapping them in new types, mostly so that it's easier to make them instances of certain type classes. When we use newtype to wrap an existing type, the type that we get is separate from the original type. If we make the following newtype:

newtype CharList = CharList { getCharList :: [Char] }  

We can't use ++ to put together a CharList and a list of type [Char]. We can't even use ++ to put together two CharLists, because ++ works only on lists and the CharList type isn't a list, even though it could be said that it contains one. We can, however, convert two CharLists to lists, ++ them and then convert that back to a CharList.

When we use record syntax in our newtype declarations, we get functions for converting between the new type and the original type: namely the value constructor of our newtype and the function for extracting the value in its field. The new type also isn't automatically made an instance of the type classes that the original type belongs to, so we have to derive or manually write them.

In practice, you can think of newtype declarations as data declarations that can only have one constructor and one field. If you catch yourself writing such a data declaration, consider using newtype.



        data keyword 

The data keyword is for making your own data types and with them, you can go hog wild. They can have as many constructors and fields as you wish and can be used to implement any algebraic data type by yourself. Everything from lists and Maybe-like types to trees.



        summary

If you just want your type signatures to look cleaner and be more descriptive, you probably want type synonyms. If you want to take an existing type and wrap it in a new type in order to make it an instance of a type class, chances are you're looking for a newtype. And if you want to make something completely new, odds are good that you're looking for the data keyword
