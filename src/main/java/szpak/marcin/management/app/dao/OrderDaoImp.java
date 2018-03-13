package szpak.marcin.management.app.dao;

import szpak.marcin.management.app.model.Order;
import szpak.marcin.management.app.model.Settlement;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class OrderDaoImp implements OrderDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(Order order) {
        sessionFactory.getCurrentSession().save(order);
    }

    @Override
    public List<Order> listOrder() {
        @SuppressWarnings("unchecked")
        TypedQuery<Order> query = sessionFactory.getCurrentSession().createQuery("from Order");
        return query.getResultList();
    }

    @Override
    public void deleteOrder(Integer orderId) {
        Order orderToDelete = (Order) sessionFactory.getCurrentSession().load(Order.class, orderId);
        sessionFactory.getCurrentSession().delete(orderToDelete);
    }

    @Override
    public Order findOrder(Integer orderNumber) {
        return (Order) sessionFactory.getCurrentSession()
                .createQuery("from Order s where s.orderNumber = :orderNumber")
                .setParameter("orderNumber", orderNumber)
                .list().get(0);
    }

    @Override
    public void editOrder(Order order) {
        sessionFactory.getCurrentSession().update(order);

    }

    public Order getOrder(Integer orderId) {
        Order thatOrder = (Order) sessionFactory.getCurrentSession().get(Order.class, orderId);
        return thatOrder;
    }

    public List<Order> findOrder(Integer orderNumber, String systemName, Double amountOfMoney, Date startDate, Date expirationDate, Settlement paymentPeriod) {
        Map<String, Object> parameters = new HashMap<>();
        String query = "from Order o where 1=1";
        if (orderNumber != null) {
            query += " and (o.orderNumber = :orderNumber)";
            parameters.put("orderNumber", orderNumber);
        }
        if (systemName != null && !"".equals(systemName)) {
            query += " and (o.system.systemName = :systemName)";
            parameters.put("systemName", systemName);
        }
        if (amountOfMoney != null) {
            query += " and (o.amountOfMoney = :amountOfMoney)";
            parameters.put("amountOfMoney", amountOfMoney);
        }
        if (expirationDate != null) {
            query += " and (o.expirationDate = :expirationDate)";
            parameters.put("expirationDate", expirationDate);
        }
        if (startDate != null) {
            query += " and (o.startDate = :startDate)";
            parameters.put("startDate", startDate);
        }
        if (paymentPeriod != null && !"".equals(paymentPeriod)) {
            query += " and (o.paymentPeriod = :paymentPeriod)";
            parameters.put("paymentPeriod", paymentPeriod);
        }
        Query hql = sessionFactory.getCurrentSession()
                .createQuery(query);
        for (Map.Entry<String, Object> entry : parameters.entrySet()) {
            hql.setParameter(entry.getKey(), entry.getValue());
        }
        return hql.list();

    }
}
