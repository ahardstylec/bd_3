require 'test_helper'
require 'benchmark'
require Rails.root.join('app', 'models', 'answer.rb').to_s

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  Benchmark.bm do |bm|
    # joining an array of strings
    bm.report do
      (0..1000).each do
        q = Question.create(question: 'was ist das ?', author_email: 'ac@me.hallo', author_name: 'ac')
        (0..4).each do
          a=Answer.create(answer: 'das ist es', question_id: q.id)
        end
      end
    end
  end


end
