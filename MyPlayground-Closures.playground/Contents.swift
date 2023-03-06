
var goldBars = 200;
let unlockTreasureChest = { (inventory : inout Int) -> () in
    return inventory += 100
}
unlockTreasureChest(&goldBars)
print(goldBars)
