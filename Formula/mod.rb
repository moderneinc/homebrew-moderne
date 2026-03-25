class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.0.8/moderne-cli-4.0.8-modw.sh"
  sha256 "fce04da400f9fb7b1dd95ef8aad95c9c44e996c9c9451c5811df4d4d7f56272e"
  version "4.0.8"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
