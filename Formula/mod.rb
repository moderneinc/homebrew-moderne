# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.30/moderne-cli-macos-tar-v0.2.30"
  sha256 "81793e0109f93d6105afcd6860085e56bf46e3c3ffa7fa5ffee4247f37231a8c"
  license :public_domain
  version "v0.2.30"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end