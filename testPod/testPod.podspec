# -*- coding:utf-8 -*-

Pod::Spec.new do |s|
  s.name             = 'testPod'
  s.version          = '0.0.1'
  s.summary          = 'none'
  s.homepage         = 'https://github.com/hao-feng/testPod'
  s.license          = { :type => 'MIT'}
  s.author           = { 'fenghao' => 'hao.f@hotmail.com' }
  s.source           = { :git => 'https://github.com/hao-feng/testPod.git'}

  s.ios.deployment_target = '8.0'
  s.source_files = 'testPod/**/*.{h,m,swift}'
  s.vendored_frameworks = 'Libraries/AlipaySDK.framework'
  s.libraries = 'sqlite3', 'stdc++', 'z'
  s.frameworks = 'AVFoundation', 'CoreTelephony', 'CoreMotion', 'SystemConfiguration'
  s.public_header_files = 'testPod/**/*.h'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
end

