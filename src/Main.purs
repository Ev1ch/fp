module Main
  ( main
  )
  where

import Prelude
import Effect (Effect)
import Lab3.Test as Lab3.Test

main :: Effect Unit
main = Lab3.Test.test
