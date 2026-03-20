class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.6/moderne-cli-4.0.6-modw.sh"
  sha256 "ac9e08efe784e3c5b754543f25d10bd7150542253ca2eb2938363b57307dcfa0"
  version "4.0.6"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
