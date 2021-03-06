def do_stuff(ar)
  number_book = {}
  dups = []
  ar.each do |el|
    if number_book.key?(el)
      number_book[el] += 1
    else
      number_book[el] = 1
    end
  end
  puts number_book.key(number_book.values.max)
end

inputs = [[1, 2, 3, 1, 5],
          [4376, -345, -345, 4376, -345, 84_945, 4376, -345, -26_509, 4376, 84_945, 84_945, -26_509, 896_341, 4376],
          [2367, -65_326, 134, -185_007, 3291, 7832, -65_326, 789, 980, -3289, 3490],
          [85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111],
          [10, 10, 20, 30, 20, 20],
          [3, 2, 19, 4, 19, 19, 3, 2],
          [3_594_976, 2340, 3_594_976, 74_390, -453_894, 32_076, 42, 7888, -21_085, -320_566]]

inputs.each { |item| do_stuff(item) }
