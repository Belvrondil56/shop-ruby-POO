require './lib/produit'
require './lib/panier'
require 'pry'

total = 0
panier = Panier.new

ARGF.each do |argument|
  argument = argument.chomp
  prix =
    argument.split(',').map do |product|
      break if product == 'Quitter'

      product.strip!
      produit = Produit.new(product)
      total += panier.reduc(produit)
      panier.add(produit)
      puts "#{produit.name} -> #{total}"
      total
    end
end
