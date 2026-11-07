class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.12.5/moderne-cli-4.12.5-modw.sh"
  sha256 "7cbb0768e83cfebcd064e32c3b27678efc93523b9865babbb55007a1f2ad89e0"
  version "4.12.5"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
