# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.25/moderne-cli-macos-tar-v0.2.25"
  sha256 "87ea62e069a1cf4dd5bd024b1c0236f7906abda5ba323258ca40955f976401c9"
  license :public_domain
  version "v0.2.25"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end