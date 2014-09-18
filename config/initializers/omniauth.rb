Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: :name
  provider :twitter, ENV['5pOpZNG54NtJbtUrTNdOuAMEy'], ENV['MJt9gfUFba0lzUwLrHd92O2Mm9OCTmbUzPukN7ldLTM0LjGZbu']
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], scope: :name
end
