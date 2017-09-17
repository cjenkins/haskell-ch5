module Parametricity where

myId :: a -> a
myId x = x

aaa :: a -> a -> a
aaa x y = x

bbb :: b -> b -> b
bbb x y = y

--One implementation
--Behavior doesn't seem to change much based on type.  Always return b
abb :: a -> b -> b
abb x y = y
