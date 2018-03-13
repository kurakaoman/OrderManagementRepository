package szpak.marcin.management.app.controller;

import szpak.marcin.management.app.model.Settlement;
import szpak.marcin.management.app.service.OrderService;
import szpak.marcin.management.app.service.SystemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping("/order")
public class OrderController {
    private final static Logger log = LoggerFactory.getLogger(OrderController.class);
    private final OrderService orderService;
    private final SystemService systemService;

    @Autowired
    public OrderController(OrderService orderService, SystemService systemService) {
        this.orderService = orderService;
        this.systemService = systemService;
    }


    @RequestMapping(value = "/allorders", method = RequestMethod.GET)
    public ModelAndView allOrders() {
        ModelAndView model = new ModelAndView();
        model.addObject("orders", orderService.allOrders());
        model.setViewName("allorders");
        return model;
    }

    @RequestMapping(value = "/activeorders", method = RequestMethod.GET)
    public ModelAndView activeOrders() {
        ModelAndView model = new ModelAndView();
        model.addObject("orders", orderService.allOrders());
        model.setViewName("activeorders");
        return model;
    }

    @RequestMapping(value = "/find", method = RequestMethod.GET)
    public ModelAndView findOrder(@RequestParam(required = false) Integer orderNumber,
                                  @RequestParam(required = false) String systemName,
                                  @RequestParam(required = false) Double amountOfMoney,
                                  @RequestParam(required = false) String startDate,
                                  @RequestParam(required = false) String expirationDate,
                                  @RequestParam(required = false) Settlement amountPeriod) {
        ModelAndView model = new ModelAndView();
        model.addObject("orders", orderService.findOrder(orderNumber, systemName, amountOfMoney, startDate, expirationDate, amountPeriod));
        model.setViewName("allorders");
        return model;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addOrder() {
        ModelAndView model = new ModelAndView();
        model.addObject("systems", systemService.allSystems());
        model.setViewName("addOrder");
        return model;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView search() {
        ModelAndView model = new ModelAndView();
        model.addObject("systems", systemService.allSystems());
        model.setViewName("searchOrder");
        return model;
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public ModelAndView saveOrder(@RequestParam Integer orderNumber,
                                  @RequestParam String system,
                                  @RequestParam String startDate,
                                  @RequestParam String expirationDate,
                                  @RequestParam Double amountOfMoney,
                                  @RequestParam Settlement amountPeriod,
                                  @RequestParam boolean isActive) {
        ModelAndView model = new ModelAndView();
        model.addObject("order01", orderService.createOrder(orderNumber, system, startDate, expirationDate, amountOfMoney, amountPeriod, isActive));
        model.setViewName("findOrderByOrderNumber");
        log.info("Tu skończył się SAVE");
        return model;
    }

    @RequestMapping(value = "/eraze", method = RequestMethod.GET)
    public void erazeOrder(@RequestParam Integer orderId, HttpServletResponse response) throws IOException {
        orderService.deleteOrder(orderId);
        response.sendRedirect("/order/allorders");
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public ModelAndView moifyOrder(@RequestParam Integer orderId,
                                   @RequestParam Integer orderNumber,
                                   @RequestParam String system,
                                   @RequestParam String startDate,
                                   @RequestParam String expirationDate,
                                   @RequestParam Double amountOfMoney,
                                   @RequestParam Settlement amountPeriod,
                                   @RequestParam boolean isActive) {
        ModelAndView model = new ModelAndView();
        model.addObject("order01", orderService.editOrder(orderId, orderNumber, system, startDate, expirationDate, amountOfMoney, amountPeriod, isActive));
        model.setViewName("findOrderByOrderNumber");
        log.info("Tu skończył się MODIFY");
        return model;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView editOrder(@RequestParam Integer orderId) {
        ModelAndView model = new ModelAndView();
        model.addObject("order", orderService.getOrder(orderId));
        model.addObject("systems", systemService.allSystems());

        model.setViewName("editOrder");
        return model;
    }

}

