# Language: Ruby, Level: Level 3
#!/usr/bin/ruby
begin
  system("export HUBOT_CHATWORK_TOKEN=''")
  system("export HUBOT_CHATWORK_ROOMS=''")
  system("export HUBOT_CHATWORK_API_RATE='500'")
  system("bin/hubot -a chatwork")
rescue
  puts "exec error"
end
