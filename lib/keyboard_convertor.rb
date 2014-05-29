# coding: utf-8
class String

  RU_LAYOUT = %q/ёЁ"№;:?йцукенгшщзхъфывапролджэячсмитьбю.ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭ\/ЯЧСМИТЬБЮ,/
  EN_LAYOUT = %q/`~@#$^&qwertyuiop[]asdfghjkl;'zxcvbnm,.\/QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>?/


  def convert_keyboard(options = nil)
    dir = is_ru_en(options)

    wrong_chars = dir ? RU_LAYOUT : EN_LAYOUT
    right_chars = dir ? EN_LAYOUT : RU_LAYOUT

    new_word = self.each_char.map { |char| (i = wrong_chars.index(char)).nil? ? char : right_chars[i] }
    new_word.join('').force_encoding('UTF-8')
  end

  private

  def is_ru_en(options)
    options && options[:from] == "ru" && options[:to] == "en"
  end
end