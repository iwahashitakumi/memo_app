require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
puts "1か2を入力してください"

memo_type = gets.to_i 



if memo_type == 1
 puts "拡張子を除いたファイルを入力してください"
 file_name = gets.chomp
 puts "メモの内容を記入してください"
 puts "完了したらCtrl + Dを押します"
 memo = STDIN.read
 
 csv = CSV.open("#{file_name}.csv" , "w") 
 csv.puts ["#{memo}"]
 csv.close

elsif memo_type == 2
 puts "既存のファイルを編集します"
 puts "拡張子を除いた既存のファイルを入力してください"
  file_name = gets.chomp
  puts "メモの内容を記入してください"
　puts "完了したらCtrl + Dを押します"
  memo = STDIN.read
　
　csv = CSV.open("#{file_name}.csv", "a") 
　csv.puts ["#{memo}"]
　csv.close
else
  puts "1か2を記入してください"
end

