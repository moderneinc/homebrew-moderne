# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.40/moderne-cli-macos-tar-v0.2.40"
  sha256 "61c29149a22f6f344f3c6279bc119c9f4df3b5915ed5bf88eb78c001d3527435"
  license :public_domain
  version "v0.2.40"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end