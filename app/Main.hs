{-# LANGUAGE ScopedTypeVariables #-}
module Main where

main :: IO ()
main = do
    putStrLn "現在の勤務時間?"
    currentOperatingTime :: Float <- readLn
    putStrLn "今月の最低稼働時間?"
    minimumUpTime :: Float <- readLn
    putStrLn "今月の残り稼働日数?"
    remainingOperatingDay :: Int <- readLn
    print $ minimumUpTimePerDay remainingOperatingDay $ remainingTime currentOperatingTime minimumUpTime

-- 最低稼働時間を満たすための残り稼働時間を算出
remainingTime :: Float -> Float -> Float
remainingTime currentTime minimumUpTime = minimumUpTime - currentTime

-- 1日あたりの最低稼働時間を算出
minimumUpTimePerDay :: Int -> Float -> Float
minimumUpTimePerDay remainingDay remainingTime = remainingTime / realToFrac (remainingDay :: Int)