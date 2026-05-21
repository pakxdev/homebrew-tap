class Pakx < Formula
  desc "Universal package manager for AI agent context"
  homepage "https://pakx.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-aarch64-apple-darwin"
      sha256 "376fcb537b37b1c6b4c8a96df0cdd6385ad85fa3aeccd76fa1ca36a4b1475535"
    end
    on_intel do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-x86_64-apple-darwin"
      sha256 "f19bba5da884590680fdf4644d19c5ebd63727048e39e263a2e0f9ae98a75b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-aarch64-unknown-linux-gnu"
      sha256 "4021400bd400f981d318fbe9f53a838b6f4c7d9a0474c581a891fef38b19af42"
    end
    on_intel do
      url "https://github.com/pakxdev/pakx/releases/download/v#{version}/pakx-v#{version}-x86_64-unknown-linux-gnu"
      sha256 "d079cd585c3e5c2caf4ec47f8436ba890df7c789416c0b063712591fe0d5f4e4"
    end
  end

  def install
    bin.install Dir["pakx-v#{version}-*"].first => "pakx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pakx --version")
  end
end
