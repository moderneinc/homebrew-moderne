# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.9/moderne-cli-macos-tar-v0.2.9"
  sha256 "f8cdbd956666ccb5db871bc95c38851301252e59144ebcb964e918681da60d7f"
  license :public_domain
  version "v0.2.9"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end