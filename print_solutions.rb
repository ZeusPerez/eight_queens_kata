require 'yaml'

RELATIVE_PATH = 'spec/solution.yml'.freeze

def read_file
  File.read(File.join(File.dirname(__FILE__), RELATIVE_PATH))
end

def solution
  YAML.safe_load(read_file)
end

def print_board(chess_board)
  chess_board.each { |row| puts row.join('   ') }
end

def print_all_solutions
  solution.each do |solution_number, chess_board|
    puts %(\nSolution #{solution_number}:\n)
    print_board(chess_board)
  end
end

print_all_solutions
