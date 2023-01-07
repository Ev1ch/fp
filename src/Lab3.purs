module Lab3
  ( Maybe(..)
  , greaterThanOrEq
  )
  where

import Data.Eq (class Eq)
import Data.Ord (class Ord, Ordering(..), compare)
import Data.Show (class Show, show)
import Prelude ((==), (>=), (<>))

data Maybe a = Nothing | Just a

instance eqMaybe :: Eq a => Eq (Maybe a) where
  eq Nothing Nothing = true
  eq (Just x) (Just y) = x == y
  eq _ _ = false

instance ordMaybe :: Ord a => Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare (Just x) (Just y) = compare x y
  compare _ Nothing = GT
  compare _ _ = LT

greaterThanOrEq ∷ forall a. Ord a ⇒ Maybe a → Maybe a → Boolean
greaterThanOrEq Nothing Nothing = true
greaterThanOrEq (Just x) (Just y) = x >= y
greaterThanOrEq _ _ = true

instance showMaybe :: Show a => Show (Maybe a) where
  show (Just x) = "Just " <> show x
  show _ = "Nothing"
