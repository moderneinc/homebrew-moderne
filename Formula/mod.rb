# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.49/moderne-cli-macos-tar-v0.2.49"
  sha256 "684e051c774585fe1eddbe1202e65250105bfa00a97bf5ed78e7856d3da43ef9"
  license :public_domain
  version "v0.2.49"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end