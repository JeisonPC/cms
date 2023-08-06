class ChangeLogoTypeInSettings < ActiveRecord::Migration[7.0]
  def change
    remove_column :settings, :logo
    add_reference :settings, :logo, polymorphic: true
  end
end
