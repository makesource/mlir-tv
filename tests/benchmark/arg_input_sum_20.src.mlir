// VERIFY

func @f(%a: tensor<20xf32>, %b: tensor<20xf32>) -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %e = linalg.dot ins(%a, %b : tensor<20xf32>,tensor<20xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e : tensor<f32>
}
