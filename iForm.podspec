Pod::Spec.new do |spec|
  spec.name         = 'iForm'
  spec.version      = '0.1.0'
  spec.authors      = { 
    'Gwendal Vallee' => 'gwendal.vallee@hotmail.fr'
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/gvallee70/iForm'
  spec.source       = { 
    :git => 'https://github.com/gvallee70/iForm.git', 
    :branch => 'main',
    :tag => spec.version.to_s 
  }
  spec.summary      = 'Framework to create custom forms easily'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = '14.0'
end
