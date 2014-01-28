class Email < ActiveRecord::Base
  require 'pry'
  # serialize :headers
  # serialize :raw_source
  # serialize :some_things will allow those things to be saved as YAML text to be parsed later rather than flattened

  def self.receive_mail(message)
    email = Email.new do |email|
      email.raw_source = message.to_s
      email.header = message.header.to_s
      email.original_recipient = message.from.first
      email.subject = message.subject
      if message.parts[1].body.decoded
        email.body = message.parts[1].body.decoded
        binding.pry
      else
        email.body = message.body.decoded
      end
    end
    email.save
  end
end