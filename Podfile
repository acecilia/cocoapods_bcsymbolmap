platform :ios, '11.0'
use_frameworks!

target 'Dummy' do
end

pod 'Binaries', :path => '.'

post_install do |installer|
    make_shared_scheme(installer)
end

# Make a shared scheme containing all the cocoapods targets
def make_shared_scheme(installer)
    scheme = Xcodeproj::XCScheme.new()

    installer.pods_project.targets.each do |target|
        if !target.name.start_with?("Pods")
            scheme.add_build_target(target)
        end
    end

    scheme.save_as(installer.pods_project.path, "SharedScheme")
    puts "Created shared scheme"
end
