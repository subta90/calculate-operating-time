{-# LANGUAGE ScopedTypeVariables #-}
module Main where

main :: IO ()
main = do
    putStrLn "現在の勤務時間?"
    currentOperatingTime :: Double <- readLn
    putStrLn "今月の最低稼働時間?"
    minimumUpTime :: Double <- readLn
    putStrLn "今月の残り稼働日数?"
    remainingOperatingDay :: Int <- readLn
    print $ minimumUpTimePerDay remainingOperatingDay $ remainingTime currentOperatingTime minimumUpTime

-- 最低稼働時間を満たすための残り稼働時間を算出
remainingTime :: Double -> Double -> Double
remainingTime currentTime minimumUpTime = minimumUpTime - currentTime

-- 1日あたりの最低稼働時間を算出
minimumUpTimePerDay :: Int -> Double -> Double
minimumUpTimePerDay remainingDay remainingTime = remainingTime / (realToFrac (remainingDay :: Int))