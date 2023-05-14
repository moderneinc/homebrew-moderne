# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.24/moderne-cli-macos-tar-v0.1.24"
  sha256 "8469dc67464d6be15ef658c844838b1117f38e1722bd408b251dc8532468227b"
  license :public_domain
  version "v0.1.24"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end