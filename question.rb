class Question
  attr_accessor :firstInteger, :secondInteger

  def initialize()
    @firstInteger=rand(1..10)
    @secondInteger=rand(1..10)
  end

  def new_question
    "What does #{firstInteger} plus #{secondInteger} equal?"
  end

  def question_answer
    return @firstInteger + @secondInteger
  end
end