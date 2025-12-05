cask "moddy-desktop" do
  version "0.7.1"

  on_intel do
    sha256 "ae115ad13cf2173046234088b2b2adf38fc3c6ac0fadfcf305396e4aacd3e58b"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "416c63c41629dc20453aada746917a3df692d2c18cc1dcbb242927044a8a173d"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop"
  desc "Moddy Desktop - Automated code remediation desktop client"
  homepage "https://moderne.io"

  app "Moddy.app"
end