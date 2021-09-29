#!/bin/sh

test_size=(5 10 15 20 30 50 100  1000)
for s in "${test_size[@]}"; do
  src_file="tests/benchmark/const_sum_${s}.src.mlir"
  tgt_file="tests/benchmark/const_sum_${s}.tgt.mlir"
  echo "Const Z3 Multiset Test Size=${s}"
  ./build/mlir-tv ${src_file} ${tgt_file} --associative | tail -n2
done

echo "\n\n"

for s in "${test_size[@]}"; do
  src_file="tests/benchmark/const_sum_${s}.src.mlir"
  tgt_file="tests/benchmark/const_sum_${s}.tgt.mlir"
  echo "Const Z3 HashFn Test Size=${s}"
  ./build/mlir-tv ${src_file} ${tgt_file} --associative --hashfn | tail -n2
done
