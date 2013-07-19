class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :day
      t.decimal :min
      t.decimal :max

      t.timestamps
    end
  end
end
