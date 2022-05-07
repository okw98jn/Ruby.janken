def janken
 
  puts "じゃんけん..."
  puts "0[グー] 1[チョキ] 2[パー] 3[戦わない]"

  my_hand = gets.chomp.to_i
  program_hand = rand(3)
  jankens = ["グー", "チョキ", "パー"]

  if my_hand == 3
    puts "いつでもお待ちしています"
    return
  elsif my_hand > 3
    puts "0~3を入力してください"
    return
  end

  puts "ぽん！"
  puts "-----------------------------"
  puts "あなた:#{jankens[my_hand]}"
  puts "あいて:#{jankens[program_hand]}"
  puts "-----------------------------"

  if my_hand == program_hand
    puts "あいこ"
    janken
  elsif my_hand == 0 && program_hand == 1 || my_hand == 1 && program_hand == 2 || my_hand == 2 && program_hand == 0
    atti_hoi("勝ち")
  else
    atti_hoi("負け")
  end
end

def atti_hoi(result)
  puts "あっち向いて~"
  puts "0[上] 1[右] 2[下] 3[左]"
  my_hand = gets.chomp.to_i
  program_hand = rand(4)
  hois = ["上", "右", "下", "左"]
  puts "ほい！"
  puts "-----------------------------"
  puts "あなた:#{hois[my_hand]}"
  puts "あいて:#{hois[program_hand]}"
  puts "-----------------------------"
  if my_hand == program_hand
    puts "あなたの#{result}です"
  else 
    janken
  end
end

janken
