const Betting = artifacts.require("Betting");

contract("Betting", function(accounts) {
    
    it("should bet 2eth from account 1", async function() {
        
        let bet = await Betting.deployed();
        
        let account_one = accounts[0];
        let account_two = accounts[1];
        
        let account_one_starting_balance = (await bet.balances[account_one]).toNumber();
        let account_two_starting_balance = (await bet.balances[account_two]).toNumber();

        let amount = 4;
        await coin.transfer(account_two, amount);

        let account_one_ending_balance = (await bet.balances[account_one]).toNumber();
        let account_two_ending_balance = (await coin.balances[account_two]).toNumber();

        assert.equal(account_one_ending_balance, account_one_starting_balance - amount, "Amount wasn't correctly taken from the sender");
        assert.equal(account_two_ending_balance, account_two_starting_balance + amount, "Amount wasn't correctly sent to the receiver");
    });
});
