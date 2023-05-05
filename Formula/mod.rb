# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.21/moderne-cli-macos-tar-v0.1.21"
  sha256 "8f1db8912d9316b4fd0925f895cb3bd24ac0ff581c2b971ee9e3c015fdb7485c"
  license :public_domain
  version "v0.1.21"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end