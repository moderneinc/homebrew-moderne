# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.1/moderne-cli-macos-tar-v0.2.1"
  sha256 "d038b2d79f91e68940c3997ab9f2c5468721f1b13d5b884a136d5ec0c9583965"
  license :public_domain
  version "v0.2.1"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end