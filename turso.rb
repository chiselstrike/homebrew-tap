# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.91.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "93b2acb9111fbe4531d6e3a363302afd2c54b0ac579ca946ba4d9ebe7252336b"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "02ac4b96d66207c474366400c918a11fd0559a0b4c404de6745b9af7a4ff3c8f"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Linux_x86_64.tar.gz"
      sha256 "d515e3961622ddf0a0c601ff556123c6540fb3e93e073bcdc15bd37c80aec483"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.91.0/homebrew-tap_Linux_arm64.tar.gz"
      sha256 "f6a7a82ab4c33bb7a0fecbf6f3b11d70343fbf10a04c707ec08cecf2814e0249"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end
