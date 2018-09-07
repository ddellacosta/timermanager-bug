module Main where

import GHC.Event
import Control.Concurrent (threadDelay)

main = do
  tm <- getSystemTimerManager
  _ <- registerTimeout tm 100000 $ do
    putStrLn "timeout!"
  putStrLn "sleeping"
  threadDelay 200000
  putStrLn "wokeup"
