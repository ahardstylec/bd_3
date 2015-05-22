namespace :db_benchmark do

  task run: :environment do
    Question.connection.schema.truncate_table(:questions)
    Question.bulk_insert(0.01)
    Question.select_from_author
    Question.select_count
    Question.connection.schema.truncate_table(:questions)
    STDOUT.flush

    Question.bulk_insert(0.05)
    Question.select_from_author
    Question.select_count
    Question.connection.schema.truncate_table(:questions)
    STDOUT.flush

    Question.bulk_insert(0.10)
    Question.select_from_author
    Question.select_count
    Question.connection.schema.truncate_table(:questions)
    STDOUT.flush
  end

end
