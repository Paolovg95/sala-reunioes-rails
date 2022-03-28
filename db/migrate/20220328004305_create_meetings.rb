class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.integer :time
      t.string :day

      t.timestamps
    end
  end
end
