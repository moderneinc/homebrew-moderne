# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.32/moderne-cli-macos-tar-v0.1.32"
  sha256 "3b45810029ed64052f801cae478a3dec2b2bb87f816b7dca96156d2cfa814f6a"
  license :public_domain
  version "v0.1.32"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end