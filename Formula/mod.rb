class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.10.1/moderne-cli-4.10.1-modw.sh"
  sha256 "67bfc74ae5a7a06cb62e677a0c50bad7697083b6f114697b1c4c08197bf585d4"
  version "4.10.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
