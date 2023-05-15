# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.25/moderne-cli-macos-tar-v0.1.25"
  sha256 "b57c3738bfcebc770425832e41af609cb85127860590bc49409098d592dcdde0"
  license :public_domain
  version "v0.1.25"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end