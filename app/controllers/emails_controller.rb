class EmailsController < ApplicationController
   skip_before_filter :verify_authenticity_token

   def index
    @emails = Email.all
   end

   def create
     # process various message parameters:
     sender  = params['from']
     subject = params['subject']

     # get the "stripped" body of the message, i.e. without
     # the quoted part
     actual_body = params["stripped-text"]

     # process all attachments:
     count = params['attachment-count'].to_i
     count.times do |i|
       stream = params["attachment-#{i+1}"]
       filename = stream.original_filename
       data = stream.read()
     end
     render :text => "OK"
   end
end