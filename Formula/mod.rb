class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.5.1/moderne-cli-4.5.1-modw.sh"
  sha256 "ada56486d64780b3823f834e34d80db6cff4747dcd71ebce09b3777bff42770b"
  version "4.5.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
