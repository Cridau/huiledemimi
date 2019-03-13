class AddPhotoToOils < ActiveRecord::Migration[5.2]
  def change
    add_column :oils, :photo, :string
  end
end
