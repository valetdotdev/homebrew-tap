class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.82"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "8b6b3a424e845c459ffe2686a4775c5e60fabdc41be95a0bff128312a9db09cd"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "8a3612c7a247dea305ffffe5dec2726f51bb2fee8540e419024b98d982f4aa37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d5ff95b770097a6e223ef1715f4d5c5730b81631e236737429d26e1bc009ba8c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "bff3ad1d8f90c4742141aae52885fa47cdc593d8ebb549152307eaa6f4fe4455"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.82", shell_output("#{bin}/valet version")
  end
end
