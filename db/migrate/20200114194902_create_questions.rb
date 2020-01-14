class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.column(:query, :string)
      t.column(:response, :string)
      t.column(:survey_id, :integer)

      t.timestamps
    end
  end
end
