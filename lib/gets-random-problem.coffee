generatesProblem = require("./generates-problem")
savesProblem = require("./saves-problem")
describesProblem = require("./describes-problem")

module.exports =
  get: ->
    describesProblem.describe(
      savesProblem.save(
        generatesProblem.generate()
      )
    )
