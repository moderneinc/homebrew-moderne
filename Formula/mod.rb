# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.46/moderne-cli-macos-tar-v0.2.46"
  sha256 "8e9ad41bcb242ff4b1bc1d356112c0d9436eda5bc2a467f3fed70802cd2656f0"
  license :public_domain
  version "v0.2.46"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end