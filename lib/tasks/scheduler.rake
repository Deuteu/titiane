desc "This task is called by the Heroku scheduler add-on"
task :jared => :environment do
  t1 = Thread.new do
    puts "I'm awake! I'm awake."
    uri = URI.parse("http://titiane.herokuapp.com/")
    response = Net::HTTP.get_response(uri)
    puts response.inspect
    puts "I'm sorry for sleeping and for lying about it."
  end
  t1.join
end