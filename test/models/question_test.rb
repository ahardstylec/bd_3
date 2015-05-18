require 'test_helper'
require 'benchmark'

class QuestionTest < ActiveSupport::TestCase
  # test "cassandra insert test" do
  puts "Create 1 Million Question Records With 4 Answers"
    Benchmark.bm do |bm|
      # joining an array of strings
      bm.report do
        questions =[]
        (0..100).each do |author_nummer|
          (1..10000).each do |index|
            antworten={}
            (1..5).each do |anwsernum|
              antworten["antwort_#{anwsernum}"] = anwsernum% 5 == 0
            end
            questions<< Question.create(answers: antworten, author_email: "author_email_#{author_nummer}@author_email.de", author_name: "author_#{author_nummer}", question: "frage #{index}")
          end
        end
        # Question.connection.batch do
        #   questions.each(&:save)
        # end
      end
    end
    Question.connection.schema.truncate_table(:questions)
  # end
end

