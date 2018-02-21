const util = require('util');

const HelloWorld = artifacts.require('HelloWorld');


contract('HelloWorldContractSpec', function() {

    it("should say hello", function(){
        return HelloWorld.deployed().then(function(instance) {
            return instance.sayHello.call("Nilanjan");
        }).then(function(msg) {
            assert.equal(msg, "Hello Nilanjan", "should say hello to given name");
        });
    });
});

