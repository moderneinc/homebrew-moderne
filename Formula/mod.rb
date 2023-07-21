# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.35/moderne-cli-macos-tar-v0.2.35"
  sha256 "05322af9e7adbedf89904cc8a7890ac55294089cb0dbe850baebb0f703780deb"
  license :public_domain
  version "v0.2.35"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end