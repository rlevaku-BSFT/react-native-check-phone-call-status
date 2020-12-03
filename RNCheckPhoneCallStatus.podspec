require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNCheckPhoneCallStatus"
  s.version      = "1.0.0"
  s.summary      = "RNCheckPhoneCallStatus"
  s.description  = <<-DESC
                  RNCheckPhoneCallStatus
                   DESC
  s.homepage     = "https://github.com/author/RNCheckPhoneCallStatus"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Tori Huang" => "torihuangdev@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNCheckPhoneCallStatus.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"

end
