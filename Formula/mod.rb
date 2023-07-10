# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.19/moderne-cli-macos-tar-v0.2.19"
  sha256 "2ee29de58056b7510f151eba0b15a28522641a7dbed9f0badd724df3f05f7eda"
  license :public_domain
  version "v0.2.19"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end