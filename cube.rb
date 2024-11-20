class Cube < Formula
    desc "A cute spinning cube for your terminal!"
    homepage "https://github.com/aa830/cube.c"
    url "https://github.com/aa830/homebrew-cube.c/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "1958be6889f302c52c46785c5839c714b65627eea653caa5dae6f7c472e62474"
    version "v0.0.2"
  
    def install
      # Compile the project using `make`
      system "make"  # Ensure a `Makefile` exists in the project root directory
  
      # Install the compiled binary to Homebrew's bin directory
      bin.install "cube"
    
    end
  
    test do
      # Simple test to verify the installation
      system "#{bin}/cube", "--help"
    end
  end