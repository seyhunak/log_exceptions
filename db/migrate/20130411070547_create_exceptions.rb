class CreateExceptions < ActiveRecord::Migration
  def change
    create_table :exceptions do |t|
      t.text :message

      t.timestamps
    end
  end
end
