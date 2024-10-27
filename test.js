const { describe, default: test, expect, test } = require("node:test");

describe("test", () => {
  test("sample", () => {
    const expected = true;

    const actual = true;

    expect(actual).toBe(expected);
  });
});
