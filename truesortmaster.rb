word = ['beta', 'zeta', 'alpha', 'depha', 'cina', 'emma', 'bonny',
'falco']

# copy array to new unsorted array
unsorted = word

# initialize new sorted array
sorted = []
# initialize new unsorted array used in loop
new_unsorted = []

#first loop that ends when unsort is empty
while unsorted.length 
> 0


#this take the last position in the unsort array pops it off aand points
smallest variable at it.
smallest = unsorted.pop

#nested loop that does actually word comparison and finds smallest word
while creating a new array. It ends when it has cycled through array
  unsorted.each do |testword|
    if testword < smallest
      new_unsorted.push smallest
      smallest = testword
    else
      new_unsorted.push testword
    end
  end

#Adds smallest word to sort array
sorted.push smallest
#unsorted array now assigned to the new_unsorted which no longer has
smallest word in it before it loops back.
unsorted = new_unsorted
end

#prints out sorted array
puts sorted
puts
#prints out inital unsorted array
puts word
puts
#prints out initial unsorted array with sort method to QA
puts word.sort