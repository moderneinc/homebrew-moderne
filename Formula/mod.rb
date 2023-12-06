# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.26/moderne-cli-macos-tar-v1.6.26"
  sha256 "67f298e1aff2f553c68871b4a3ab853e3c42dc099182734bad936c79cb1a8562"
  license :public_domain
  version "v1.6.26"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end