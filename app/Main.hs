module Main where

import Lib

main :: IO ()
main = do
    putStrLn $ show $ minimumUpTimePerDay 18 $ remainingTime 0.0 140.0

-- 最低稼働時間を満たすための残り稼働時間を算出
remainingTime :: Double -> Double -> Double
remainingTime currentTime minimumUpTime = minimumUpTime - currentTime

-- 1日あたりの最低稼働時間を算出
minimumUpTimePerDay :: Int -> Double -> Double
minimumUpTimePerDay remainingDay remainingTime = remainingTime / (realToFrac (remainingDay :: Int))