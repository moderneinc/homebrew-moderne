# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.23/moderne-cli-macos-tar-v1.6.23"
  sha256 "4fac059ec57b113efa094e1687a13a39c9d2ecc6268d6e3150a04533be07fd3f"
  license :public_domain
  version "v1.6.23"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end
