// VERIFY

#map = affine_map<(d0, d1)-> (d1 * 4 + d0)>
func @buffer_cast(%arg : tensor<3x4xf32>) -> f32
{
  %c0 = constant 0 : index
  %c1 = constant 1 : index
  %0 = memref.buffer_cast %arg : memref<3x4xf32, #map>
  %1 = memref.load %0[%c0, %c1] : memref<3x4xf32, #map>
  return %1 : f32
}
