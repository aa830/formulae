class Donut < Formula
  desc "The original donut.c, but better!"
  homepage "https://github.com/aa830/donut.c"
  url "https://github.com/aa830/homebrew-donut.c/archive/refs/tags/0.1.3.tar.gz"
  sha256 "bea8a3421d7915f35620f8bf7457d653daf320f05685707696ecd6917d158abf"
  version "0.1.3"

  def install
    # Compile the project using `make`
    system "make"  # Ensure a `Makefile` exists in the project root directory

    # Install the compiled binary to Homebrew's bin directory
    bin.install "donut"

    # Install the man page
    man1.install "man/man1/donut.1"
  end

  test do
    # Simple test to verify the installation
    system "#{bin}/donut", "--help"
  end
end
