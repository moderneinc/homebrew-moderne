# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.36/moderne-cli-macos-tar-v0.1.36"
  sha256 "b2166e820af7dd6ee99053745f75c7d65c5a8072db0910f064bdbe44a3076ad2"
  license :public_domain
  version "v0.1.36"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end