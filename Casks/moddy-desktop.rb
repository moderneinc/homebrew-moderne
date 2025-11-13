cask "moddy-desktop" do
  version "0.6.2"

  on_intel do
    sha256 "0ac6c624c272fe8098c4c07b39959cda7cce66621319ea712837818c6270e181"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-x64.dmg"
  end

  on_arm do
    sha256 "f2ac00a5e890b34eaf550379aea619d7c474db5ad89328286ae8037dd34c1db7"
    url "https://moddy-desktop.s3.us-east-1.amazonaws.com/releases/moddy-#{version}-arm64.dmg"
  end

  name "Moddy Desktop"
  desc "Moddy Desktop - Automated code remediation desktop client"
  homepage "https://moderne.io"

  app "Moddy.app"
end