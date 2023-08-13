# Boolean matchers
#
#
class BeTruthyMatcher < CoreMatcher
  def positive_match? actual
    [
      true == actual,
     "#{actual} is not truthy. #{@fail_with}"
    ]
  end
end

def be_truthy fail_with: ""
  BeTruthyMatcher.new fail_with
end

class BeFalsyMatcher < CoreMatcher
  def positive_match? actual
    [
      false == !!actual,
      "#{actual} is not falsy. #{@fail_with}"
    ]
  end
end

def be_falsy fail_with: ""
  BeFalsyMatcher.new fail_with
end

class BeNilMatcher < CoreMatcher
  def positive_match? actual
    [
      actual == nil,
      "#{actual} is not nil"
    ]
  end
end

def be_nil fail_with: ""
  BeNilMatcher.new fail_with
end
