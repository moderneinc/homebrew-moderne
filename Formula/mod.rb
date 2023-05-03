# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.15/moderne-cli-macos-tar-v0.1.15"
  sha256 "494358e441b656af1800531476a39f06ef25c11a41adfbcd60019bfda67efa10"
  license :public_domain
  version "v0.1.15"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end