require 'byebug'

class String


  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def any_endmark
    sentence? ||
    question? ||
    exclamation?
  end

  def count_sentences
    count = 0
    array = self.split(" ")
    array.each do |element|
      if element[-1].any_endmark
        count +=1
      end
    end
    count
  end
end