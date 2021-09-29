// VERIFY

func @f(%a: tensor<5xf32>, %b: tensor<5xf32>) -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %e = linalg.dot ins(%a, %b : tensor<5xf32>,tensor<5xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e : tensor<f32>
}
