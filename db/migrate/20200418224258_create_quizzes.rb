class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :size
      t.string :area
      t.string :sunlight
      t.string :type

      t.timestamps
    end
  end
end
