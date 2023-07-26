# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.38/moderne-cli-macos-tar-v0.2.38"
  sha256 "0b28212f9a999e4a860fa3caa42eb7f2cb00a0478f42a67802d186474506e3fb"
  license :public_domain
  version "v0.2.38"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end