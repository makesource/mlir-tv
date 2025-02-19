#map0 = affine_map<(d0, d1, d2, d3) -> (d3, d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d3)>
module  {
  func @conv(%arg0: tensor<1x29x29x4xf32>, %arg1: tensor<16x3x3x4xf32>) -> tensor<1x14x14x16xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<16xf32>
    %cst_0 = arith.constant dense<[1, 2, 3, 0]> : tensor<4xi64>
    %1 = linalg.init_tensor [3, 3, 4, 16] : tensor<3x3x4x16xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg1 : tensor<16x3x3x4xf32>) outs(%1 : tensor<3x3x4x16xf32>) {
    ^bb0(%arg2: f32, %arg3: f32):  // no predecessors
      linalg.yield %arg2 : f32
    } -> tensor<3x3x4x16xf32>
    %3 = linalg.init_tensor [1, 14, 14, 16] : tensor<1x14x14x16xf32>
    %cst_1 = arith.constant 0.000000e+00 : f32
    %4 = linalg.fill(%cst_1, %3) : f32, tensor<1x14x14x16xf32> -> tensor<1x14x14x16xf32> 
    %5 = linalg.init_tensor [1, 14, 14, 16] : tensor<1x14x14x16xf32>
    %6 = linalg.conv_2d_nhwc_hwcf {dilations = dense<1> : tensor<2xi64>, strides = dense<2> : tensor<2xi64>} ins(%arg0, %2 : tensor<1x29x29x4xf32>, tensor<3x3x4x16xf32>) outs(%4 : tensor<1x14x14x16xf32>) -> tensor<1x14x14x16xf32>
    %7 = linalg.generic {indexing_maps = [#map2, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%0, %6 : tensor<16xf32>, tensor<1x14x14x16xf32>) outs(%5 : tensor<1x14x14x16xf32>) {
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):  // no predecessors
      %8 = arith.addf %arg2, %arg3 : f32
      linalg.yield %8 : f32
    } -> tensor<1x14x14x16xf32>
    return %7 : tensor<1x14x14x16xf32>
  }
}

