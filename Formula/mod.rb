class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.2.12/moderne-cli-4.2.12-modw.sh"
  sha256 "61ea5317b69c77c0da7e99a86f0fe22a8587a3fbe916d5ab0501e91b060f83a4"
  version "4.2.12"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
