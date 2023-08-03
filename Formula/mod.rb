# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.48/moderne-cli-macos-tar-v0.2.48"
  sha256 "373acaefeea479202f6d0547870bf3acacca74d9243df3c1b19388f395f53dc8"
  license :public_domain
  version "v0.2.48"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end