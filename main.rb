=begin
Coding Q1: Fives and Threes Only

Write a function that mimics the following described arithmetic operations.

Starting with either 3 or 5 and given these operations:
add 5
multiply by 3
You should say if it is possible to reach the target number n.

Examples
only5and3(14) ➞ true
// 14 = 3*3 + 5

only5and3(25) ➞ true
// 25 = 5+5+5+5+5

only5and3(7) ➞ false
// There exists no path to the target number 7
Notes
Only addition and multiplication arithmetic operations are allowed.
You can solve this problem recursively or algebraically. 

=end
def only5and3 number

  number3 = 0
  number5 = 0

  while(3 * number3 < number) do

    number5 = 0

    while(5 * number5 < number) do

      if (3*number3) + (5*number5) == number
        return true
      end
      number5 += 1
    end
    number3 += 1
  end

return false

end
=begin
Q2: Coding Challenge: Recursion: Case and Index Inverter

Write a recursive function that takes a string input and returns the string in a reversed case and order.

Examples
invert("dLROW YM sI HsEt") ➞ "TeSh iS my worlD"

invert("ytInIUgAsnOc") ➞ "CoNSaGuiNiTY"

invert("step on NO PETS") ➞ "step on NO PETS"

invert("XeLPMoC YTiReTXeD") ➞ "dExtErIty cOmplEx"
Notes
No empty strings and will neither contain special characters nor punctuation.
You are expected to solve this challenge using a recursive approach.
You can check on the Resources tab for more details about recursion in Java. 

=end
def invert input

  if input == ""
   return ""
  elsif input.size == 1
    if input[-1].upcase == input[-1]
      return input.downcase
    else
      return input.upcase
    end
  else
    if input[-1].upcase == input[-1]
      subStr = input[-1].downcase
      return subStr += invert(input[0..-2])
    else
      subStr = input[-1].upcase
      return subStr += invert(input[0..-2])
    end
  end


end

puts invert("XeLPMoC YTiReTXeD")

#puts only5and3(25)