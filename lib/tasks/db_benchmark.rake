namespace :db_benchmark do

  task run: :environment do
    # Question.connection.schema.truncate_table(:questions)
    # Question.bulk_insert(1)
    # Question.select_from_author
    # STDOUT.flush
    # Question.select_from_author
    # STDOUT.flush
    # Question.select_count
    # Question.select_count
    # STDOUT.flush
    #
    # Question.bulk_insert(5)
    # Question.select_from_author
    # Question.select_from_author
    # # Question.select_count
    # Question.connection.schema.truncate_table(:questions)
    # STDOUT.flush
    #
    Question.bulk_insert(9)
    # Question.select_from_author
    # Question.select_from_author
    # # Question.select_count
    # Question.connection.schema.truncate_table(:questions)
    # STDOUT.flush
  end

end
