cask "moddy-desktop-prerelease" do
  version "0.6.1-prerelease"

  on_intel do
    sha256 "05b3ae49e8e21fe530ea7d157ffc02c766aafa736df7e34ca6606dc539415c96"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "28d44b5f046152b6656a64fbcaa153d778753084a49f79be2ee84424bf437eb0"
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