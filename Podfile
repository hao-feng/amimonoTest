platform :ios, '8.0'
inhibit_all_warnings!
plugin 'cocoapods-amimono'
use_frameworks!

target 'ttt' do
  pod 'testPod', :path => './testPod'
  pod 'BlocksKit'
end

post_install do | installer |
  require 'cocoapods-amimono/patcher'
  Amimono::Patcher.patch!(installer)
end