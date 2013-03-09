GITHUB = Github.new do |config|
  config.endpoint    = 'https://api.github.com'
  config.adapter     = :net_http
  config.oauth_token  = "8826a4a2e259c67b9e2b55f6f4c5a5899fb3d702"
  config.ssl         = {:verify => false}
end
$repo = BuildThatBill::Application::GITHUB.repos.get 'jgrimes', 'BuildThatBillData'
