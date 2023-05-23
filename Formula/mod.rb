# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.31/moderne-cli-macos-tar-v0.1.31"
  sha256 "937e70b055aa8afe95fb182a2f7c38011e39f048a7e719eed0cdef89335fd5c8"
  license :public_domain
  version "v0.1.31"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end