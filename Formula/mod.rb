class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.3.2/moderne-cli-4.3.2-modw.sh"
  sha256 "683c8bf3d7efbfc5d590ff5c0613f8874ae1047cbcdcda152dd01ee9d7514bdd"
  version "4.3.2"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
