require 'test_helper'
require 'benchmark'

class QuestionTest < ActiveSupport::TestCase
  test "Create 1 Million Question Records With 4 Answers" do
    Question.bulk_insert(1)
  end
  test "Create 5 Million Question Records With 4 Answers" do
    Question.bulk_insert(5)
  end
  test "Create 10 Million Question Records With 4 Answers" do
    Question.bulk_insert(10)
  end
end

