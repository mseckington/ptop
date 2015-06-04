class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :image
      t.string :description

      t.timestamps null: false
    end
  end
end
