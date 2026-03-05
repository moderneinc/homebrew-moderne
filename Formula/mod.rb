class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.4/moderne-cli-4.0.4-modw.sh"
  sha256 "d40133a075d66dae16b5d0e0af46f3ac2594b1ed063406322185a39d449633dd"
  version "4.0.4"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
