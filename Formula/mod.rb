# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.20/moderne-cli-macos-tar-v0.1.20"
  sha256 "785006f3dd1ed773df6aacf72fda547f6f92b000d330575663afa114d216b646"
  license :public_domain
  version "v0.1.20"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end