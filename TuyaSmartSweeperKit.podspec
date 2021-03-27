Pod::Spec.new do |s|
    s.name             = 'TuyaSmartSweeperKit'
    s.version          = '2.0.2'
    s.summary          = '#{s.name} for iOS.'
    
    s.homepage         = 'https://github.com/tuya/tuya-sweeper-ios-sdk'
    s.license          = "none"
    s.authors          = { 'Tuya SDK' => 'developer@tuya.com' }
    s.source           = { :http => "https://images.tuyacn.com/smart/app/package/sdk/ios/#{s.name}-#{s.version}.zip", :type => "zip" }
    s.static_framework = true
    s.ios.deployment_target = '9.0'
    s.ios.vendored_framework = 'ios/*.framework'

    s.dependency 'TuyaSmartDeviceCoreKit'

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
