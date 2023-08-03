# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.50/moderne-cli-macos-tar-v0.2.50"
  sha256 "1d73d044319e56500658f5d78425ad7580a977d8b542051da70b4ef7f425e5f2"
  license :public_domain
  version "v0.2.50"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end