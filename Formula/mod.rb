# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.7.1/moderne-cli-macos-tar-v1.7.1"
  sha256 "71465b344858440c9d9c9df8a6aed7979791930be12f00be0c08fc4c78725690"
  license :public_domain
  version "v1.7.1"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end