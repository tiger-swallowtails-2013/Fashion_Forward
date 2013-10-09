class CreateAnswers < ActiveRecord::Migration
  def change
      create_table :answers do |t|
      t.string :body
      t.boolean :YN
      t.timestamps
    end
  end
end
