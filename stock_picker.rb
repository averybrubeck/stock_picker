#gets the greatest difference in array assuming the lowest number has to come first
#returns the index of lowest number, followed by index of highest number

default_input = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts "Enter a list of numbers separated by spaces: "
input = gets.chomp.split.map(&:to_f)

if input.length < 2
  puts "At least 2 numbers needed. Using the default dataset: #{default_input.join(' ')}"
  input = default_input
end

def stock_picker(prices)
  results = prices.each_with_index.to_a.combination(2).max_by { |buy, sell| sell[0] - buy[0] }.map { |price, i| i }
end

result = stock_picker(input)
puts result