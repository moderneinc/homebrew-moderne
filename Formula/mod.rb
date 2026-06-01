class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.2.11/moderne-cli-4.2.11-modw.sh"
  sha256 "7d55828c26b7d01a0c14ec6b86e848f9ca392ab3fc31281575cf8db690c4b9eb"
  version "4.2.11"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
