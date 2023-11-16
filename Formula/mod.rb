# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.13/moderne-cli-macos-tar-v1.6.13"
  sha256 "880c5ee57b504be9c2d927e300bf01f4eb6162e5d2af5e8f8e300b3d6c47720e"
  license :public_domain
  version "v1.6.13"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end