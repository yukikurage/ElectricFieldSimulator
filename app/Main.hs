{-# LANGUAGE NegativeLiterals #-}
{-# LANGUAGE RebindableSyntax #-}

module Main where

import           ElectricField
import qualified Graphics.Gloss as Gloss
import qualified Number.SI      as SI
import           NumericPrelude

window :: Gloss.Display
window = Gloss.InWindow "Hello World" (640, 480) (100, 100)

main :: IO ()
main = Gloss.display window Gloss.white
  (Gloss.translate (-150) (-10) . Gloss.scale 0.5 0.5 $ Gloss.text "Hello world")
