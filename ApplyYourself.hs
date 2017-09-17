module ApplyYourself where

myConcat :: [Char] -> [Char]
myConcat x = x ++ " yo"

myMult :: Fractional a => a -> a
myMult x = (x / 3) * 5

myCom :: Int -> Bool
myCom x = x > (length [1..10])

myAlpha :: Char -> Bool
myAlpha x = x < 'z'
