require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "PasscodeAuth"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.homepage     = "https://github.com/LedgerHQ/react-native-passcode-auth"

  s.author       = { "Naoufal Kadhom" => "naoufalkadhom@gmail.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/LedgerHQ/react-native-passcode-auth", :tag => "v#{s.version}" }
  s.source_files  = "*.{h,m}"

  s.dependency 'React'
end
