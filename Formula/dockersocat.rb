class Dockersocat < Formula
  desc "Serve /var/run/docker.sock on a TCP port."
  homepage "https://github.com/leighmcculloch/dockersocat"
  bottle :unneeded

  depends_on "socat"

  version "1.0.0"
  sha256 "04bfc7674cdabdfffb9768b04ac839dac9ab7a2b0883ff10fee9de6d33294f11"

  url "https://raw.githubusercontent.com/leighmcculloch/dockersocat/v#{version}/dockersocat"

  def install
    bin.install "dockersocat"
  end

  test do
    system "#{bin}/dockersocat -h"
  end
end
