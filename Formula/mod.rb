class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.11/moderne-cli-4.0.11-modw.sh"
  sha256 "b692e811e1c26a4de382f4de565b51a6091d88098298f30b674639013f1debd9"
  version "4.0.11"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
