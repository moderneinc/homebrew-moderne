# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.16/moderne-cli-macos-tar-v0.2.16"
  sha256 "2718aedfb53def9c762bd555ab0d6233707c7c5437c5b24f62773330566bd0f9"
  license :public_domain
  version "v0.2.16"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end