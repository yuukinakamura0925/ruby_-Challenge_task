puts "旅行プランを選択してください."


puts <<~TEXT
1.沖縄旅行（10000円）
2.北海道旅行（20000円）
3.九州旅行（15000円）
TEXT


print "プランの番号を選択 > " 
plan_num = gets.to_i


  if plan_num == 1
    puts "沖縄旅行ですね"
    pran_price = 10000
  elsif plan_num == 2
    puts "北海道旅行ですね"
    pran_price = 20000
  elsif plan_num ==  3
    puts "九州旅行ですね"
    pran_price = 15000    
  end


puts "何名で予約されますか？"
while true 
  print "人数を入力 > "
  reservations = gets.to_i
  puts "1人以上を入力してください"
  break if reservations > 0
end
puts "#{reservations}名ですね"

total_price = pran_price * reservations

if reservations >= 5
  puts "5名以上ですので10%引きとなります"
  puts "合計料金は#{total_price * 9/10}円になります"
else
  puts "合計料金は#{total_price}円になります"  
end



