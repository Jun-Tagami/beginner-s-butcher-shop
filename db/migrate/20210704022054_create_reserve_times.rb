class CreateReserveTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :reserve_times do |t|

      t.timestamps
    end
  end
end
