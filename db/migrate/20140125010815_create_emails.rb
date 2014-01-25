class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :raw_source, :original_recipient, :body, :headers, :rating

      t.timestamps
    end
  end
end
