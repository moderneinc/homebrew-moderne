cask "moddy-desktop-prerelease" do
  version "0.4.8-prerelease"
  sha256 "5eda4af4b64b0c09c905903aa19f75b7c2d0323c5c5a769288393620987e181a"

  url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}.dmg"
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
