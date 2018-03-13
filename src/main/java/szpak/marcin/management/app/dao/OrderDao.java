package szpak.marcin.management.app.dao;

import szpak.marcin.management.app.model.Order;

import java.util.List;

public interface OrderDao {
    void add(Order order);

    List<Order> listOrder();

    void deleteOrder(Integer orderNumber);

    Order findOrder(Integer orderNumber);

    void editOrder(Order order);

}
