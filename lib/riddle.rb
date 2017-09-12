require('pry')
class Riddle
  attr_accessor(:question, :answer, :result)
  def initialize(question,answer)
    @question = question
    @answer = answer
  end
  @@dictionary = { "What has an eye but can not see?" => "needle", "Paul's height is six feet, he's an assistant at a butcher's shop, and wears size 9 shoes. What does he weigh?" => "meat", "What has a head and a tail, but no body?
  coin" => "coin"}
  def picker
    question = @@dictionary.keys.sample(2)
    @result = [@@dictionary.fetch(question[0])].push(@@dictionary.fetch(question[1]))
    @@dictionary.delete(question)
    question
  end
end
