cask "moddy-desktop-prerelease" do
  version "0.7.2-prerelease"

  on_intel do
    sha256 "3ca3a0afb2851aadc37eba6d1692c8dc2a486f314beb53d247ecef3e9e15ad25"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "6e03456fc98eda4f84b869d21c66aff6a7e14bf0fd6540c0bf54aee518e3ccd6"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop Prerelease"
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