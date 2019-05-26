require 'json'
package = JSON.parse(File.read('../../node_modules/react-native-pinch/package.json'))

Pod::Spec.new do |s|
  s.name         = "RNPinch"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package["description"]
  s.homepage     = package["homepage"]
  s.license      = { :type => "MIT", :file => "../../LICENSE" }
  s.author       = package["author"]
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/wbsgxc/react-native-pinch.git" }
  s.source_files = "RNPinch/*.{h,m,swift}"
  s.public_header_files = "RNPinch/*.h"
  s.requires_arc = true
  s.dependency 'React'
end