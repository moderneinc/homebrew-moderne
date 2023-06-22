# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.6/moderne-cli-macos-tar-v0.2.6"
  sha256 "54c7cfef3a6791fe0deba867c39bf0f36b8021759b96209e14c7f3d469b3b496"
  license :public_domain
  version "v0.2.6"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end