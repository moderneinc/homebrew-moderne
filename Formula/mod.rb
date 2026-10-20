class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.11.1/moderne-cli-4.11.1-modw.sh"
  sha256 "6ecce2a773ef5ce246f89772da5ce6a0e317d0dfa54110c6bc588650a6c13fa2"
  version "4.11.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
