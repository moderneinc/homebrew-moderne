class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.1.2/moderne-cli-4.1.2-modw.sh"
  sha256 "fd4dc881e02e91cc7bab2ae96899979fbe207a4b74085fff4d1c712874f4dec4"
  version "4.1.2"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
