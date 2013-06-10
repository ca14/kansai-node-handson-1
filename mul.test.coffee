mul = require "./mul"
should = require "should"

describe "mul", ->
	it "2乗を返す", ->
		mul(2).should.eql 4
		mul(3).should.eql 9
		mul(4).should.eql 16