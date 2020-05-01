require 'pry'

class String

  def sentence?
    if self.end_with?(".")
            true
          else
            false
            
          end
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false 
  end

  def count_sentences
    self.split(" ").length
  end
end



s = String.new("one, two, three")
s

