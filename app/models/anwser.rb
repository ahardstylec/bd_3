class Anwser
  include Cequel::Record
  belongs_to :question

  key :id, :uuid
  column :test, :text
  column :correct, :boolean
end