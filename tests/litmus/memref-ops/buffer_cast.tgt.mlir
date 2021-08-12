func @buffer_cast(%arg : tensor<10x10xf32>) -> f32
{
  %c0 = constant 0 : index
  %c1 = constant 1 : index
  %0 = tensor.extract %arg[%c0, %c1] : tensor<10x10xf32>
  return %0 : f32
}
