class ChangeDateTypeForDuration < ActiveRecord::Migration[6.1]

  def up
    change_column :flights, :duration, :string
  end

  def down
    change_column :flights, :duration, :time
  end

end
