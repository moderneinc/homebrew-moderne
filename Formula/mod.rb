# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.34/moderne-cli-macos-tar-v0.2.34"
  sha256 "81af9ccfea8501e83a4871393dfa55897416f47cb782ebf450b721e4100827c4"
  license :public_domain
  version "v0.2.34"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end