# Export environment variables pointing to LLVM-Projects.
export MLIR_DIR=$(pwd)/llvm-project/build/lib/cmake/mlir

mkdir onnx-mlir/build && cd onnx-mlir/build
cmake -G Ninja ..
cmake --build .

# Run lit tests:
export LIT_OPTS=-v
cmake --build . --target check-onnx-lit
