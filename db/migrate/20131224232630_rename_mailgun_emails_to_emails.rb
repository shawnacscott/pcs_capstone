class RenameMailgunEmailsToEmails < ActiveRecord::Migration
  def self.up
    rename_table :mailgun_emails, :emails
  end

  def self.down
    rename_table :emails, :mailgun_emails
  end
end
