# hubot-uk-bank-holidays

Returns the next UK Bank Holiday

See [`src/uk-bank-holidays.coffee`](src/uk-bank-holidays.coffee) for full documentation.

## Disclaimer

This is my first experiment with node, hubot and related technologies. While it did work for me please be wary.

## Installation

In hubot project repo, run:

`npm install hubot-uk-bank-holidays --save`

Then add **hubot-uk-bank-holidays** to your `external-scripts.json`:

```json
[
  "hubot-uk-bank-holidays"
]
```

## Sample Interaction

```
user1>> next bank holiday
hubot>> Next bank holiday is 25 March for Good Friday
```
