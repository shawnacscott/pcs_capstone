desc "Poll for email"
task :receive_email => :environment do
  system(File.join(Rails.root, 'script/mailman_script'))
end
