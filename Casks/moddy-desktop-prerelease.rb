cask "moddy-desktop-prerelease" do
  version "0.5.2-prerelease"
  sha256 "aa3f66b2cbe3dc6e5fd81b0f4007f36c962a934dbaeaeb423be2ec0f91b5fa59"

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
