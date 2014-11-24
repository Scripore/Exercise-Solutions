=begin




INCOMPLETE - Still in Progress



Towers of Hanoi game
http://en.wikipedia.org/wiki/Tower_of_Hanoi
"The Tower of Hanoi (also called the Tower of Brahma or Lucas' Tower,[1] and sometimes pluralized) is a mathematical game or puzzle. "

pseudocode

get user input
select a tower.
if no disc in selected tower, display error and prompt user for another selection
if a disc is in selected tower then prompt user to select which tower to move it to
check to see if destination tower has discs greater than disc being move.
if not then display error and prompt user for another selection.
if yes then move the disc and prompt user for another selection
loop user selection until all numbers are in tower3. when that occurs alert user game is complete.
bonus: keep and display a count of how many movements of discs have occured. 

should I use #sort to keep elements in order that push an element to an array? this way I can do a comparison check on the value of the element being moved to the first element of the array/tower.

=end

tower1 = [1,2,3]
tower2 = []
tower3 = []

completed_tower = [1,2,3]
# when completed_tower = tower1 the while loop keep continuing even after tower3 is complete. when completed_tower = [1,2,3] the while loop stops. why?


disc = 0

is_tower3_complete = false
# if tower3 == completed_tower. change is_tower3_complete to true


while is_tower3_complete == false do

puts "enter 1, 2, or 3 to select corresponding tower."

tower_selection = gets.to_i

puts "enter 1, 2, or 3 to move to corresponding tower"

tower_destination = gets.to_i

  if tower_selection == tower_destination

  puts "you have picked the same tower."


  else

    if tower_selection == 1 && tower_destination == 2
      if tower2[0].nil?
        tower2 << tower1.shift
      else
        if tower1[0] < tower2[0] 
          tower2 << tower1.shift
        else
          puts "try again! destination tower contains a disc smaller than currently selected disc."
        end
      end
    end

    if tower_selection == 1 && tower_destination == 3
      tower3 << tower1.shift
    end

    if tower_selection == 2 && tower_destination == 1
      tower1 << tower2.shift
    end

    if tower_selection == 2 && tower_destination == 3
      tower3 << tower2.shift
    end

    if tower_selection == 3 && tower_destination == 1
      tower1 << tower3.shift
    end

    if tower_selection == 3 && tower_destination == 2
      tower2 << tower3.shift
    end



  p tower1
  p tower2
  p tower3


  end

  if tower3 == completed_tower
    is_tower3_complete = true
    puts "Tower 3 is complete!! :O CONGRATULATIONS!! "
  end

end

p tower1
p tower2
p tower3