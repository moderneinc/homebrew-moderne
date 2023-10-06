# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.3.0/moderne-cli-macos-tar-v1.3.0"
  sha256 "2ccad7609490cfb4eb83b7fdf0fb8845efeec4d7e66b6f4a83ac6efe4b58ece5"
  license :public_domain
  version "v1.3.0"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end