# require_relative '../queens'
require 'rspec'
require 'yaml'

describe 'Queens' do
  let(:path) { File.join(File.dirname(__FILE__), 'solution.yml') }
  let(:solutions) { YAML.safe_load(File.read(path)) }

  it 'returns all the possible solutions' do
    expect(Queens.solve.solve.sort).to eq(solutions.keys.sort)
  end
end
