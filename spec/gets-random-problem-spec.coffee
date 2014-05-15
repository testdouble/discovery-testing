describe 'getsRandomProblem', ->
  Given -> @subject = requireSubject 'lib/gets-random-problem',
    "./generates-problem": @generatesProblem = generate: jasmine.createSpy().andReturn("random problem")
    "./saves-problem": @savesProblem = save: jasmine.createSpy().when("random problem").thenReturn("random saved problem")
    "./describes-problem": @describesProblem = describe: jasmine.createSpy().when("random saved problem").thenReturn("random saved described problem")
  describe '.get', ->
    When -> @result = @subject.get()
    Then -> @result == "random saved described problem"
