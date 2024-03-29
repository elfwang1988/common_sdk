#
# Be sure to run `pod lib lint wp_common_sdks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'wp_common_sdks'
  s.version          = '0.1.0'
  s.summary          = 'A short description of wp_common_sdks.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/elfwang1988/common_sdk'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'elfwang1988' => '976181090@qq.com' }
  s.source           = { :git => 'https://github.com/elfwang1988/common_sdk.git.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'wp_common_sdks/Classes/**/*'
  
  s.subspec 'category' do |ss|
    ss.source_files = 'wp_common_sdks/Classes/category/**/*'
    #ss.public_header_files = 'AFNetworking/AFSecurityPolicy.h'
    #ss.frameworks = 'Security'
  end
  s.subspec 'define' do |ss|
    ss.source_files = 'wp_common_sdks/Classes/define.{h,m}'
    #ss.public_header_files = 'AFNetworking/AFSecurityPolicy.h'
    #ss.frameworks = 'Security'
  end
  s.subspec 'subClass' do |ss|
    ss.source_files = 'wp_common_sdks/Classes/subClass.{h,m}'
    #ss.public_header_files = 'AFNetworking/AFSecurityPolicy.h'
    #ss.frameworks = 'Security'
  end
  
   s.resource_bundles = {
     'wp_common_sdks' => ['wp_common_sdks/Classes/subClass/IQKeyboardManager/IQKeyboardManager/Resources/IQKeyboardManager/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.3'
end
