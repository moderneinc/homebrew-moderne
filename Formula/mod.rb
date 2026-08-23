class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.6.4/moderne-cli-4.6.4-modw.sh"
  sha256 "48198b5d7206c5e2d0210b00749ebbfce671c7d18a2e004e75212dbb796bc2d2"
  version "4.6.4"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
