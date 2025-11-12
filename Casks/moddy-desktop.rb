cask "moddy-desktop" do
  version "0.6.0"

  on_intel do
    sha256 "efe75372e063570e67afcedaf21b003ef4c978739b71e1d2cf0b7155b5181e98"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "09379f01097605188d99e368769f34fdb6b79ca536553864520fd788a3dfd049"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop"
  desc "Moddy Desktop - Automated code remediation desktop client"
  homepage "https://moderne.io"

  app "Moddy.app"
end