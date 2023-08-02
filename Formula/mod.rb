# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.44/moderne-cli-macos-tar-v0.2.44"
  sha256 "113a9a8936e10692bbdcac4006ee2e1d16a397d6d814001df9ec3960deb18780"
  license :public_domain
  version "v0.2.44"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end