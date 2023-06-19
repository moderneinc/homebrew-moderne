# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.2/moderne-cli-macos-tar-v0.2.2"
  sha256 "49f75bbaa4284c9219431171a56db09851ede6a3a0622a2a9096a52c68d564fe"
  license :public_domain
  version "v0.2.2"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end