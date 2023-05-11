# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.23/moderne-cli-macos-tar-v0.1.23"
  sha256 "2f5898b00b112b036bd1a99e743f29bd730b8fd09788a16d4961dc7c5c5ac09c"
  license :public_domain
  version "v0.1.23"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end