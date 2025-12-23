cask "moddy-desktop-prerelease" do
  version "0.8.0-prerelease"

  on_intel do
    sha256 "1243fcd1e638bec06f8ddec663ec81e81c92defe7f0dfc5353b6d26b861ccb06"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "3d0d41c8738a8397bd65321dd360963276c7f80880c47c6837f6d2e0814c8f6f"
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