# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.4.3/moderne-cli-macos-tar-v1.4.3"
  sha256 "51fb2af1c3703fff7ad499fa2c5382ca7017cef94c5e870ff7875d204885076a"
  license :public_domain
  version "v1.4.3"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end