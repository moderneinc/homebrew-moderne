# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.52/moderne-cli-macos-tar-v0.2.52"
  sha256 "9775d522851da1fa9a5c231df4d3d64d95b503f7e5908f5ae8baba16a3e84dab"
  license :public_domain
  version "v0.2.52"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end