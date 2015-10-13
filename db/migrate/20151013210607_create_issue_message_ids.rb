class CreateIssueMessageIds < ActiveRecord::Migration
  def change
    create_table :issue_message_ids do |t|
      t.references :issue, index: true, foreign_key: true
      t.string :message_id

      t.timestamps null: false
    end
    add_index :issue_message_ids, :message_id, unique: true
  end
end
