# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.41/moderne-cli-macos-tar-v0.2.41"
  sha256 "579912da139dcf247214d4891e6b717a4f0fbcbdfb5668bd4d8ca2af7cedcd70"
  license :public_domain
  version "v0.2.41"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end