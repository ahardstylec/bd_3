class CreateAnwsers < ActiveRecord::Migration
  def change
    create_table :anwsers do |t|
      t.text :text
      t.boolean :correct

      t.timestamps null: false
    end
  end
end
