package szpak.marcin.management.app.service;

import szpak.marcin.management.app.dao.OrderDaoImp;
import szpak.marcin.management.app.model.Order;
import szpak.marcin.management.app.model.Settlement;
import szpak.marcin.management.app.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderService {
    private final OrderDaoImp orderDaoImp;
    private final SystemService systemService;
    private final DateUtil dateUtil;

    @Autowired
    public OrderService(OrderDaoImp orderDaoImp, SystemService systemService, DateUtil dateUtil) {
        this.orderDaoImp = orderDaoImp;
        this.systemService = systemService;
        this.dateUtil = dateUtil;
    }

    @Transactional
    public Order createOrder(int orderNumber,
                             String systemName,
                             String startDate,
                             String expirationDate,
                             Double amountOfMoney,
                             Settlement paymentPeriod,
                             boolean isActive) {

        Order order = new Order();
        order.setOrderNumber(orderNumber);
        order.setSystem(systemService.findSystemByName(systemName));
        order.setStartDate(dateUtil.dateFormat(startDate));
        order.setExpirationDate(dateUtil.dateFormat(expirationDate));
        order.setAmountOfMoney(amountOfMoney);
        order.setPaymentPeriod(paymentPeriod);
        order.setActive(isActive);
        orderDaoImp.add(order);
        return order;
    }

    @Transactional
    public Order editOrder(int orderId,
                           Integer orderNumber,
                           String systemName,
                           String startDate,
                           String expirationDate,
                           Double amountOfMoney,
                           Settlement paymentPeriod,
                           boolean isActive) {
        Order order = orderDaoImp.getOrder(orderId);
        order.setOrderNumber(orderNumber);
        order.setSystem(systemService.findSystemByName(systemName));
        order.setStartDate(dateUtil.dateFormat(startDate));
        order.setExpirationDate(dateUtil.dateFormat(expirationDate));
        order.setAmountOfMoney(amountOfMoney);
        order.setPaymentPeriod(paymentPeriod);
        order.setActive(isActive);
        orderDaoImp.editOrder(order);
        return order;
    }

    @Transactional(readOnly = true)
    public List<Order> allOrders() {
        return orderDaoImp.listOrder();
    }

    @Transactional
    public void deleteOrder(int orderId) {
        orderDaoImp.deleteOrder(orderId);
    }

    @Transactional
    public Order findOrderByOrderNumber(int orderNumber) {
        return orderDaoImp.findOrder(orderNumber);
    }

    @Transactional
    public Order getOrder(Integer orderId) {
        return orderDaoImp.getOrder(orderId);
    }

    @Transactional
    public List<Order> findOrder(Integer orderNumber, String systemName, Double amountOfMoney, String startDate, String expirationDate, Settlement amountPeriod) {
        return orderDaoImp.findOrder(orderNumber, systemName, amountOfMoney, dateUtil.dateFormat(startDate), dateUtil.dateFormat(expirationDate), amountPeriod);
    }
}
