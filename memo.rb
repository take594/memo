require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i
#1が選択された場合
if memo_type==1
  puts "拡張子を除いたファイル名を入力してください"
  input = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Zを押します"
  #ファイルを作成し、書き込み → wモード
  CSV.open("#{input}.csv", "w") do |f|
    f << readlines(chomp:true)
  end
#2が選択された場合
elsif memo_type==2
  puts "拡張子を除いたファイル名を入力してください"
  input = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Zを押します"
  #既存のファイルに追記 → aモード
  CSV.open("#{input}.csv", "a") do |f|
    f << readlines(chomp:true)
  end
#1か2以外が選択された場合
else
  puts "#{1}か#{2}を入力してください"
end