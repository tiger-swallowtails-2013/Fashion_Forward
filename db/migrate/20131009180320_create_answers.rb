class CreateAnswers < ActiveRecord::Migration
  def change
      create_table :answers do |t|
      t.references :questions
      t.references :users
      t.string :body
      t.boolean :YN
      t.timestamps
    end
  end
end
