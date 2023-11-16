# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.15/moderne-cli-macos-tar-v1.6.15"
  sha256 ""
  license :public_domain
  version "v1.6.15"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end