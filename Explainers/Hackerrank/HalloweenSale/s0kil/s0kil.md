To solve this in a simple and efficient way,
We iterate over
(`price` minus `discount`)
until the
(`price` is equal to the `minimum`).

### Here Is An Example, With:

- `price = 10`
- `discount = 2`
- `minimum = 6`
- `wallet = 100`
- `game_count = 0`

### 1st Iteration:

- `price == minimum` (false)

- `wallet = wallet - price` (90), 100 - 10

- `price = price - discount` (8), 10 - 2

- `game_count = 1`

### 2nd Iteration:

- `price == minimum` (false)

- `wallet = wallet - price` (82), 90 - 8

- `price = price - discount` (6), 8 - 2

- `game_count = 2`

### 3rd Iteration:

- `price == minimum` (true)

Now we do not need to iterate anymore, the `price` is equal to `minimum`

We take the current `wallet` (82), and divide it by the minimum (6)

- `82 / 6` (13)

_Note: (13) is truncated_

### Our final result is (15)

- `game_count` (2) + `82 / 6` (13)
