# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.0/moderne-cli-macos-tar-v0.2.0"
  sha256 "eabc8a744f3a972073770dd26f5247f611492deb8a0d710227e57e893beff5fe"
  license :public_domain
  version "v0.2.0"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end