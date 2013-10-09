class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :questions
      t.references :answers
      t.string :username
      t.string :password
      t.timestamps
    end
  end
end



