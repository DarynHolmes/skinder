class AddFkEventIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :event_id, :integer
    add_foreign_key :messages, :events, on_delete: :cascade
  end
end
