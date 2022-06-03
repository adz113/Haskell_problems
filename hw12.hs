--Use guards to create a function called guess which takes one Int parameter.
guess x
  | mod x 2 == 0 = "Multiple of 2."
  | mod x 3 == 0 = "Multiple of 3."
  | mod x 5 == 0 = "Multiple of 5."
  | otherwise = "Not a multiple of 2, 3, or 5."

--Write a recursive function to count the number of items in a list
count :: [a] -> Int
count [] = 0
count(x:xs) = 1 + count xs

--Write a recursive function to count the numbers of a particular element in a list 
countElem :: Integer -> [Integer] -> Integer
countElem n [] = 0
countElem n (x:xs) = 
  if n == x then
    1 + countElem n xs
  else
    countElem n xs

--Write a Haskell function to calculate ticket prices. 
tickets :: String -> Double -> Double
tickets person number
  | person == "child" = 8.50 * number
  | person == "adult" = 14.50 * number
  | person == "senior" = 9.00 * number

main = do
  print(guess 16)
  print(guess 9)
  print(guess 25)
  print(guess 7)
  putStrLn ""

  print(count["apple", "banana", "strawberry"])
  putStrLn ""

  print(countElem 3 [1,2,3,3,4,5])
  putStrLn ""

  putStrLn "Please enter type of ticket: "
  person <- getLine
  putStrLn "Please enter number of tickets: "
  num <- getLine
  let number = read num :: Double
  putStrLn "Price will be: "
  print(tickets person number)
  putStrLn ""