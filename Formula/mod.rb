# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.17/moderne-cli-macos-tar-v0.1.17"
  sha256 "be0f386782a96ae337ffe01bcc70f4c98fba955f235719cf9f0e14524755c2c2"
  license :public_domain
  version "v0.1.17"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end