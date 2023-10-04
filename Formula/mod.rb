# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.2.0/moderne-cli-macos-tar-v1.2.0"
  sha256 "9dcef78f8767291eebb346c1a840e2f7c26343d92147f037d95b3ce85d1f4791"
  license :public_domain
  version "v1.2.0"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end