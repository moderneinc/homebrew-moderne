# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.7/moderne-cli-macos-tar-v0.2.7"
  sha256 "60d36567a95652b83ceec619cde405527e13373aa3b351e484fb1e3375d8c8de"
  license :public_domain
  version "v0.2.7"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end