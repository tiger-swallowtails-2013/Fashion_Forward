class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :answers
      t.references :users
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
