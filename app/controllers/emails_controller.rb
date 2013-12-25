class EmailsController < ApplicationController
   skip_before_filter :verify_authenticity_token

   def index
    @emails = Email.all
   end

   def create
     # process various message parameters:
     recipient = params["recipient"]
     sender = params["sender"]
     from = params["from"]
     subject = params["subject"]
     body_plain = params["body-plain"]
     stripped_text = params["stripped-text"]
     stripped_signature = params["stripped-signature"]
     body_html = params["body-html"]
     stripped_html = params["stripped-html"]
     timestamp = params["timestamp"]
     token = params["token"]
     signature = params["signature"]
     message_headers = params["message-headers"]
     content_id_map = params["content-id-map"]

     # process all attachments:
     # attachment_count = params["attachment-count"].to_i
     # attachment_count.times do |i|
     #   stream = params["attachment-#{i+1}"]
     #   filename = stream.original_filename
     #   data = stream.read()
     # end
     render :text => "OK"
   end
end
