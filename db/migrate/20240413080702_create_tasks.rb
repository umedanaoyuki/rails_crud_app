class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      # 初期状態ではタスクは未完了
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
