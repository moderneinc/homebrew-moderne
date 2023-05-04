# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.19/moderne-cli-macos-tar-v0.1.19"
  sha256 "0185b1c561378dbf8b616bed4acc89ebc0ead1ab37aae1a819905b62730a3a51"
  license :public_domain
  version "v0.1.19"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end