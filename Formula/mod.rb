# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.11/moderne-cli-macos-tar-v1.6.11"
  sha256 "f4d9b745d5458614f7a16792afe03288c0c6c69190276be3710d44135b33da7e"
  license :public_domain
  version "v1.6.11"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end