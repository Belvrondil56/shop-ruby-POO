class Produit
  attr_accessor :prix, :name

  PRODUITS = {
    "Pommes" => 100,
    "Bananes" => 150,
    "Cerises" => 75,
    "Mele" => 100,
    "Apples" => 100,
  }

  def initialize(nom)
    @name = nom
    @prix = PRODUITS[nom]
  end
end
