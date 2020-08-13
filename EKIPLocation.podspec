Pod::Spec.new do |s|
    
    # 1
    s.platforms = { :ios => "10.0", :osx => "10.14", :watchos => "5.0", :tvos => "10.0" }
    s.name = "EKIPLocation"
    s.summary = "IP Location swift 5.2 framework for simple handling user place by its ip."
    s.requires_arc = true
    s.swift_version = "5.2"
    
    # 2 - Pod version
    s.version = "2.0.0"
    
    # 3 - License
    s.license = { :type => "MIT", :file => "LICENSE" }
    
    # 4 - Name and e-mail address
    s.author = { "Emil Karimov" => "emvakar@gmail.com" }
    
    # 5 - Own Github page's URL
    s.homepage = "https://github.com/emvakar"
    
    # 6 - Git URL
    s.source = { :git => "https://github.com/emvakar/EKIPLocation.git", :tag => "#{s.version}"}
    
    # 7
    s.framework = "Foundation"
    
    # 8
    s.source_files = "Sources/EKIPLocation/**/*.{swift}"
end
