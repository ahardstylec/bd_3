class Question
  include Cequel::Record
  has_many :answers

  key :id, :uuid, auto: true
  column :question, :text
  set :flaws, :text
  map :answers, :text, :boolean
  column :author_email, :text
  column :author_name, :text, :index => true

  def self.bulk_insert(insert_multifier)
    puts bench = Benchmark.measure {
       (1..100).each do |author_nummer|
         GC.start
         self.connection.batch do
        (1..10000*insert_multifier).each do |index|
          antworten={}
          (1..5).each do |anwsernum|
            antworten["antwort_#{anwsernum}"] = anwsernum% 5 == 0
          end
          Question.create(answers: antworten, author_email: "author_email_#{author_nummer}@author_email.de", author_name: "author_#{author_nummer}", question: "frage #{index}")
        end
        end
           end
         }
    bench
  end

  def self.select_from_author
    questions=nil
    bench= Benchmark.measure { questions = Question.where(author_name: "author_1").all }
    puts "select from author 1: #{questions.count}"
    puts bench
    bench
  end

  def self.select_count
    count=nil
    bench= Benchmark.measure { count= Question.count }
    puts "select count all questions: #{count}"
    puts bench
    bench
  end
end
