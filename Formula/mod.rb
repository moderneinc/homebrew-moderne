class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://artifacts.codegenomeproject.org/maven/io/moderne/moderne-cli/4.7.5/moderne-cli-4.7.5-modw.sh"
  sha256 "c69f8a75759387eb11fa8ce636c48c1bbdfb5f413c2710339b6e3145cc7a2b2a"
  version "4.7.5"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
