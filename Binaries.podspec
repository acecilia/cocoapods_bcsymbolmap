Pod::Spec.new do |s|
  s.name = 'Binaries'
  s.version = '1.0.0'
  s.summary = 'something'
  s.description = 'something'
  s.homepage = 'https://something.com'
  s.license = { :type => 'something' }
  s.authors = 'something'
  s.source = {
    :git => 'https://github.com/something/something.git',
    :tag => s.version.to_s
  }
  s.vendored_frameworks = [
    "Carthage/Build/iOS/DifferenceKit.framework",
    "Carthage/Build/iOS/DiffableDataSources.framework",
  ]
end
