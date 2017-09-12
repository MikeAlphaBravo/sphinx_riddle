require('pry')
class Riddle
  attr_accessor(:question, :answer, :result)
  def initialize(question)
    @question = question
    @answer = answer
  end
  @@dictionary = { "question1" => "answer1", "question2" => "answer2", "question3" => "answer3", "question4" => "answer4", "question5" => "answer5" }
  def picker
    @question = @@dictionary.keys.sample()
    @result = @@dictionary.fetch(@question)
    @@dictionary.delete(@question)
    @question
  end
end
