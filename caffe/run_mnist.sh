#! /bin/bash
set -e
cd /opt/caffe
sh data/mnist/get_mnist.sh
sh examples/mnist/create_mnist.sh
./build/tools/caffe train --solver=/workspace/mnist_solver.prototxt $@
