package Kauppapaikka.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Tuomas on 1.7.2016.
 * Tämä konrolleri tarjoaa joitakin ilmoitusten käsittelyyn liittymättömiä toimintoja
 */

@Controller
public class HelpController {

    @RequestMapping(value="/success", method= RequestMethod.GET)
    public String success() {
        return "success";
    }

    @RequestMapping(value="/failure", method= RequestMethod.GET)
    public String failure() {
        return "failure";
    }
}
