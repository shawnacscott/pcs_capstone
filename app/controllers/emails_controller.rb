class EmailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @emails = Email.all
  end

  def create
    # Example of incoming post data from Mailgun and link to example of Rails controller: https://gist.github.com/shawnacscott/8224710
    # @incoming_email = Email.create(email_params)
  end

private

  def email_params
    params.permit(:recipient, :sender, :from, :subject, :body_plain, :stripped_text, :stripped_signature, :body_html, :stripped_html, :timestamp, :token, :signature, :message_headers, :content_id_map, :attachment_count)
  end
end
