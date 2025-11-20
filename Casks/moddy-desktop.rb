cask "moddy-desktop" do
  version "0.7.0"

  on_intel do
    sha256 "5fa2b059fb41b952f36bb47a40920b34389d2ef016c768c73457ab2a1960a498"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "b7062d7eefe0cfe6947fc673410231fd8743bb8340aa957fb0d9f66abe39cfa2"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop"
  desc "Moddy Desktop - Automated code remediation desktop client"
  homepage "https://moderne.io"

  app "Moddy.app"
end