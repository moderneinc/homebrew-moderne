# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.27/moderne-cli-macos-tar-v0.1.27"
  sha256 "1fdd424ba2a5f96bc3396773bccec1d3776ea2cf95358c850f7f3a619fbf82af"
  license :public_domain
  version "v0.1.27"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end