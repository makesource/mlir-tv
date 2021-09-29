#!/bin/sh

test_size=(5 10 15 20 30 50 100  1000)
for s in "${test_size[@]}"; do
  src_file="tests/benchmark/arg_input_sum_${s}.src.mlir"
  tgt_file="tests/benchmark/arg_input_sum_${s}.tgt.mlir"
  echo "Const CVC5 MultiSet Test Size=${s}"
  timeout 30s ./build/mlir-tv ${src_file} ${tgt_file} --associative --cvc-only 2>/dev/null | tail -n2 -f
done

echo "\n\n"

test_size=(5 10 15 20 30 50 100  1000)
for s in "${test_size[@]}"; do
  src_file="tests/benchmark/arg_input_sum_${s}.src.mlir"
  tgt_file="tests/benchmark/arg_input_sum_${s}.tgt.mlir"
  echo "Const CVC5 HashFn Test Size=${s}"
  timeout 30s ./build/mlir-tv ${src_file} ${tgt_file} --associative --cvc-only --hashfn 2>/dev/null | tail -n2 -f
done
