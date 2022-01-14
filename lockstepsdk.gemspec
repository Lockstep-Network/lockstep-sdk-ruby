require_relative "lib/lockstep_sdk/version"

Gem::Specification.new do |s|
    s.name = 'LockstepSdk'
    s.version = LockstepSdk::VERSION
    s.date = '2021-12-29'
    s.summary = 'API Client to use the Lockstep Platform API'
    s.description = 'Allows you to work with the Lockstep Platform API for financial systems automation.  The SDK provides rich, 
                     context sensitive help and documentation for all methods and objects.'
    s.author = 'Lockstep'
    s.email = 'developer@lockstep.io'
    s.files = ['lib/**/*.rb']
    s.homepage = 'https://developer.lockstep.io'
    s.license = 'MIT'
end