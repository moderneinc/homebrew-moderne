# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.29/moderne-cli-macos-tar-v0.1.29"
  sha256 "c7bcae05f13bf22fe2036a6cffed037a2cf3104fdd852c9cbdf2d561b9f80045"
  license :public_domain
  version "v0.1.29"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end