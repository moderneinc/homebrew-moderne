# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.45/moderne-cli-macos-tar-v0.2.45"
  sha256 "34531506890c1b8cefbbe0d8530be284e2231ca09cfa83aea72f73709d6e8d3f"
  license :public_domain
  version "v0.2.45"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end