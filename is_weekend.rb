# frozen_string_literal: true

time = Time.now
week_day = time.wday
if [6, 7].include?(week_day)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
