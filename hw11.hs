--function that calculates area of a circle
circleArea r = r * r * 3.14

--Use a list comprehension to remove all the numbers divisible by 3 in the list 
div3 xs = [x | x <- xs, mod x 3 /= 0]

--Use list comprehension to return all the numbers greater than 18 and divisible by 2 in the list 
div2 xs = [x | x <- xs, mod x 2 == 0, x > 18]

--Write a function that takes a list and an integer n as parameters and returns the nth item in the list
fun4 x n = x !! n

main = do
  putStrLn "Enter the radius: "
  rad <- getLine 
  let radius = read rad :: Double
  putStrLn "The area of the circle is:"
  print(circleArea radius)

  let list = [7, 9, 10, 12, 15, 19, 21, 22, 30]
  print(div3 list)

  let numbers = [12, 24, 25, 28, 30, 33, 35]
  print(div2 numbers)

  let nums = [1, 2, 3, 4]
  print(fun4 nums 2)
  print(fun4 nums 1)
  putStrLn ""