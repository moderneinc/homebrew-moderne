# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.36/moderne-cli-macos-tar-v0.2.36"
  sha256 "dbfbf1075fe3ce71f4974249a3597cfdfc6a0a3c27bc74da848100db27aa92fd"
  license :public_domain
  version "v0.2.36"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end