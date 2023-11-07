# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.1/moderne-cli-macos-tar-v1.6.1"
  sha256 "88502a667237bd2f8d066cb7cfe888238cb3891c6515cf029eae3cb2cc7b1c30"
  license :public_domain
  version "v1.6.1"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end