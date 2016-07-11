package Kauppapaikka.controller;

import Kauppapaikka.AdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import java.util.ArrayList;
import java.util.List;
import Kauppapaikka.domain.MarketAd;

/**
 * Created by Tuomas on 22.6.2016.
 * Tämä on ilmoitusten käsittelystä huolehtiva kontrolleri
 */
@Controller
public class AdController {

    @Autowired
    private AdRepository repository;

    /*
     * Tämä luo sivuston etusivun, jossa on listattuna kaikki ilmoitukset.
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(@ModelAttribute("model") ModelMap model) {
        List<MarketAd> marketads = repository.findAll();
        model.addAttribute("marketads", marketads);
        return "index";
    }

    /*
     * Tämä luo sivun, joka esittää muuttujan id yksilöimän ilmoituksen kokonaisuudessaan
     */
    @RequestMapping(value = "/ad/{id}", method = RequestMethod.GET)
    public String ad(@ModelAttribute("model") ModelMap model, @PathVariable String id) {
        //haetaan muuttujan id yksilöimä ilmoitus
        MarketAd ad = repository.findById(id);
        model.addAttribute("ad", ad);
        return "ad";
    }

    /*
     * Tämä luo uuden ilmoituksen lisäys sivun
     */
    @RequestMapping(value="/newad", method=RequestMethod.GET)
    public String newAd() {
        return "newad";
    }

    /*
     * Tämä lähettää uuden ilmoituksen tiedot back-endiin. Lisäksi se avaa näkymän,
     * joka kertoo onko ilmoituksen jättö onnistunut vai ei.
     */
    @RequestMapping(value="/newad", method=RequestMethod.POST)
    public String newAd(@ModelAttribute MarketAd ad) {
        String view;
        //katsotaan onnistuuko lähetys, ja annetaan näkymä, joka kertoo lopputuloksen
        try {
            repository.save(ad);
            view = "success";
        }
        catch(Exception e) {
            e.printStackTrace();
            view = "failure";
        }

        return view;
    }
}
