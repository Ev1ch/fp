module Main where

import Lab1

import Prelude (Unit, discard)
import Data.Foldable (for_)
import Effect (Effect)
import Effect.Console (logShow)

main ∷ Effect Unit
main = do
  let l1 = singleton 1

  logShow (null l1)

  let l2 = snoc l1 3
  for_ l2 \i → logShow i

  logShow (length l2)


