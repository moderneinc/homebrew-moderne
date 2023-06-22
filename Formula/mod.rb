# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.5/moderne-cli-macos-tar-v0.2.5"
  sha256 "d11c646e84d3deb1b678678062741c5dfc2b7057e8833f854d860e997890c9a4"
  license :public_domain
  version "v0.2.5"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end