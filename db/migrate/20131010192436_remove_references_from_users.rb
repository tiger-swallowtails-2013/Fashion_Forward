class RemoveReferencesFromUsers < ActiveRecord::Migration
  def change
    remove_column(:users, :question_id)
    remove_column(:users, :answer_id)
  end
end
