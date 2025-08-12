cask "moddy-desktop-prerelease" do
  version "0.0.0--prerelease"
  sha256 "placeholder_sha256_will_be_updated_by_ci"

  url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/#{version}/moddy-#{version}.dmg"
  name "Moddy Desktop (Prerelease)"
  desc "Moddy Desktop - Automated code remediation desktop client (Prerelease)"
  homepage "https://moderne.io"

  conflicts_with cask: "moddy-desktop"
  
  app "Moddy.app"

  caveats <<~EOS
    This is a prerelease version of Moddy Desktop. It may contain bugs and 
    incomplete features. Use at your own risk.
    
    To switch to stable version:
      brew uninstall --cask moddy-desktop-prerelease
      brew install --cask moddy-desktop
  EOS
end