require __dir__ + "/stable.rb"
require __dir__ + "/staging.rb"

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
    bin.install "mod"
  end
  test do
      system "#{bin}/mod"
   end
end
