# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.4/moderne-cli-macos-tar-v0.2.4"
  sha256 "598320d0044b523e6f7fdbedd8511228cc8851c57bbd83353ebdbdf52f4f5cc3"
  license :public_domain
  version "v0.2.4"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end