f = 'input'
input = File.read(File.join(__dir__, f))

current_elf = 1
calories = 0
top_calories = [0, 0, 0]
current_elf = 0

input.split("\n").each do |line|
  line_calories = line.to_i
  if line_calories == 0
    if calories >= top_calories.min
      top_calories.shift
      top_calories.push(calories)
      top_calories.sort!
    end
    current_elf += 1
    calories = 0
  else
    calories += line_calories
  end
end

puts top_calories.sum
