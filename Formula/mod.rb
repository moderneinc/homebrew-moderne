# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.20/moderne-cli-macos-tar-v0.2.20"
  sha256 "624acb66376eeaf952e14efc351074cb16a859a364b6da2a1f3a3085d774d544"
  license :public_domain
  version "v0.2.20"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end