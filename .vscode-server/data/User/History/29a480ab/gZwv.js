let sum = 0;

console.log("holi");
const sumOfNegative = (numbers) => {
  numbers.forEach((number) => {
    // eslint-disable-next-line no-unused-expressions
    number < 0 ? sum += number : sum += 0;
  });
  return (console.log(sum));
  // TODO: You are getting a `numbers` array. Return the sum of **negative** numbers only.
};

module.exports = sumOfNegative; // Do not remove.
module.exports = sumOfNegative([-1, 1, 2, -2, -4, 60, -129]);
