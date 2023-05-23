# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.30/moderne-cli-macos-tar-v0.1.30"
  sha256 "0c299da759d245559a1f9576bc788465b13bef264b4a309e59ee887b747daece"
  license :public_domain
  version "v0.1.30"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end