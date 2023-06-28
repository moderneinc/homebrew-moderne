# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.8/moderne-cli-macos-tar-v0.2.8"
  sha256 "6b7b52750e5129e1d1899940ad26dd09b24c539924bebaec1cbcbaa7b0da80cb"
  license :public_domain
  version "v0.2.8"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end