class ChangeDescriptionToBeStringInLoops < ActiveRecord::Migration[5.2]
  def change
    change_column :loops, :description, :string
  end
end
