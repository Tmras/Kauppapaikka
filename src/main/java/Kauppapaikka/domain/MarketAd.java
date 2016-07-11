package Kauppapaikka.domain;

/**
 * Created by Tuomas on 23.6.2016.
 */

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@JsonIgnoreProperties(ignoreUnknown = true)
@Document(collection="kauppapaikka.marketad")
public class MarketAd {

    @Id
    @JsonProperty("id")
    private String id;// = null;
    @JsonProperty("title")
    private String title;// = null;
    @JsonProperty("description")
    private String description;// = null;
    @JsonProperty("priceCents")
    private String priceCents;// = null;
    @JsonProperty("imageUrl")
    private String imageUrl;// = null;
    @JsonProperty("thumbnailUrl")
    private String thumbnailUrl;// = null;
    @JsonProperty("email")
    private String email;// = null;
    @JsonProperty("phone")
    private String phone;// = null;

    public MarketAd() {
    }

    public MarketAd(String id, String title, String description, String priceCents, String imageUrl, String thumbnailUrl, String email, String phone) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.priceCents = priceCents;
        this.imageUrl = imageUrl;
        this.thumbnailUrl = thumbnailUrl;
        this.email = email;
        this.phone = phone;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPriceCents() {
        return priceCents;
    }

    public void setPriceCents(String priceCents) {
        this.priceCents = priceCents;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getThumbnailUrl() {
        return thumbnailUrl;
    }

    public void setThumbnailUrl(String thumbnailUrl) {
        this.thumbnailUrl = thumbnailUrl;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


}
