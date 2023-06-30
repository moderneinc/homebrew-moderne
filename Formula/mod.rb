# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.11/moderne-cli-macos-tar-v0.2.11"
  sha256 "0c7c085a2af1f8e8f6ff67fb7476e7611b853ad3e4dce9011a85658dac9ea2b5"
  license :public_domain
  version "v0.2.11"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end