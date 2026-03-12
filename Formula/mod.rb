class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.5/moderne-cli-4.0.5-modw.sh"
  sha256 "0ac0cfca4fd792cc6838609de91e5b4f0bd983001cc13ebd9c1e8267bff34938"
  version "4.0.5"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
