class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :strike
      t.boolean :done

      t.timestamps
    end
  end
end
