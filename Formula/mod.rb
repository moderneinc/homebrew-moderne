# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.51/moderne-cli-macos-tar-v0.2.51"
  sha256 "4fee65cd744fa117061b9c8c59ec400c6e33ac79f6dcfeeeb3dcd0a0998bd9ae"
  license :public_domain
  version "v0.2.51"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end