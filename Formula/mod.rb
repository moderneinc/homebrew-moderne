# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.22/moderne-cli-macos-tar-v0.1.22"
  sha256 "d1803b58937d828240c04d3ba578dd3a7e5842b54e9c50dd302235a375022a37"
  license :public_domain
  version "v0.1.22"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end