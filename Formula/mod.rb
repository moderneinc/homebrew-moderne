# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.35/moderne-cli-macos-tar-v0.1.35"
  sha256 "6c59dd64253571b66ad9961d3f300fd3861405179bd5fd43541595d9767deea4"
  license :public_domain
  version "v0.1.35"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end