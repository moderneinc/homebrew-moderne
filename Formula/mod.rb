# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  url "https://pkgs.dev.azure.com/moderneinc/moderne_public/_packaging/moderne/maven/v1/io/moderne/moderne-cli-macos-tar/v1.6.27/moderne-cli-macos-tar-v1.6.27"
  sha256 "d45a251e28030f348f19c413379a7755a85d49a9e465725f78d1185625f7b1d9"
  license :public_domain
  version "v1.6.27"

  head "https://github.com/moderneinc/homebrew-moderne.git", branch: "staging" # the default is "main"

  def install
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end
