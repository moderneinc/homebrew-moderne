class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.2.9/moderne-cli-4.2.9-modw.sh"
  sha256 "3d145bc39cea8b9f9d72215c549435cab7df9a41a6633716ddb2b1ea53354359"
  version "4.2.9"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
