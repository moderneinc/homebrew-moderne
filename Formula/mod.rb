# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.24/moderne-cli-macos-tar-v1.6.24"
  sha256 "17c1d168599ce855c3893364d1108d6619db2829f61231fa2605589a53d92949"
  license :public_domain
  version "v1.6.24"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end