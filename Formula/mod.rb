class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.1.4/moderne-cli-4.1.4-modw.sh"
  sha256 "ab69a47ed4279b303cb9344b58acc7ab4b39ecbd84513fe73a98fa26bbc901d2"
  version "4.1.4"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
