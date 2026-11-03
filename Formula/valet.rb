class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.107"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "58849d4f12edede9bb7eedebacd36917fbe5dc0c826b081970c7ea7f4375000a"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "122c54599baa241124c29527cd49c6201c311485361a99649e3747a958ac1755"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "a46fd6b64fd38c8ac5ed2f4abbd9125a4fd68b56bea106905b845283e519d160"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "5d06264fcd23d6a836a98519f58edcd8df1b1d4dad724a1f21ebb2607c4b8030"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.107", shell_output("#{bin}/valet version")
  end
end
