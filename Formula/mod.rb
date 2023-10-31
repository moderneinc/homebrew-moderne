# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.4.9/moderne-cli-macos-tar-v1.4.9"
  sha256 "cab4681d3fb3c09584570c69c3e6f052087a1623eaf7d41c147f666a3c9ab567"
  license :public_domain
  version "v1.4.9"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end