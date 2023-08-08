class AddSiteNameToSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :settings, :site_name, :string
  end
end
