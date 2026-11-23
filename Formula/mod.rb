class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.13.0/moderne-cli-4.13.0-modw.sh"
  sha256 "8da152abcd9ef46266e3a7ac02a4279fb2ac36596e163d4faade11e9e4c7ce8f"
  version "4.13.0"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
