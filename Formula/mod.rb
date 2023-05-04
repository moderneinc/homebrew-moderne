# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.18/moderne-cli-macos-tar-v0.1.18"
  sha256 "414b6e41882a1aee897eb860cb17318be81e536724241fdadbebaa23101115bc"
  license :public_domain
  version "v0.1.18"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end