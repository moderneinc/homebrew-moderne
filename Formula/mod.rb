# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.24/moderne-cli-macos-tar-v0.2.24"
  sha256 "645b0c863cc21bade40aeacc53defbc43eb133efc94c446ea3cd20d3bcf42c29"
  license :public_domain
  version "v0.2.24"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end