package Kauppapaikka;

import Kauppapaikka.domain.MarketAd;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Tuomas on 11.7.2016.
 */
@Repository
public interface AdRepository extends MongoRepository<MarketAd, String> {

    MarketAd findById(String id);
}
