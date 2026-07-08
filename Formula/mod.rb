class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.3.9/moderne-cli-4.3.9-modw.sh"
  sha256 "1b2941717db09d445dba3daf58ec8fcd87267d43afb50e4c8c833832fb35bec8"
  version "4.3.9"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
