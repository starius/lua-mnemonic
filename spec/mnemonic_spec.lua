-- lua-mnemonic, Return random words from the list
-- Copyright (c) 2015 Boris Nagaev
-- See the LICENSE file for terms of use.

describe("mnemonic", function()

    it("loads", function()
        local _ = require 'mnemonic'
    end)

    it("returns random words", function()
        local mnemonic = require 'mnemonic'
        local n = math.random(50, 100)
        local words = mnemonic.randomWords(n)
        assert.equal(n, #words)
    end)

    it("uses custom PRNG", function()
        local mnemonic = require 'mnemonic'
        local function random()
            return 1
        end
        local words = mnemonic.randomWords(2, random)
        assert.equal(words[1], words[2])
    end)

    it("uses custom word list", function()
        local mnemonic = require 'mnemonic'
        local n = 100
        local words = mnemonic.randomWords(n, nil, {"x"})
        for i = 1, n do
            assert.equal("x", words[i])
        end
    end)

end)
