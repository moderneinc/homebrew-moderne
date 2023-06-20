# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.3/moderne-cli-macos-tar-v0.2.3"
  sha256 "b731127b31870bfaa0a13adeedc5a03974dcb836ff875a75fbaea3007a7129fe"
  license :public_domain
  version "v0.2.3"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end