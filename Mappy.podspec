Pod::Spec.new do |s|

  s.name         = 'Mappy'
  s.version      = '0.8.0-beta1'
  s.summary      = 'Mappy SDKs provide an elegant and composable interface for mapping, geocoding, and routing.'

  s.description  = <<-DESC
	Mappy SDKs provide an elegant and composable interface for mapping, geocoding, and routing. They do not implement their own GIS mapping functionality. Instead, they are built on top of Esri's ArcGIS Runtime APIs. We let application developers concentrate on their business logic while we do all the GIS heavy lifting.
                   DESC

  s.homepage     = 'https://github.com/beMappy/Mappy-Swift'

  s.license      = { :type => 'Commercial', :file => 'LICENSE' }

  s.author             = { 'Mohamed Afsar Shakeer' => 'afsar@freshworks.io' }
  
  s.source       = { :git => 'https://github.com/beMappy/Mappy-Swift.git', :tag => '0.8.0-beta1' }

  s.vendored_frameworks = 'Mappy.xcframework'
 
  s.requires_arc = true

  s.swift_version = '5'

  s.ios.deployment_target = '14.0'

  s.dependency 'XCKeychainAccess', '4.2.2' # Simple Swift wrapper for Keychain

  s.dependency 'XCSwinject', '2.8.2' # A lightweight dependency injection framework.

  s.dependency 'ArcGIS-Runtime-SDK-iOS', '100.15' # Mapping and GIS functionality

  s.dependency 'XCZIPFoundation', '0.9.15' # zip and unzip items

  s.dependency 'XCReachabilitySwift', '5.1.0-xc14.2-1' # To check Internet connection status

  s.dependency 'XCPusherSwift', '10.1.1-xc14.2-2' # Messaging infrastructure

  s.dependency 'XCCocoaLumberjackSwift', '3.7.4-xc14-3' # Powerful & flexible logging framework

  s.dependency 'XCRealmSwift', '10.39.1' # Database

end
