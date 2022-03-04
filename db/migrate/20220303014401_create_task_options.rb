class CreateTaskOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :task_options do |t|
      t.string :content
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
