# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.34/moderne-cli-macos-tar-v0.1.34"
  sha256 "525bd75abf05bf87923824cb8860fa8ecc9ca3cc2f0653fc2d9bdfe740ff37cb"
  license :public_domain
  version "v0.1.34"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end