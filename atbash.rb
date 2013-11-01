class Atbash

  KEY = Hash[('a'..'z').zip(('a'..'z').to_a.reverse)]

  def self.encode(value)
    value.downcase.chars.map { |char| KEY[char] }.join.gsub(/(.{5})/, '\1 ')
  end

end