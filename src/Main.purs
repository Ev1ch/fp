module Main where

import Lab2

import Prelude (Unit, discard, (==), (>))
import Data.List (List(Nil), (:))
import Effect (Effect)
import Effect.Console (logShow)

main ∷ Effect Unit
main = do
  let xs = 1 : 2 : 2 : Nil
  let ys = 1 : 2 : 2 : 3 : Nil
  let zipped = zip xs ys

  logShow(findIndex (_ == 2) xs)
  logShow(findLastIndex (_ == 2) ys)
  logShow(zipped)
  logShow(unzip zipped)
  logShow(filter (_ > 1) xs)
  logShow(filterOptimized (_ > 1) xs Nil)
  logShow(take 2 xs)
  logShow(takeOptimized 2 xs Nil)


