# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.1.16/moderne-cli-macos-tar-v0.1.16"
  sha256 "b2d0ccd2493cee0a34049395cbe7fef9a546afc55c5de12d74510a5052f76c81"
  license :public_domain
  version "v0.1.16"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end