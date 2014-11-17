require 'student'

describe Student do

  let(:student){Student.new}

  it 'can collect badges' do
    expect(student.badges).to be_empty
  end

  it 'can be awarded a badge' do
    student.award('angel')
    expect(student.badges).to eq(['angel'])
  end

  it 'does not have an award' do
    expect(student.has_unixoid?).to be false
  end

  it 'can have badges awarded' do
    student.award :unixoid
    expect(student.has_unixoid?).to be true
  end

end