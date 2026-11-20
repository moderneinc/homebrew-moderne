class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.12.13/moderne-cli-4.12.13-modw.sh"
  sha256 "301179d6bea819a4f58159fadf7cfa00a36553dd85e8886a2aeaa36a69bd377c"
  version "4.12.13"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
