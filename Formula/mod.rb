# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.26/moderne-cli-macos-tar-v0.1.26"
  sha256 "ca8e81c70db83b2e532faca533adae3ead9250121aa598bdb0c1491bbb9daaf1"
  license :public_domain
  version "v0.1.26"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end