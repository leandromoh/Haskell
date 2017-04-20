data Ball = Ball { x :: Int, y :: Int, xVel :: Int, yVel :: Int } deriving (Show)

createBall x' y' xVel' yVel' = Ball { x = x', y = y', xVel = xVel', yVel = yVel' }

move (Ball { x = x', y = y', xVel = xVel', yVel = yVel' }) = 
   let (newX, newXVel) = moveBoundary x' xVel' 0 10
       (newY, newYVel) = moveBoundary y' yVel' 0 10
   in createBall newX newY newXVel newYVel
   
  where 
     moveBoundary pos vel minB maxB
      | minB < pos' && pos' < maxB = (pos', vel)
      | otherwise = (pos - vel, -vel)
      where 
        pos' = pos + vel



main = print $ move $ move $ move $ createBall 0 0 3 4
