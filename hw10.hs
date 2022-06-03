--Write a Haskell function that prints the word “Even” or “Odd” depending on whether a given number passed to the function is even or odd.
isEven numb = if mod numb 2 == 0 then True else False

average one two three four = (one+two+three+four)/4

--Write a Haskell function that asks the user for their first-name and prints out “Happy Birthday first-name!”
happyBD name = "Happy Birthday " ++ name

--Write a Haskell function, fun20, that multiplies a number by 20.  Now write another function, fundiv2, that divides a number by 2. Pass the fun20 function to the fundiv2 function.
fun20 number = number*20
fundiv2 num = num/2

main = do

  if isEven 5 == True then putStrLn("Even") else putStrLn("Odd")

  print(average 5 4 6 4)

  putStrLn "What is your name?"
  name<-getLine
  print(happyBD name)

  print(fundiv2(fun20 3))

  putStrLn ""