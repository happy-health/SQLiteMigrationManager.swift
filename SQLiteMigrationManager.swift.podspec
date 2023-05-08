Pod::Spec.new do |s|
  s.name         = "SQLiteMigrationManager.swift"
  s.version      = "0.8.1-gh"
  s.summary      = "Migration manager for SQLite.swift"
  s.description  = <<-DESC
  Migration manager for SQLite.swift, based on FMDBMigrationManager.
                   DESC
  s.homepage     = "https://github.com/gideon-health/SQLiteMigrationManager.swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Vincent Garrigues" => "vincent.garrigues@gmail.com" }
  s.social_media_url   = "http://twitter.com/garriguv"

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.15'
  s.watchos.deployment_target = '11.0'
  s.default_subspec  = 'standard'

  s.module_name  = 'SQLiteMigrationManager'
  s.source       = { :git => "https://github.com/gideon-health/SQLiteMigrationManager.swift.git", tag: s.version.to_s, submodules: true }

  s.subspec 'standard' do |ss|
   ss.source_files = "Sources"
   ss.dependency "SQLite.swift", "~> 0.13.0"
  end
end
