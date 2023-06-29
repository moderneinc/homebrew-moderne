# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v0.2.10/moderne-cli-macos-tar-v0.2.10"
  sha256 "9675d126b00a15ba4ea6ff7d568da318469034bb1ce55b63bb1ef20dd4825f3b"
  license :public_domain
  version "v0.2.10"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod --version"
   end
end