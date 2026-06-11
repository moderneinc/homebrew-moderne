class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.2.14/moderne-cli-4.2.14-modw.sh"
  sha256 "574bb1e6e8c4d4ef5479993a67053d343bce0a45af838651dff1d931cd40b4e1"
  version "4.2.14"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
