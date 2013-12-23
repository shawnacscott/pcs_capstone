# Columns named based on reported parsed message types sent from Mailgun: http://documentation.mailgun.com/user_manual.html#parsed-messages-parameters

class AddDetailsToMailgunEmails < ActiveRecord::Migration
  def change
    add_column :mailgun_emails, :recipient, :string
    add_column :mailgun_emails, :sender, :string
    add_column :mailgun_emails, :from, :string
    add_column :mailgun_emails, :subject, :string
    add_column :mailgun_emails, :body_plain, :string
    add_column :mailgun_emails, :stripped_text, :string
    add_column :mailgun_emails, :stripped_signature, :string
    add_column :mailgun_emails, :body_html, :string
    add_column :mailgun_emails, :stripped_html, :string
    add_column :mailgun_emails, :attachment_count, :integer
    add_column :mailgun_emails, :attachment_x, :string
    add_column :mailgun_emails, :timestamp, :integer
    add_column :mailgun_emails, :token, :string
    add_column :mailgun_emails, :signature, :string
    add_column :mailgun_emails, :message_headers, :string
    add_column :mailgun_emails, :content_id_map, :string
  end
end
