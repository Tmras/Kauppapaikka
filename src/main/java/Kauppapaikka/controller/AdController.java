package Kauppapaikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import java.util.ArrayList;
import java.util.List;
import Kauppapaikka.domain.MarketAd;

/**
 * Created by Tuomas on 22.6.2016.
 */
@Controller
public class AdController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(@ModelAttribute("model") ModelMap model) {
        RestTemplate restTemplate = new RestTemplate();
        String url="http://mepa-store-api.herokuapp.com/marketads";
        List<MarketAd> marketads = (ArrayList<MarketAd>) restTemplate.getForObject(url, List.class);
        model.addAttribute("marketads", marketads);
        return "index";
    }

    @RequestMapping(value = "/ad/{id}", method = RequestMethod.GET)
    public String ad(@ModelAttribute("model") ModelMap model, @PathVariable String id) {
        RestTemplate restTemplate = new RestTemplate();
        String url="http://mepa-store-api.herokuapp.com/marketads/"+id;
        MarketAd ad = restTemplate.getForObject(url, MarketAd.class);
        model.addAttribute("ad", ad);
        return "ad";
    }

    @RequestMapping(value="/newad", method=RequestMethod.GET)
    public String newAd() {
        return "newad";
    }

    @RequestMapping(value="/newad", method=RequestMethod.POST)
    public String newAd(@ModelAttribute MarketAd ad) {
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://mepa-store-api.herokuapp.com/marketads/";
        String apiResponse = restTemplate.postForObject(url, ad, String.class);
        System.out.println(apiResponse);
        return "newad";
    }
}
