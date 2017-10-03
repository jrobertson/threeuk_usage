Gem::Specification.new do |s|
  s.name = 'threeuk_usage'
  s.version = '0.1.0'
  s.summary = 'Web scrapes three.co.uk for the remaining data allowance' +
             ' #webscraper #threeuk #mobilebroadband'
  s.authors = ['James Robertson']
  s.files = Dir['lib/threeuk_usage.rb']
  s.add_runtime_dependency('mechanize', '~> 2.7', '>=2.7.5')
  s.signing_key = '../privatekeys/threeuk_usage.pem'  
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/threeuk_usage'
end
