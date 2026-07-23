class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.4.1/moderne-cli-4.4.1-modw.sh"
  sha256 "fff1c3e7b4d8def5886220dfd813a8b72866e28113f1cdac49702ac152980acc"
  version "4.4.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
