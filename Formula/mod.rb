# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.3/moderne-cli-macos-tar-v1.6.3"
  sha256 "52596770dd0a09f630147bd196a7fd8a7dbbe2f4d6004b8b7712ba418529b220"
  license :public_domain
  version "v1.6.3"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end