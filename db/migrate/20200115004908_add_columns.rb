class AddColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :response1, :string
    add_column :questions, :response2, :string
  end
end
