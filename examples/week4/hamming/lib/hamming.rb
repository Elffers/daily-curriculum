# Implement a Hamming Class here:
#
class Hamming

  def self.compute(a, b)
    a = a.slice(0, b.length) if a.length > b.length
    @sum = 0
    i = 0
    while i < a.length
      @sum +=1 if a[i] != b[i]
      i +=1
    end 
  @sum

    # if string1 = string2
    #   difference = 0
    # if a.length == b.length 
    #   difference = 0
    #   n = (a.length) - 1
    #   (0..n).each do |index|
    #     if a[index] != b[index]
    #       difference +=1
    #     end
    #   end
    # else 
    # length = [string1.length, string2.length].min

  end #end compute

end  #end Hamming class

#Alternate solution

class Hamming
  def self.compute(string1, string2)
    a = string1.chars # same as a.split('') -- returns an array with each character as an element
    b = string2.chars

    result = a.zip(b).map{|a,b| a == b} 
    # zip compares the elements at matching indices of 2 arrays, and returns array of 2 element arrays, 
    #  which contain the corresponding elements from the parent arrays at that index. 
    #  If one array is longer than the other, the element of the return array at that index is a 1 element array
    
    # Then, we are mapping an array containing true or false based on if the 2 elements in the element array are the same

    result = result.select{|e| e == false}

    result.count
  end
end


