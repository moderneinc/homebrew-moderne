# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.17/moderne-cli-macos-tar-v0.2.17"
  sha256 "f4635d776a5c7ee4174266889e87293a96af11685b97e9df3bee0186b8a798c7"
  license :public_domain
  version "v0.2.17"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end