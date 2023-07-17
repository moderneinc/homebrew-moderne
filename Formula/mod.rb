# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.29/moderne-cli-macos-tar-v0.2.29"
  sha256 "850d1b9af4da9ceb052eeb10234b3b440b3fdc614c7b90ee7daa345ea4f52438"
  license :public_domain
  version "v0.2.29"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end