# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|   # Iterates the given block for each element with an index,
      to_return << char if index.even?      # Adding to the empty string
    end
    to_return
  end
end
