class Question
  include Cequel::Record
  has_many :answers

  key :id, :uuid, auto: true
  column :question, :text
  set :flaws, :text
  map :answers, :text, :boolean
  column :author_email, :text
  column :author_name, :text
end
