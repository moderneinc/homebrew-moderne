cask "moddy-desktop-prerelease" do
  version "0.5.0-prerelease"
  sha256 "8730fabcf57e62c85de41f7bf2e7709e281aa7a4408f0501e77e7166ca713465"

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
