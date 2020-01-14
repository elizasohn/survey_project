class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.column(:name, :string)

      t.timestamps()
    end
  end
end
