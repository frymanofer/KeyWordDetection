Pod::Spec.new do |spec|

  spec.name         = "KeyWordDetection"
  spec.version      = "0.0.1"
  spec.summary      = 'A comprehensive framework for detecting keywords in audio input.'
  spec.description  = File.read(File.join(File.dirname(__FILE__), 'DESCRIPTION.txt'))
  spec.homepage     = "https://davoice.io"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "Ofer Fryman" => "frymanofer@gmail.com" }
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/frymanofer/KeyWordDetection.git", :tag => "#{spec.version}" }

  spec.ios.vendored_frameworks = 'KeyWordDetection.xcframework'
#  spec.vendored_frameworks = 'KeyWordDetection.xcframework'
  spec.swift_versions = ['5.0']
  spec.ios.deployment_target = '13.4'
  spec.xcconfig = {
    'VALID_ARCHS' =>  'arm64 x86_64',
  }
    
  spec.dependency 'ios-voice-processor', '~> 1.1.0'
  spec.dependency 'onnxruntime-objc'

  spec.static_framework = true

end

