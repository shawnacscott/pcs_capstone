class Email < ActiveRecord::Base
  # serialize :some_things will allow those things to be saved as YAML text to be parsed later rather than flattened
  
  def self.receive_mail(message)
    Email.create body_plain: message.raw_source, message_headers: message.headers.to_s
  end
end