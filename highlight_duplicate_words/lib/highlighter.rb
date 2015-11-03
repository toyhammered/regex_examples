class Highlighter

  def find_duplicates(string)
    string.gsub(/\b([\w']+)\s(\1)\b/i) {"#{$1} <strong>#{$2}</strong>"}
  end

end

test = Highlighter.new
puts test.find_duplicates("test test is my favorite string")
puts test.find_duplicates("This test test is is")
puts test.find_duplicates("This this test is a test")
puts test.find_duplicates("cat dog dog cat dog")
puts test.find_duplicates("This nottest test is something")
puts test.find_duplicates("This is IS a test")
puts test.find_duplicates("<Mack> I'll I'll be be back back in in a a bit bit.")
