Result = []
Fn = File.readlines 'csv4rename.txt'
def add_suffix s
  Fn.each do |l|
    if /\.#{s}/.match l
      Result << (l.chomp + "\.#{s}")
    end
  end
end


add_suffix 'rar'
add_suffix 'zip'
add_suffix 'pdf'
add_suffix 'doc'
add_suffix 'mp3'
add_suffix 'txt'
add_suffix 'txt'
add_suffix 'exe'

p Result
    
File.open('dl-rename.txt', 'w') do |f|
  f.puts Result
end
