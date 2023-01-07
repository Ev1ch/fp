module Lab3.Test
  (test
  )
  where

import Lab3

import Effect (Effect)
import Effect.Console (log)
import Prelude (Unit, discard, ($), show, (==), (<), (>), (<=), (>=))

test :: Effect Unit
test = do
  log $ show $ Just 5 == Just 5 -- COMPILER ERROR!! ❶
  log $ show $ Just 5 == Just 2
  log $ show $ Just 5 == Nothing 
  log $ show $ Nothing == Just 5 
  log $ show $ Nothing == (Nothing :: Maybe Unit)
  log "------------------"
  log $ show $ Just 1 < Just 5 -- COMPILER ERROR!! ❷
  log $ show $ Just 5 <= Just 5 
  log $ show $ Just 5 > Just 10 
  log $ show $ Just 10 >= Just 10 
  log $ show $ Just 99 > Nothing
  log $ show $ Just 99 < Nothing 
  log "------------------"
  log $ show $ Just "abc"
  log $ show $ (Nothing :: Maybe Unit)

