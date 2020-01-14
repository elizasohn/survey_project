class AddForeignKeyForQuestions < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :questions, :surveys
  end
end
