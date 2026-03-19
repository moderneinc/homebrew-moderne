require_relative "stable"
require_relative "staging"

class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain

  stable do
    url Stable::URL
    sha256 Stable::SHA256
    version Stable::VERSION
  end

  head do
    url Staging::URL
    sha256 Staging::SHA256
    version Staging::VERSION
  end

  def install
    if head?
      bin.install "moderne-cli-#{version}-modw.sh" => "modw"
      bin.install_symlink bin/"modw" => "mod"
    else
      bin.install "mod"
    end
  end
  test do
      system "#{bin}/mod", "--version"
   end
end
