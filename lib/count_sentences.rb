require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    # binding.pry
    self.split(/[.?!]/).reject{|n|n==""}.count
  end
end