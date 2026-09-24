class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.8.8/moderne-cli-4.8.8-modw.sh"
  sha256 "2d5bf3be98b632b4d7df76ffcb5afda68e5ba5a6ed532b70530176a3ee5474c6"
  version "4.8.8"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
