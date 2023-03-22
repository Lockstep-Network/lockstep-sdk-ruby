require_relative "lib/lockstep_sdk/version"

Gem::Specification.new do |s|
    s.name = 'lockstep_sdk'
    s.version = '2023.11.28.0'
    s.date = '2023-03-22'
    s.summary = 'API Client to use the Lockstep Platform API'
    s.description = 'Allows you to work with the Lockstep Platform API for financial systems automation.  The SDK provides rich, 
                     context sensitive help and documentation for all methods and objects.'
    s.author = 'Lockstep'
    s.email = 'developer@lockstep.io'
    s.files = Dir['lib/**/*.rb']
    s.homepage = 'https://developer.lockstep.io'
    s.license = 'MIT'
    s.add_runtime_dependency "awrence"
end
