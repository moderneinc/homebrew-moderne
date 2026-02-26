require_relative "stable"
require_relative "staging"

class Mod < Formula
  desc "Automated code remediation."
  homepage "https://moderne.io"
  license :public_domain

  stable do
    url Stable::URL, using: :nounzip
    sha256 Stable::SHA256
    version Stable::VERSION
  end

  head do
    url Staging::URL, using: :nounzip
    sha256 Staging::SHA256
    version Staging::VERSION
  end

  def install
    # The .sh file is a self-extracting archive (shell header + tgz after __ARCHIVE__ marker)
    system "sh", "-c",
           "tail -n+$(awk '/^__ARCHIVE__$/{print NR+1;exit}' \"$1\") \"$1\" | tar xzf -",
           "--", cached_download
    libexec.install Dir["*"]
    bin.install_symlink libexec/"modw"
    bin.install_symlink bin/"modw" => "mod"

    # Trigger AOT cache creation
    system "#{bin}/mod", "--version"
  end

  test do
    system "#{bin}/mod", "--version"
  end
end
