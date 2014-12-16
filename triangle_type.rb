=begin
http://www.codewars.com/kata/53907ac3cd51b69f790006c5/train/ruby
In this kata, you should calculate type of triangle with three given sides a, b and c.
If all angles are less than 90°, this triangle is acute and function should return 1.
If one angle is strictly 90°, this triangle is right and function should return 2.
If one angle more than 90°, this triangle is obtuse and function should return 3.
If three sides cannot form triangle, or one angle is 180° (which turns triangle into segment) - function should return 0.
Input parameters are sides of given triangle. All input values are non-negative floating point or integer numbers (or both).
=end

include Math

def triangle_type (a, b, c)

  angle_array = []

  begin # exception handling for when acos is taking a perimeter that it can't calculate into a radian.
    angle_array << ((Math.acos((b**2.0 + c**2.0 - a**2.0)/(2.0*b*c))) * (180.0 / PI)).round(3)
    angle_array << (Math.acos((a**2.0 + c**2.0 - b**2.0)/(2.0*a*c)) * (180.0 / PI)).round(3)
    angle_array << (180 - (angle_array[0] + angle_array[1])).round(3)
  rescue
    return 0
  end

  sum = (angle_array.reduce {|sum, value| sum += value}).round(1)

  if sum != 180
    return 0
  end

  angle_array.each do |x|
    if x == 180
      return 0
    end
  end

  if angle_array[0] < 90 && angle_array[1] < 90 && angle_array[2] < 90
    return 1
  end

  angle_array.each do |x|
    if x == 90
      return 2
    end
  end

  angle_array.each do |x|
    if x > 90
      return 3
    end
  end

end
