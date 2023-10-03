# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.1.3/moderne-cli-macos-tar-v1.1.3"
  sha256 "0ebe465b275cf56daf91faf391b06686d4f65e4e96e5fc96e9c59c59ca9556af"
  license :public_domain
  version "v1.1.3"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end