# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.32/moderne-cli-macos-tar-v0.2.32"
  sha256 "6d5de0c83ad6c6bf124d1798be076364371fa512efdb788b0f0a4d176e7137c8"
  license :public_domain
  version "v0.2.32"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end