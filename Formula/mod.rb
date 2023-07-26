# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.37/moderne-cli-macos-tar-v0.2.37"
  sha256 "8f3989be09bfc96c3a48e0243d613c08051e49ad2ef0f4035ac2a48e26b6eae8"
  license :public_domain
  version "v0.2.37"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end