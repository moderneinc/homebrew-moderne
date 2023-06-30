# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.12/moderne-cli-macos-tar-v0.2.12"
  sha256 "c419a963ca2989a51e7025879561708a00d89af62988da3e64674ac78f786a97"
  license :public_domain
  version "v0.2.12"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end