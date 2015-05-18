class Question
  include Cequel::Record
  has_many :answers

  key :id, :uuid
  column :question, :text
  set :flaws, :text
  column :author_name, :text
  column :author_email, :text
end
