# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.31/moderne-cli-macos-tar-v0.2.31"
  sha256 "1ccf8f1a79e1292ebce090220eeee98fae325b9b752a99ded59ebca3138b77b4"
  license :public_domain
  version "v0.2.31"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end