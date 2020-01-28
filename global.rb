# グローバル変数はクラスの内部、外部を問わず、プログラムのどこからでも変更、参照が可能。

# グローバル変数の宣言と値の代入
$first_name = 'Joe'

# グローバル変数に依存するクラス
class User
  def initialize(name)
    $first_name = name
  end

  def self.name
    $first_name
  end

  def name
    $first_name
  end
end

# $first_nameにはすでに名前が代入されている
User.name   #=> "Joe"

user = User.new('Danny')
user.name #=> "Danny"

# User.newのタイミングで$first_nameが "Danny"に変更されている
User.name     #=> "Danny"
$first_name   #=> "Danny"
