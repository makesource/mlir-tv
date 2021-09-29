func @f(%a: tensor<30xf32>, %b: tensor<30xf32>) -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %c0 = constant 0 : index
  %c1 = constant 1 : index

  %a_0 = tensor.extract %a[%c0] : tensor<30xf32>
  %a_1 = tensor.extract %a[%c1] : tensor<30xf32>
  %b_0 = tensor.extract %b[%c0] : tensor<30xf32>
  %b_1 = tensor.extract %b[%c1] : tensor<30xf32>

  %a0 = tensor.insert %a_1 into %a[%c0] : tensor<30xf32>
  %a1 = tensor.insert %a_0 into %a0[%c1] : tensor<30xf32>

  %b0 = tensor.insert %b_1 into %b[%c0] : tensor<30xf32>
  %b1 = tensor.insert %b_0 into %b0[%c1] : tensor<30xf32>

  %e = linalg.dot ins(%a1, %b1 : tensor<30xf32>,tensor<30xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e : tensor<f32>
}
