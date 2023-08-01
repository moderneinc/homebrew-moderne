# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.42/moderne-cli-macos-tar-v0.2.42"
  sha256 "420c21bda309484f8890bfd7df160c5e3332c136067e40732f7d77b2456342e4"
  license :public_domain
  version "v0.2.42"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end