Gem::Specification.new do |s|
    s.name = 'LockstepSdk'
    s.version = '2022.3.32.0'
    s.date = '2022-01-19'
    s.summary = 'API Client to use the Lockstep Platform API'
    s.description = 'Allows you to work with the Lockstep Platform API for financial systems automation.  The SDK provides rich, 
                     context sensitive help and documentation for all methods and objects.'
    s.author = 'Lockstep'
    s.email = 'developer@lockstep.io'
    s.files = Dir['lib/**/*.rb']
    s.add_development_dependency 'rspec', '~> 3.7'
    s.homepage = 'https://developer.lockstep.io'
    s.license = 'MIT'
end
