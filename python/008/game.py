from loto import CardFabric, Game


W, H = 9, 3

cfb = CardFabric(W, H)

game = Game(cfb.build_player_card('Anastasiya'), cfb.build_pc_card('PC1'))
game.run()
