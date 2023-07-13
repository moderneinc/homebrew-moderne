# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.21/moderne-cli-macos-tar-v0.2.21"
  sha256 "cf39f8a5eac89227d8fb578e26c38034cfb02166fcdf8bc96b916667427a01b5"
  license :public_domain
  version "v0.2.21"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end