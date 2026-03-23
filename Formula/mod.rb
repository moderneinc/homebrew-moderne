class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.7/moderne-cli-4.0.7-modw.sh"
  sha256 "d173eef096723baef160542ba92aecdc4373bca8b88aa0a8883a1bd19d3bd170"
  version "4.0.7"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
