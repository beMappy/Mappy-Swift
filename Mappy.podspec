Pod::Spec.new do |s|

  s.name         = 'Mappy'
  s.version      = '0.0.2'
  s.summary      = 'Mappy SDKs provide an elegant and composable interface for mapping, geocoding, and routing.'

  s.description  = <<-DESC
	Mappy SDKs provide an elegant and composable interface for mapping, geocoding, and routing. They do not implement their own GIS mapping functionality. Instead, they are built on top of Esri's ArcGIS Runtime APIs. We let application developers concentrate on their business logic while we do all the GIS heavy lifting.
                   DESC

  s.homepage     = 'https://github.com/beMappy/Mappy-Swift'

  s.license      = { :type => 'Commercial', :file => 'LICENSE' }

  s.author             = { 'Mohamed Afsar Shakeer' => 'afsar@freshworks.io' }
  
  s.source       = { :git => 'https://github.com/beMappy/Mappy-Swift.git', :tag => '0.0.2' }

  s.vendored_frameworks = 'Mappy.xcframework'
 
  s.requires_arc = true

  s.swift_version = '5'

  s.ios.deployment_target = '13.0'

  s.dependency 'KeychainAccess', '4.2.2' # Simple Swift wrapper for Keychain

  s.dependency 'Swinject', '2.8.1' # A lightweight dependency injection framework.

  s.dependency 'CocoaLumberjack/Swift', '3.7.4' # Powerful & flexible logging framework

  s.dependency 'ArcGIS-Runtime-SDK-iOS', '100.14' # Mapping and GIS functionality

  s.dependency 'ZIPFoundation', '0.9.13' # zip and unzip items

end
