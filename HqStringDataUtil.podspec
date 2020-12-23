#
#  Be sure to run `pod spec lint HQSegmentPageViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
Pod::Spec.new do |s|
  s.name     = 'HqStringDataUtil'
  s.version  = 'v1.0.0'
  s.license  =  "GNU"
  s.summary  = 'HqStringDataUtil'
  s.homepage = 'https://github.com/HeHuiqi/HqStringDataUtil'
  s.author   = 'Hehuiqi'
  s.source   = { :git => 'https://github.com/HeHuiqi/HqStringDataUtil.git', :tag => s.version }
  s.platform = :ios, '9.0'
  s.source_files = 'HqStringDataUtil/HqStringDataUtil/Source/*'
  s.requires_arc = true
  s.swift_version = '5.0'
  
end

