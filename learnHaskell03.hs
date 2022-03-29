
{- General notes 

Haskell has type inference - no need to specify types

:t X will give back the type of X (whatever haskell reads it to be). Use on entire functions no problem.
        EXAMPLE: ghci> :t True  
        OUTPUT: True :: Bool 
            :: read as "has type of"

Explicit types are always denoted with the first letter in capital case!

For functions, make type declarations! Good practice to do, unless super super simple ones.
    Function Name :: ("has type of") TYPE Input1 -> TYPE Input2 -> TYPE Output
        addThree :: Int -> Int -> Int -> Int  
        addThree x y z = x + y + z 

Common types
    Int -  whole numbers, bounded (32bit machines +/- 2,147,483,647)
    Integer - same as int but huge, can show massive numbers. Still no decimal
    Float - a few decimal places
    Double - double the decimal places of float
    Bool - True/False of course
    Char - A character.

Type classes
    the == function, requires the types to be Eq class, to be able to compare them.
        ghci> :t (==)  
        (==) :: (Eq a) => a -> a -> Bool  

    Eq - types that support equality testing
    Ord - types that have an ordering (needed for >/<)
        "To be a member of Ord, a type must first have membership in the prestigious and exclusive Eq club." lol"
    Show - can be presented as strings
        show X function is like printf in c it seems, just show X, any class. It will show it as a string
    Read - oppisite of show class. Readable string and presentable as different type.
        read X function takes string, and reads it out in different type
                ghci> read "5" :: Int  
                5  
                ghci> read "5" :: Float  
                5.0  
                    ^^ telling Haskell what the type should be once reading. Sort of similar as type declaration.

    Enum - sequentially ordered types (they can be enumerated).
    Num - numeric typeclass. Can act like numbers


-}

