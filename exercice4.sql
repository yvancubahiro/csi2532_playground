ALTER TABLE Author 
ADD author_sum_rating integer DEFAULT 0;

CREATE TRIGGER update_author_sum_rating
AFTER UPDATE OF Rating ON Book 
FOR EACH ROW
EXECUTE PROCEDURE update_author_sum_rating();
-- Dans ce cas, update_author_sum_rating() est la fonction qui met a jour l'attribut author_sum_rating