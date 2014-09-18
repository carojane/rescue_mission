class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description, null: false

      t.references :question, index: true

      t.timestamps
    end
  end
end
