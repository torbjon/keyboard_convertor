# coding: utf-8
class String

  RU_EN = { 'q' => 'й', 'w' => 'ц', 'e' => 'у', 'r' => 'к', 't' => 'е', 'y' => 'н', 'u' => 'г', 'i' => 'ш', 'o' => 'щ', 'p' => 'з', '[' => 'х', ']' => 'ъ', 'a' => 'ф', 's' => 'ы', 'd' => 'в', 'f' => 'а', 'g' => 'п', 'h' => 'р', 'j' => 'о', 'k' => 'л', 'l' => 'д', ';' => 'ж', '\'' => 'э', '\\' => 'ё', 'z' => 'я', 'x' => 'ч', 'c' => 'с', 'v' => 'м', 'b' => 'и', 'n' => 'т', 'm' => 'ь', ',' => 'б', '.' => 'ю', 'Q' => 'Й', 'W' => 'Ц', 'E' => 'У', 'R' => 'К', 'T' => 'Е', 'Y' => 'Н', 'I' => 'Ш', 'O' => 'Щ', 'P' => 'З', '{' => 'Х', '}' => 'Ъ', 'A' => 'Ф', 'S' => 'Ы', 'D' => 'В', 'F' => 'А', 'G' => 'П', 'H' => 'Р', 'J' => 'О', 'K' => 'Л', 'L' => 'Д', ':' => 'Ж', '"' => 'Э', '|' => 'Ё', 'Z' => 'Я', 'X' => 'Ч', 'C' => 'С', 'V' => 'М', 'B' => 'И', 'N' => 'Т', 'M' => 'Ь', '<' => 'Б', '>' => 'Ю' }

  def data(options)
    if options && options[:from] && options[:to]
      String.const_get("#{options[:from]}_#{options[:to]}".upcase)
    else
      RU_EN
    end
  end

  def convert_keyboard(options = nil)
    data = self.data(options)

    new_word = self.each_char.map { |char| data[char].nil? ? char : data[char] }
    new_word.join('').force_encoding('UTF-8')
  end

end