// VERIFY

func @f(%a: tensor<10x10xf32>, %b: tensor<10x10xf32>) -> tensor<f32> {
  %i = linalg.init_tensor []: tensor<f32>
  %aa = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0 * 100 + d1)>], iterator_types = ["parallel", "parallel"]}
    ins(%a : tensor<10x10xf32>) {
    ^bb0(%arg0: f32):  // no predecessors
      linalg.yield %arg0 : f32
  } -> tensor<100xf32>
  %bb = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0 * 100 + d1)>], iterator_types = ["parallel", "parallel"]}
    ins(%b : tensor<10x10xf32>) outs(%b : tensor<10x10xf32>) {
    ^bb0(%arg0: f32, %arg1: f32):  // no predecessors
      linalg.yield %arg0 : f32
  } -> tensor<100xf32>
  %e = linalg.dot ins(%aa, %bb : tensor<100xf32>,tensor<100xf32>)
    outs(%i: tensor<f32>) -> tensor<f32>
  return %e : tensor<f32>
}
