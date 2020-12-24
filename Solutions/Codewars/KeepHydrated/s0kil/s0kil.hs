import Prelude (Double, Integer, floor, (*))

litres :: Double -> Integer
litres hours = floor (hours * 0.5)
