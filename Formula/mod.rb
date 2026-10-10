class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.9.2/moderne-cli-4.9.2-modw.sh"
  sha256 "73403a0acfcc369f190959fd6ce5aa1427e27d4ab898d8b5a8377dd98f94809e"
  version "4.9.2"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
