--1 c
--2 a
--3 b Has to be from list?
--4 c

{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

oneA :: Num a => a
oneA = (* 9) 6 --54

oneB :: Num a => (a, String)
oneB = head [(0, "doge"),(1, "kitteh")]

oneC :: (Integer, String)
oneC = head [(0 :: Integer, "doge"), (1, "kitteh")]

oneD :: Bool
oneD = if False then True else False

oneE :: Int
oneE = length [1, 2, 3, 4, 5]

oneF :: Bool
oneF = (length [1, 2, 3, 4]) > (length "TACOCAT")

--Does it compile?
bigNum = (^) 5 $ 10
wahoo = (^) bigNum $ 10 --Couldn't do num $ num

x = print
y = print "woohoo!"
z = x "hello world" --fine

a = (+)
b = 5
c = a b 10
d = a c 200

m = 12 + n
n = 1000 * o where o = 1

--Type variable or specific type constructor?

--2 Fully polymorphic, concrete, concrete
--3 Fully polymorphic, constrained polymorphic, concrete
--4 Fully polymorphic, fully polymorphic, concrete

--Write a type signature
functionH :: [a] -> a
functionH (x:_) = x

functionC :: (Ord a) => a -> a -> Bool
functionC x y = if ( x > y ) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

--Given a type, write the function
i :: a -> a
i x = x

cc :: a -> b -> a
cc x y = x

cc'' :: b -> a -> b
cc'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = (bToC (aToB a))

aa :: (a -> c) -> a -> a
aa aToC a = a

aa' :: (a -> b) -> a -> b
aa' aToB a = aToB a
