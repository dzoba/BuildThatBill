@github = Github.new do |config|
  config.endpoint    = 'https://api.github.com'
  config.adapter     = :net_http
  config.basic_auth  = ENV['GITHUB_AUTH']
  config.ssl         = {:verify => false}
end
