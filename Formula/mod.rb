# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.15/moderne-cli-macos-tar-v0.2.15"
  sha256 "e326ae0f84f8d2e2abd22f77ffd5da0e9800fc50e88a3f1230c08fe69a2f5a4b"
  license :public_domain
  version "v0.2.15"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end