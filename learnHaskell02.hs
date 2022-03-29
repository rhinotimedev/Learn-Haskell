
-- first functions, lists

{- keep in mind.. 
    can use functions within functions
    functions can't begin with uppercase letters
    a function that takes no perameters could call a 'definition'
    -}


multiplyTwoNum x y = (x*y)

-- if statements in Haskell, the 'else' part is mandatory!!
    -- every function needs to return something, self-contained in a way..

guess x = if x == 50
    then "Nice job! How did you possibly guess that??"
    else "Try again!"

-- ^^ this could of been written on one line, 'then'/'else' dividing, but cleaner this way

-- no perameter function below

rhino = "rhino rhino rhino roar"


-- example list here.
-- lists denoted by [] and , seperates values within

exampleList = [8,50,10,2,-2]

-- strings like "rhino" are just lists really, [r,h,i,n,o]
-- use ++ to put strings/lists together
    -- beware using ++, adding to the end of a string haskell walks through entire string.
        -- use : instead to add to the front, which is instant
            -- : takes ONE SINGLE number/letter on left, and list of the same type on right side
                -- EXAMPLE: 'A' : " Rhino"
                -- RETURNS: "A rhino"


-- !! X returns the X character of the given string. 
    -- Count starts at 0 of course..
    -- EXAMPLE: "rhino" !! 2
    -- RETURNS: "i" (remember count starts at 0)

-- Can have lists within lists. Just still has to be same type!!
    -- [] is one empty list
    -- [[][][]] is one list of three empty lists

-- you can compare lists if the values comparable (>/< ==)

{- other commands
    head [] -> gives the 1st element in the list
    tail [] -> gives everything but the head lol
    last []
    init [] -> everything but the last one
    lenght [] -> gives number of elements
    null [] -> checks if empty (true means empty)
    reverse []
    take X [] -> takes the first X elements
    drop X [] -> drops the first X elements off the list
    maximum []
    minimum []
    sum []
    product []
    elem X [] -> is X in the list? True/False

-}

-- quick large lists if 'auto filable' via ..
    --EXAMPLE: [1..20] will give list 1-20
    --EXAMPLE: [3,6..20] will give list every third number to 20 (yep, it will stop at 18!)

-- INFINATE LISTS
    -- how about multiples of 12, [12,24..]
        -- because Haskell is lazy this is ok, waits to hear what you want to pull from this. Nice

{- Commands invoking infinate lists!
    cycle -> takes finate list, repeats it infinately
    repeat X -> take X character, puts that on cycle
        EXAMPLE: take 10 (repeat 5)
        RETURNS: [5,5,5,5,5,5,5,5,5,5]
-}

{- For more advanced list 'generation', use LIST COMPREHENSION
    So to get first 10 even numbers,
        instead of doing Take 10 [2,4..]
        [x*2 | x <- [1..10]]
            ^^ that says for list of 1-10, every value double it.

            ADD CONDITIONS IF YOU WANT, by ,
            How about first 10 even numbers, only if <=10
                [x*2 | x <- [1..10], x*2<=10]

        ^^ think of this as filtering!!


-}

-- MORE ADVANCED LIST COMPREHENSION NEEDED

-- Tuples - like lists, but set # of elements, can be different types. 
    --Use brackets () instead of big brackets []
    {- Tuple functions
        fst -> gives first component
        snd -> gives second component
        zip -> will combine two lists, into tuples, pairing each element off together.
            if one list longer than other, it will just cut off at shorter one
        -}

{- TUPLE + LIST COMPREHENSION COOL/POWERFUL EXAMPLE
     which right triangle that has all sides equal to or smaller than 10 and has a perimeter of 24?
    first, list all possible triangles (no side greater than 10..)
        ghci> let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ] 
    better below, acknowledges triangle relationship in the lists and criteria must be right triangle
        ghci> let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] 
    the home run, last criteria added, permiter equal 24
    ghci> let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
     -}

