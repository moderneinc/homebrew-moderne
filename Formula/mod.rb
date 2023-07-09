# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.18/moderne-cli-macos-tar-v0.2.18"
  sha256 "e525f1f4fe8aa36ec137a93b16c76034d16cd63d8d6c6c83f0664a5222c5f9ca"
  license :public_domain
  version "v0.2.18"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end