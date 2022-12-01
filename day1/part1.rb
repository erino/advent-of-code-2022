f = 'input'
input = File.read(File.join(__dir__, f))

current_elf = 1
max_calories = 0
calories = 0
elf = 0
current_elf = 0

input.split("\n").each do |line|
  line_calories = line.to_i
  if line_calories == 0
    if calories >= max_calories
      elf = current_elf
      max_calories = calories
    end
    current_elf += 1
    calories = 0
  else
    calories += line_calories
  end
end

puts ['elf:', elf, 'calories:', max_calories].to_s
