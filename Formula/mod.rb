class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.1.1/moderne-cli-4.1.1-modw.sh"
  sha256 "da4ee0fce2107327db99e50276518d425878f4343437a5cf6357e35ba5744e09"
  version "4.1.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
