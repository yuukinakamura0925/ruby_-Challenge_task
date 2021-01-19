puts "旅行プランを選択してください."

puts <<~TEXT
       旅行プランを選択してください
       1.沖縄旅行（10000円）
       2.北海道旅行（20000円）
       3.九州旅行（15000円）
     TEXT

while true
  print "プランの番号を選択 > " 
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
    puts "1~3の番号から選んでください"
end


case plan_num
  when  1 
    place = "沖縄"
    price = 10000
  when  2
    place = "北海道"
    price = 20000  
  when  3
    place = "九州"
    price = 15000   
 end 

 puts "#{place}ですね"

puts "何名で予約されますか？"

while true 
  print "人数を入力 > "
  number_of_people = gets.to_i
  break if number_of_people > 0
  puts "1人以上を入力してください"
end

puts "#{number_of_people}名ですね"

total_price =  price * number_of_people

if number_of_people >= 5
  puts "5名以上ですので10%引きとなります"
  puts "合計料金は#{total_price * 9}円になります"
else
  puts "合計料金は#{total_price}円になります"  
end


