class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.9.1/moderne-cli-4.9.1-modw.sh"
  sha256 "54f083f894fbb8c64f3774f7c89e875886b98faf1b50599e1cc25e78fdfc80f8"
  version "4.9.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
