class AddSubjectToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :subject, :text
  end
end
