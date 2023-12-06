# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.25/moderne-cli-macos-tar-v1.6.25"
  sha256 "32530fb93dcad5f118b67a0ce9b8adff2f7531e1b15624f285678309e4af36f1"
  license :public_domain
  version "v1.6.25"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end