class Email < ActiveRecord::Base
  def self.receive_mail(message)
    Email.create subject: message.subject, body_plain: message.body.decoded, from: message.from.first
  end
end