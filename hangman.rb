# frozen_string_literal: true

def create_letters
  check_word(ARGV[0])
  ARGV[0].split('')
end

def check_word(word)
  abort 'Вы не ввели слово для игры' if word.nil? || word.empty?
end

def process_user_input
  letter = ''
  letter = $stdin.gets.chomp while letter == ''
  letter
end

def check_result(user_input, letters, good_letters, bad_letters)
  return false if good_letters.include?(user_input) || bad_letters.include?(user_input)

  if letters.include?(user_input)
    good_letters << user_input
    letters.uniq.size == good_letters.size
  else
    bad_letters << user_input
    false
  end
end

def generate_word_for_print(letters, good_letters)
  letters.map { |letter| good_letters.include?(letter) ? letter : '_' }.join(' ')
end

def print_word(letters, good_letters)
  puts "\nСлово: #{generate_word_for_print(letters, good_letters)}"
end

def print_error_count(bad_letters)
  puts "Количество ошибок #{bad_letters.size}: #{bad_letters.join(', ')}"
end

def print_status(letters, good_letters, bad_letters)
  print_word(letters, good_letters)
  print_error_count(bad_letters)
  puts 'Вы проиграли :(' if bad_letters.size >= 7
end

letters = create_letters
bad_letters = []
good_letters = []

while bad_letters.size < 7
  print_status(letters, good_letters, bad_letters)
  puts 'Введите следующую букву'
  user_input = process_user_input
  break if check_result(user_input, letters, good_letters, bad_letters)
end

print_status(letters, good_letters, bad_letters)
