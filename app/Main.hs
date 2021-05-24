{-# LANGUAGE NegativeLiterals #-}
{-# LANGUAGE RebindableSyntax #-}

module Main where

import           ElectricField
import qualified Number.SI      as SI
import           NumericPrelude

data ElectricCharge = ElectricCharge {
  ecA :: [SI.T Double Double],
  ecV :: [SI.T Double Double],
  ecX :: [SI.T Double Double],
  ecQ :: SI.T Double Double
}
-- ^ ecA : 加速度, ecV : 速度, ecX : 位置, ecQ : 電荷

main :: IO ()
main = putStrLn "Hello, Haskell!"
