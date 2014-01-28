class ChangeHeadersColumnToHeader < ActiveRecord::Migration
  def change
    rename_column :emails, :headers, :header
  end
end
