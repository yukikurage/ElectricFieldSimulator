{-# LANGUAGE NegativeLiterals #-}
{-# LANGUAGE RebindableSyntax #-}

module ElectricField where

import qualified Algebra.Additive            as Additive
import qualified Algebra.Algebraic           as Algebraic
import qualified Algebra.Field               as Field
import qualified Algebra.NormedSpace.Maximum as NormedSpace
import qualified Algebra.Ring                as Ring
import qualified Algebra.Vector              as Vector
import qualified Control.Applicative         as Applicative
import qualified Data.Functor                as Functor
import qualified MathObj.Matrix              as Matrix
import qualified Number.SI                   as SI
import qualified Number.SI.Unit              as Unit
import           NumericPrelude
import qualified NumericPrelude.List.Checked as List

type ElectricField = [SI.T Double Double] -> [SI.T Double Double]
-- ^ 電場

-- | 電気定数
ε0 :: SI.T Double Double
ε0 = 8.854 * 10.0 ^- -12 * (SI.farad / SI.meter)

-- | 電場の計算
-- | qの電荷量を持った電荷をr1に置いた時の電場
calcEF :: SI.T Double Double -> [SI.T Double Double] -> ElectricField
calcEF q r1 r2 = (q / (4 * pi * ε0 * magnitude r ^ 3)) Vector.*> r
  where
  r = r2 - r1

magnitude :: Algebraic.C a => [a] -> a
magnitude xs = sqrt . Additive.sum1 $ List.zipWith (*) xs xs
