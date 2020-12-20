DISCOUNT_GROUP = 5
DISCOUNTS_RATE = 0.1
AFTER_DISCOUNT_RATE = 1 - DISCOUNTS_RATE

puts <<~TEXT
        旅行プランを選択して下さい。

        1. 沖縄旅行（10000円）
        2. 北海道旅行（20000円）
        3. 九州旅行（15000円）
TEXT

while true do
  print "プランの番号を選択 > "
  # プランの選択
  select_plan = gets.to_i
  break if (1..3).include?(select_plan)
  puts "1~3の番号を入力して下さい。"
end

case select_plan
when 1
  place = "沖縄"
  price = 10000
when 2
  place = "北海道"
  price = 20000
when 3
  place = "九州"
  price = 15000
end
puts "#{place}旅行ですね"

puts "何名で予約されますか？"
while true do
  print "人数を入力 > "
  # 人数の入力
  numbers = gets.to_i
  break if numbers > 0
  puts "1以上を入力して下さい。"
end
puts "#{numbers}名ですね"

# トータル金額の計算
total_price = price * numbers

if numbers >= DISCOUNT_GROUP
  # 割引の計算
  puts "#{numbers}名ですので#{(DISCOUNTS_RATE * 100).floor}%割引となります"
  total_price *= AFTER_DISCOUNT_RATE
end
puts "合計料金は#{total_price.floor}円になります。"