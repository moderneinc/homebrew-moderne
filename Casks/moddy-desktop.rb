cask "moddy-desktop" do
  version "0.6.1"

  on_intel do
    sha256 "d3cd8fb7ff451dcae257974138e2529a12c66687aecaedb3d7e34061312af0c4"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "30093b2a40b207cb989e5f4f37d0713391fde9798564d29fdc675c5c0db39bad"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop"
  desc "Moddy Desktop - Automated code remediation desktop client"
  homepage "https://moderne.io"

  app "Moddy.app"
end