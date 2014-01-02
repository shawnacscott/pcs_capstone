class EmailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @emails = Email.all
  end

  def create
    :recipient = params["recipient"]
    :sender = params["sender"]
    :from = params["from"]
    :subject = params["subject"]
    :body_plain = params["body-plain"]
    :stripped_text = params["stripped-text"]
    :stripped_signature = params["stripped-signature"]
    :body_html = params["body-html"]
    :stripped_html = params["stripped-html"]
    :timestamp = params["timestamp"]
    :token = params["token"]
    :signature = params["signature"]
    :message_headers = params["message-headers"]
    :content_id_map = params["content-id-map"]
    :attachment_count = params["attachment-count"]

    @incoming_email = Email.create(email_params)
  end

private

  def email_params
    # # process various message parameters:
    # :recipient = params["recipient"]
    # :sender = params["sender"]
    # :from = params["from"]
    # :subject = params["subject"]
    # :body_plain = params["body-plain"]
    # :stripped_text = params["stripped-text"]
    # :stripped_signature = params["stripped-signature"]
    # :body_html = params["body-html"]
    # :stripped_html = params["stripped-html"]
    # :timestamp = params["timestamp"]
    # :token = params["token"]
    # :signature = params["signature"]
    # :message_headers = params["message-headers"]
    # :content_id_map = params["content-id-map"]
    # :attachment_count = params["attachment-count"]

    params.permit(:recipient, :sender, :from, :subject, :body_plain, :stripped_text, :stripped_signature, :body_html, :stripped_html, :timestamp, :token, :signature, :message_headers, :content_id_map, :attachment_count)

    # Hash keys found in test post: ["Content-Type", "Date", "From", "In-Reply-To", "Message-Id", "Mime-Version", "Received", "References", "Sender", "Subject", "To", "User-Agent", "X-Mailgun-Variables", "attachment-count", "body-html", "from", "message-headers", "stripped-signature", "stripped-text", "subject", "timestamp"]

    # process all attachments:
    # attachment_count = params["attachment-count"].to_i
    # attachment_count.times do |i|
    #   stream = params["attachment-#{i+1}"]
    #   filename = stream.original_filename
    #   data = stream.read()
    # end
    # render :text => "OK"
  end
end
