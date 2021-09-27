// VERIFY

func @f(%a: tensor<10x10xf32>, %b: tensor<10x10xf32>) -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %aa = linalg.tensor_collapse_shape %a [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
  %bb = linalg.tensor_collapse_shape %b [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
  %e = linalg.dot ins(%aa, %bb : tensor<100xf32>,tensor<100xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e : tensor<f32>
}
