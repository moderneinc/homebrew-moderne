# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.47/moderne-cli-macos-tar-v0.2.47"
  sha256 "3998779ca15372d962fb531078ba412cb4c6732fe6e3c620e210a747114a2bbb"
  license :public_domain
  version "v0.2.47"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end