class CreateJoinTableWaiterEvent < ActiveRecord::Migration
  def change
    create_join_table :waiters, :events do |t|
      # t.index [:waiter_id, :event_id]
      # t.index [:event_id, :waiter_id]
    end
  end
end
