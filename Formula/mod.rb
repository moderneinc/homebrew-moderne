# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.22/moderne-cli-macos-tar-v0.2.22"
  sha256 "7a2724732630d02dfe14ff00ffca8354fbd280ae4fdd40e4fb24c99b561d75b4"
  license :public_domain
  version "v0.2.22"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end