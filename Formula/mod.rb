# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.7.0/moderne-cli-macos-tar-v1.7.0"
  sha256 "63ecc807ee73cdf638dde67a476ee595000e6015b130ead44cfbba51eb8c80b9"
  license :public_domain
  version "v1.7.0"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end