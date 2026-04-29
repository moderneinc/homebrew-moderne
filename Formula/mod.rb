class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain
  url "https://repo1.maven.org/maven2/io/moderne/moderne-cli/4.2.1/moderne-cli-4.2.1-modw.sh"
  sha256 "01666572df9e48737779d4e52d6f5de57adda89a563cbfb96758399dbf8d28ba"
  version "4.2.1"

  def install
    bin.install "moderne-cli-#{version}-modw.sh" => "modw"
    bin.install_symlink bin/"modw" => "mod"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
