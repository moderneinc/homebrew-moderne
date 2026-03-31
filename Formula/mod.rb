class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.10/moderne-cli-4.0.10-modw.sh"
  sha256 "fdb9908f294726b9bf9140c7cf2b1db0719d4950084b0a404ed14f45f490b17f"
  version "4.0.10"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
