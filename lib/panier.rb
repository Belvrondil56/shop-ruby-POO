class Panier

    attr_reader :contenu

    def initialize()
        @contenu = []
    end

    def how_many(produit)
        compteur = 1
        for a in contenu
            if a.include? "#{produit.name}"
                compteur += 1
            else
                return compteur
            end
        end
        return compteur
    end

    def reduc(produit)
        if produit.name == "Apples" or produit.name == "Mele" or produit.name == "Cerises"
            if produit.name == "Apples"
                if how_many(produit) < 3
                    produit.prix = 100
                elsif how_many(produit)%3 == 0
                    produit.prix = 0
                else 
                    produit.prix = 100
                end
            end
            if produit.name == "Mele"
                if how_many(produit) < 2
                     produit.prix = 100
                elsif how_many(produit)%2 == 0
                    produit.prix = 50
                else 
                    produit.prix = 100
                end
            end
            if produit.name == "Cerises"
                if how_many(produit) < 2
                    produit.prix = 75
                elsif how_many(produit)%2 == 0
                    produit.prix = 55
                else 
                    produit.prix = 75
                end
            end
            produit.prix
            else produit.prix
        end
    end

    def add(produit)
        contenu << produit.name
    end
end