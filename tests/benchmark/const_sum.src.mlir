
func @f() -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %t = linalg.init_tensor [10]: tensor<10xf32>
  %c0 = constant 5.0: f32
  %c1 = constant 8.0: f32
  %c2 = constant 4.0: f32
  %i1 = constant 5: index
  %i2 = constant 2: index
  %a = linalg.fill (%c0, %t): f32, tensor<10xf32> -> tensor<10xf32>
  %b = linalg.fill (%c0, %t): f32, tensor<10xf32> -> tensor<10xf32>

  %a0 = tensor.insert %c1 into %a[%i1] : tensor<10xf32>
  %a1 = tensor.insert %c2 into %a0[%i2] : tensor<10xf32>
  %b0 = tensor.insert %c1 into %b[%i1] : tensor<10xf32>
  %b1 = tensor.insert %c2 into %b0[%i2] : tensor<10xf32>

  %e = linalg.dot ins(%a1, %b1 : tensor<10xf32>,tensor<10xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e: tensor<f32>
}
