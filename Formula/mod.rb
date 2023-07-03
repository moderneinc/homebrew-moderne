# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.14/moderne-cli-macos-tar-v0.2.14"
  sha256 "d4bc02512ae72e545b6308aa300b23000463b5b79a5c0e8ca32133a5825e368d"
  license :public_domain
  version "v0.2.14"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end