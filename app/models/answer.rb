class Answer
  include Cequel::Record
  belongs_to :question

  key :id, :uuid, auto: true
  column :answer, :text
  column :correct, :boolean
end