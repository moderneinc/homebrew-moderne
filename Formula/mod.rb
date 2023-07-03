# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.13/moderne-cli-macos-tar-v0.2.13"
  sha256 "02d442c94f05613b4737bb13aea608a8c58e2e93d2dd9c7299fe4de824397572"
  license :public_domain
  version "v0.2.13"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end