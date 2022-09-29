module Lab1 where

import Prelude((+))
import Data.List (List(Nil, Cons), (:))

singleton :: forall a. a -> List a
singleton element = element : Nil

null :: forall a. List a -> Boolean
null Nil = true
null _  = false

snoc :: forall a. List a -> a -> List a
snoc Nil a = a : Nil
snoc (Cons a _) b = a : b : Nil

length :: forall a. List a -> Int
length Nil = 0
length (Cons _ b) = 1 + length b