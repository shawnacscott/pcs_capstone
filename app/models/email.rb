class Email < ActiveRecord::Base
  serialize :headers
  # serialize :some_things will allow those things to be saved as YAML text to be parsed later rather than flattened

  def self.receive_mail(message)
    Email.create raw_source: message.raw_source, original_recipient: message.from.first, body: message.body.decoded, headers: message.headers
  end
end