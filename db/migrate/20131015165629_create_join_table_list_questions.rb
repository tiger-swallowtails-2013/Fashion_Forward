class CreateJoinTableListQuestions < ActiveRecord::Migration
  def change
    create_table :list_questions do |t|
      t.references :list
      t.references :question
      t.timestamps
    end
  end
end
