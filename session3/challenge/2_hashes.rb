# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)                                  # for a given number, you are returning all even numbers up to that number (not including)
  to_return = {}                                  # create empty hash
  1.upto n do |current_size|                      # count from 1 up to n & evoke block
    next if current_size.even?                    # next if size is even
    all = Array.new(current_size) { |i| i + 1 }   # create new array
    evens = all.select { |i| i.even? }            # select evens
    to_return[current_size] = evens
  end
  to_return
end
