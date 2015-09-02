class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :name
      t.integer :vote
      t.string :invoke
      t.string :active_record
    end
  end
end
