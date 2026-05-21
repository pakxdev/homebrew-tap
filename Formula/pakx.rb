class Pakx < Formula
  desc "Universal package manager for AI agent context"
  homepage "https://pakx.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-aarch64-apple-darwin"
      sha256 "15d32ac77b3786139d79cdea9e646528addd08d317e65b3a080f0326f7fbc5b3"
    end
    on_intel do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-x86_64-apple-darwin"
      sha256 "21188d9c243307ec4e2f29a3700cad876739531ed7dfb5d597ddde5581f684d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-aarch64-unknown-linux-gnu"
      sha256 "f56370be27a59b92992119d67e3e822ca8508275378b9559144befee3efe0cf4"
    end
    on_intel do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-x86_64-unknown-linux-gnu"
      sha256 "97acb66cd12bad9cc1a345c9ff59e80a55847d535fca4441c68f303161d4e3a0"
    end
  end

  def install
    bin.install Dir["pakx-v#{version}-*"].first => "pakx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pakx --version")
  end
end
