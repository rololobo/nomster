class AddPictureToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :Picture, :string
  end
end
