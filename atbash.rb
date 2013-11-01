class Atbash

  KEY = Hash[('a'..'z').zip(('a'..'z').to_a.reverse)]

  def self.encode(value)
    value.chars.map { |char| KEY[char] }.join
  end

end