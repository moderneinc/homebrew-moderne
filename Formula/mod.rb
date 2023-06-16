# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.0/moderne-cli-macos-tar-v0.2.0"
  sha256 "3d2b4ae9d934f121aceb21c8a69fa734409d42c92396571dc2adff020e2fb678"
  license :public_domain
  version "v0.2.0"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end