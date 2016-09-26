def floodfill(image, row, column, original_char, new_char)


  if image[row][column] == original_char
    image[row][column] = new_char

    if row+1 < image.length
      floodfill(image, row+1, column, original_char, new_char)
    end

    if row-1 >= 0
      floodfill(image, row-1, column, original_char, new_char)
    end

    if column+1 < image[0].length
      floodfill(image, row, column+1, original_char, new_char)
    end

    if column-1 >= 0
      floodfill(image, row, column-1, original_char, new_char)
    end

  end

end

def paint(image, row, column, new_char)

  original_char = image[row][column]

  floodfill(image, row, column, original_char, new_char)

end

def draw_image(image)

  puts

  image.each do |row|
    row.each do |element|
      print element
    end
    puts
  end

  puts

end

# Testing from here below

test_image = [[" ", " ", " ", " ", " ", " ", " ", " ", " ", "X", " ", " ", " ", " ", " "],
          ["X", "X", "X", "X", "X", "X", "X", "X", "X", "X", "X", " ", " ", " ", " "],
          [" ", "X", " ", " ", " ", " ", "X", " ", " ", " ", " ", " ", "X", " ", " "],
          [" ", "X", " ", " ", " ", " ", "X", " ", "X", "X", "X", "X", "X", " ", " "],
          [" ", "X", " ", " ", "X", " ", "X", " ", "X", " ", " ", " ", " ", "X", "X"],
          [" ", " ", "X", "X", " ", "X", " ", " ", "X", "X", " ", "X", " ", "X", " "],
          [" ", " ", " ", " ", " ", "X", " ", " ", "X", "X", " ", "X", " ", "X", " "],
          [" ", " ", " ", " ", "X", "X", " ", " ", " ", " ", "X", " ", " ", "X", " "],
          [" ", " ", " ", "X", " ", " ", "X", "X", "X", " ", " ", " ", "X", " ", " "],
          [" ", " ", "X", " ", " ", " ", " ", " ", " ", "X", "X", "X", " ", " ", " "],
          [" ", " ", "X", " ", " ", " ", " ", " ", " ", " ", " ", "X", " ", " ", " "],
          [" ", " ", "X", " ", " ", "X", "X", " ", " ", " ", " ", " ", "X", " ", " "],
          [" ", " ", "X", " ", " ", "X", " ", "X", " ", " ", " ", " ", "X", " ", " "],
          [" ", " ", "X", "X", "X", " ", " ", " ", "X", "X", "X", "X", "X", " ", " "],
          [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]]


puts "Image to fill: "

draw_image(test_image)

print "Character to fill with: "

char = gets.chomp.strip[0]

puts

print ("Fill from coordinates (row, column): ")

coords = gets.chomp.split(",")
row = Integer(coords[0].strip)
column = Integer(coords[1].strip)

paint(test_image, row, column, char)

puts

puts "Result:"

draw_image(test_image)
