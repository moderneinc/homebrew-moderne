# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.43/moderne-cli-macos-tar-v0.2.43"
  sha256 "9549192cdb2005d207690a5789ad22409c6cb782c734302ccc6d3dc9676965c8"
  license :public_domain
  version "v0.2.43"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end