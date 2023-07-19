# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.33/moderne-cli-macos-tar-v0.2.33"
  sha256 "fb4fbfcaecdb2d03cf2ef2c93bbe12bb10b66110a9732476d0b0043362d4e425"
  license :public_domain
  version "v0.2.33"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end