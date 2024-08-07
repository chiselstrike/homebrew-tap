# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Turso < Formula
  desc ""
  homepage "https://github.com/chiselstrike/homebrew-tap"
  version "0.96.3"

  depends_on "libsql/sqld/sqld"

  on_macos do
    on_intel do
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Darwin_x86_64.tar.gz"
      sha256 "ba8117dc42a3e49069530a84cee21421a662b5405f600c486886d9b87acc3cf2"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
    on_arm do
      url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Darwin_arm64.tar.gz"
      sha256 "e1e933bed4ff21a0cfa6338f75473a8f7ef096031e6ecbb7a5a5e3871c57afc3"

      def install
        bin.install "turso"
        bash_completion.install "completions/turso.bash" => "turso"
        zsh_completion.install "completions/turso.zsh" => "_turso"
        fish_completion.install "completions/turso.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Linux_x86_64.tar.gz"
        sha256 "1c9a67afb68841348705ef8d0c58ae846bb8184f2d7c196163f41c466809cf55"

        def install
          bin.install "turso"
          bash_completion.install "completions/turso.bash" => "turso"
          zsh_completion.install "completions/turso.zsh" => "_turso"
          fish_completion.install "completions/turso.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chiselstrike/homebrew-tap/releases/download/v0.96.3/homebrew-tap_Linux_arm64.tar.gz"
        sha256 "0677cc4da05a2aefed5f6c84d79653ed83d9d4deb80396e87a80f02f884261cb"

        def install
          bin.install "turso"
          bash_completion.install "completions/turso.bash" => "turso"
          zsh_completion.install "completions/turso.zsh" => "_turso"
          fish_completion.install "completions/turso.fish"
        end
      end
    end
  end

  def post_install
    exec('turso post-install')
  end
end
