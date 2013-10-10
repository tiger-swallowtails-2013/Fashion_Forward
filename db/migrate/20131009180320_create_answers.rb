class CreateAnswers < ActiveRecord::Migration
  def change
      create_table :answers do |t|
      t.references :question
      t.references :user
      t.string :body
      t.timestamps
    end
  end
end
