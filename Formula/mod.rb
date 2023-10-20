# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.4.2/moderne-cli-macos-tar-v1.4.2"
  sha256 "3b5fdf05b4be428e5489e003fe977b261ed2d0fb345e66619446a3d9c44bba92"
  license :public_domain
  version "v1.4.2"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end