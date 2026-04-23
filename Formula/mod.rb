class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.1.8/moderne-cli-4.1.8-modw.sh"
  sha256 "eddeb17327499b930a62832f5243e9e9a4734766e8fd89e9129bcb2d8897490d"
  version "4.1.8"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
