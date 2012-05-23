# LLVM Tutorial in Ruby

Inspired by the LLVM Tutorials and revolted by the C++ examples, I
decided to write something in Ruby instead.

# Install

1. Install LLVM 2.9 via your preferred package management tool.
2. (Recommended) Setup rvm and create a gemset for this project. See http://beginrescueend.com
3. Run bundle install to get the required gems
4. Run rake -T to see your options.

# Credits

Inspired by

1. [LLVM] (http://llvm.org)
2. [ruby-llvm] (http://github.com/jvoorhis/ruby-llvm) and
3. various tiny language interpretors and compilers from around the net.

# Notes
On OSX you may need to set LD_LIBRARY_PATH so you can find the LLVM
library.

On my Mac using MacPorts I needed this:

export LD_LIBRARY_PATH=/opt/local/lib

Something similar would be needed if your LLVM libraries aren't in the
standard location.
