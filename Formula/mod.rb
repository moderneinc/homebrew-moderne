# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.39/moderne-cli-macos-tar-v0.2.39"
  sha256 "9ee0eb4c89d1821ee7f78bc4ad620c36d1f5929376e3107a82678f3e526a1f20"
  license :public_domain
  version "v0.2.39"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end