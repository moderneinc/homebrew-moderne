# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.33/moderne-cli-macos-tar-v0.1.33"
  sha256 "19bda0331af3c990f40aec33513023dd6536cfd560e93bb530b8e844a1945dca"
  license :public_domain
  version "v0.1.33"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end