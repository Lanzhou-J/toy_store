class RemovePictureFromToys < ActiveRecord::Migration[6.0]
  def change

    remove_column :toys, :picture, :text
  end
end
