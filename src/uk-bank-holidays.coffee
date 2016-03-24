# Description
#   Returns the next UK Bank Holiday
#
# Commands:
#   When's the `next bank holiday` - 'Next bank holiday is 25 March for Good Friday'
#   The key phrase is 'next bank holiday'
#
# Author:
#   Dean Wilson <dean.wilson@gmail.com>

cheerio = require('cheerio')

module.exports = (robot) ->
  robot.hear /next bank holiday/i, (res) ->

    robot.http('https://www.gov.uk/bank-holidays')
      .get() (err, resp, body) ->

        $ = cheerio.load(body)

        next_date   = $('#england-and-wales div p em').text()
        next_reason = $('#england-and-wales div p span').text()

        res.send("Next bank holiday is " + next_date + " for " + next_reason)

