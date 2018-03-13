package szpak.marcin.management.app.controller;

import szpak.marcin.management.app.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/system")
public class SystemController {
    private final SystemService systemService;

    @Autowired
    public SystemController(SystemService systemService) {
        this.systemService = systemService;
    }


    @RequestMapping(value = "/allsystems", method = RequestMethod.GET)
    public ModelAndView allSystems() {
        ModelAndView model = new ModelAndView();
        model.addObject("systems", systemService.allSystems());
        model.setViewName("allsystem");
        return model;
    }

    @RequestMapping(value = "/findByName", method = RequestMethod.GET)
    public ModelAndView findSystemByName(@RequestParam String systemName) {
        ModelAndView model = new ModelAndView();
        model.addObject("system01", systemService.findSystemByName(systemName));
        model.setViewName("findSystemByName");
        return model;
    }

    @RequestMapping(value = "/find", method = RequestMethod.GET)
    public ModelAndView findSystem(@RequestParam(required = false) String systemName,
                                   @RequestParam(required = false) String systemDescription,
                                   @RequestParam(required = false) String technologyDescription,
                                   @RequestParam(required = false) String client) {
        ModelAndView model = new ModelAndView();
        model.addObject("systems", systemService.findSystem(systemName, systemDescription, technologyDescription, client));
        model.setViewName("allsystem");
        return model;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView showSearchForm() {
        ModelAndView model = new ModelAndView();
        model.setViewName("searchSystem");
        return model;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addSystem() {
        ModelAndView model = new ModelAndView();
        model.setViewName("addSystem");
        return model;
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public ModelAndView saveSystem(@RequestParam String systemName,
                                   @RequestParam String systemDescription,
                                   @RequestParam String technologyDescription,
                                   @RequestParam String client) {
        ModelAndView model = new ModelAndView();
        model.addObject("system01", systemService.createSystem(systemName, systemDescription, technologyDescription, client));
        model.setViewName("findSystemByName");
        return model;

    }

    @RequestMapping(value = "/eraze", method = RequestMethod.GET)
    public void erazeSystem(@RequestParam Integer systemId, HttpServletResponse response) throws IOException {
        systemService.deleteSystem(systemId);
        response.sendRedirect("/system/allsystems");
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public ModelAndView modifySystem(@RequestParam Integer systemId,
                                     @RequestParam String systemName,
                                     @RequestParam String systemDescription,
                                     @RequestParam String technologyDescription,
                                     @RequestParam String client) {
        ModelAndView model = new ModelAndView();
        model.addObject("system01", systemService.editSystem(systemId, systemName, systemDescription, technologyDescription, client));
        model.setViewName("findSystemByName");
        return model;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView editSystem(@RequestParam Integer systemId) {
        ModelAndView model = new ModelAndView();
        model.addObject("system", systemService.getSystem(systemId));

        model.setViewName("editSystem");
        return model;
    }
}
