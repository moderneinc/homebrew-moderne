# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.28/moderne-cli-macos-tar-v0.2.28"
  sha256 "83287f72df29032cf64be2e3b2c2ba9c9f47694a7f9624c054b58de0676fb2e6"
  license :public_domain
  version "v0.2.28"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end