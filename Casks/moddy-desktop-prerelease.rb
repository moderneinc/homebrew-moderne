cask "moddy-desktop-prerelease" do
  version "0.8.0-prerelease"

  on_intel do
    sha256 "451764be0f527bd9e24947ee0da863f8753147d53d77137fcc1327cc93360eab"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "6586fb414d07732bb60919b57091c2e8b6c597b343922c904947eb7b3fce0041"
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