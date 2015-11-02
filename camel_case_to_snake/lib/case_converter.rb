class CaseConverter
  def lowercase_character(string)
    string.gsub(/(\A[A-Z])/) {|char| char.downcase}
  end

  def add_underscores(string)
    string.gsub(/[A-Z]/) {|char| "_#{char.downcase}"}
  end

  def camel_to_snake(string)
    add_underscores(lowercase_character(string))
  end

end
