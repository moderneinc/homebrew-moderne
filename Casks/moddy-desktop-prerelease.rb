cask "moddy-desktop-prerelease" do
  version "0.7.0-prerelease"

  on_intel do
    sha256 "3f3ada71477fa8f5e87145b90cdcc7995057603c55bb4e801479c1c9c88a2ecf"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "5dfcc8c2742a99aa66f38ae0ef2b4bc229585237b8c0cc6369b69b2f4a97d30b"
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