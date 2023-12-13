# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain

  stable do
    url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.27/moderne-cli-macos-tar-v1.6.27"
    sha256 "d45a251e28030f348f19c413379a7755a85d49a9e465725f78d1185625f7b1d9"
    version "v1.6.27"
  end
  
  head do
    url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/staging/maven/v1/io/moderne/moderne-cli-macos-tar/v1.7.1/moderne-cli-macos-tar-v1.7.1"
    sha256 "71465b344858440c9d9c9df8a6aed7979791930be12f00be0c08fc4c78725690"
    version "v1.7.1"
  end
  
  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end
