class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :correct_answer
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.references :animal, index: true, null: false

      t.timestamps
    end
  end
end
