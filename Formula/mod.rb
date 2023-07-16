# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.27/moderne-cli-macos-tar-v0.2.27"
  sha256 "80a6d1cd255815c36d933786e68bd5965913ebd7d8ce698266cda0aa09bb34e8"
  license :public_domain
  version "v0.2.27"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end