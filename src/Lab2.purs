module Lab2 where

import Data.List (List(..), length, reverse, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Prelude ((+), (-), (>))

findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex p = step 0
  where
    step :: Int -> List a -> Maybe Int
    step i (x : xs) = 
      if p x 
      then Just i 
      else step (i + 1) xs
    step _ Nil = Nothing

findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex p xs = 
  case findIndex p (reverse xs) of
    Nothing -> Nothing
    Just index -> Just (length xs - 1 - index)

zip :: forall a b. List a -> List b -> List (Tuple a b)
zip (x : xs) (y : ys) = (Tuple x y) : zip xs ys
zip Nil _ = Nil
zip _ Nil = Nil

map :: forall a b. (a -> b) -> List a -> List b
map p (x : xs) = (p x) : (map p xs)
map _ Nil = Nil

unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip xs = Tuple (map (\(Tuple x _) -> x) xs) (map (\(Tuple _ y) -> y) xs)

filter :: forall a. (a -> Boolean) -> List a -> List a
filter p (x : xs) = 
  if p x
  then x : filter p xs
  else filter p xs
filter _ Nil = Nil

take :: forall a. Int -> List a -> List a
take n (x : xs) = 
  if n > 0
  then x : take (n - 1) xs
  else Nil
take _ Nil = Nil

filterOptimized :: forall a. (a -> Boolean) -> List a -> List a -> List a
filterOptimized p (x : xs) ys = 
  if p x
  then filterOptimized p xs (x : ys)
  else filterOptimized p xs ys
filterOptimized _ Nil ys = reverse ys

takeOptimized :: forall a. Int -> List a -> List a -> List a
takeOptimized n (x : xs) ys = 
  if n > 0
  then takeOptimized (n - 1) xs (x : ys)
  else reverse ys
takeOptimized _ Nil ys = reverse ys