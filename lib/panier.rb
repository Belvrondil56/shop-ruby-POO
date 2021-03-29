# Classe panier
class Panier
  attr_reader :contenu

  def initialize
    @contenu = []
  end

  def how_many(produit)
    compteur = 1
    contenu.each do |a|
      if a.include? produit.name.to_s
        compteur += 1
      else
        compteur
      end
    end
    compteur
  end

  def reduc(produit)
    if (produit.name == "Apples") || (produit.name == "Mele") || (produit.name == "Cerises")
      if produit.name == "Apples"
        produit.prix = if how_many(produit) < 3
            100
          elsif how_many(produit) % 3 == 0
            0
          else
            100
          end
      end
      if produit.name == "Mele"
        produit.prix = if how_many(produit) < 2
            100
          elsif how_many(produit).even?
            50
          else
            100
          end
      end
      if produit.name == "Cerises"
        produit.prix = if how_many(produit) < 2
            75
          elsif how_many(produit).even?
            55
          else
            75
          end
      end
      produit.prix
    else produit.prix     end
  end

  def add(produit)
    contenu << produit.name
  end
end
