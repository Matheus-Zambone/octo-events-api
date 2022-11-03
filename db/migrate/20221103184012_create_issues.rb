class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.jsonb :payload, null: false, default: '{}'
      t.integer :number, null: false

      t.timestamps
    end
    add_index :issues, :id, unique: true
    add_index :issues, :number
  end
end
