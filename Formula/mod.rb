# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.10/moderne-cli-macos-tar-v0.1.10"
  sha256 "c1ee09d2bed13530e5c55ac89f5dbc982ef99d1b0e1fdccc13017121098afd1b"
  license "MIT"
  version "v0.1.10"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end