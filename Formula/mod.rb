# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.23/moderne-cli-macos-tar-v0.2.23"
  sha256 "f7bf0b40134da9d20bd12b45f5d881e52fbd21f72fb2a32c2f46627adb0a78b0"
  license :public_domain
  version "v0.2.23"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end