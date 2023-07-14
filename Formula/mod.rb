# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.26/moderne-cli-macos-tar-v0.2.26"
  sha256 "1a69be7562ab1864f7da0f5df4f14254e1b0e41b0c3be58892b158dd0de75ee9"
  license :public_domain
  version "v0.2.26"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end