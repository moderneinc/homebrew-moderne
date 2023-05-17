# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.28/moderne-cli-macos-tar-v0.1.28"
  sha256 "0f271b5b1461ee3cf3d828d65658b3c6608c31c5187a695feb333ee3cf9aed4d"
  license :public_domain
  version "v0.1.28"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end