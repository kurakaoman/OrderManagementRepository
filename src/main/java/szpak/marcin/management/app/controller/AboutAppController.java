package szpak.marcin.management.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AboutAppController {

    @RequestMapping(value = "/aboutApp", method = RequestMethod.GET)
    public ModelAndView aboutApp() {
        ModelAndView model = new ModelAndView();
        model.setViewName("aboutApp");
        return model;
    }
}
