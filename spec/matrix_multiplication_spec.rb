require 'matrix_multiplication'

describe 'matrix_multiplication' do

  it 'handles integers' do
    mat1 = [[1, 2, 3], [4, 5, 6]]
    mat2 = [[7, 8], [9, 10], [11, 12]]
    result = [[58, 64], [139, 154]]
    expect(matmult(mat1, mat2)).to eq result
  end

  it 'handles floats' do
    mat1 = [[rand, rand, rand], [rand, rand, rand], [rand, rand, rand]]
    mat2 = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    expect(matmult(mat1, mat2)).to eq mat1
    expect(matmult(mat2, mat1)).to eq mat1
  end

  # nb, for error matchers, you need to run your code within a block!
  it 'throws errors when given matrices of incompatible dimensions' do
  mat1 = [[rand, rand], [rand, rand]]
  mat2 = [[rand, rand, rand], [rand, rand, rand], [rand, rand, rand]]
  expect { matmult(mat1, mat2) }.to raise_error('matrix 2 must have a row for every column in matrix 1!')
  mat1 = [[rand, rand, rand], [rand, rand, rand]]
  mat2 = [[rand, rand, rand], [rand, rand, rand]]
  expect { matmult(mat1, mat2) }.to raise_error('matrix 2 must have a row for every column in matrix 1!')
  end

end
