package szpak.marcin.management.app.model;

import szpak.marcin.management.app.util.DateUtil;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders", schema = "public")
public class Order {
    @Id
    @SequenceGenerator(name = "orders_order_id_seq", sequenceName = "orders_order_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "orders_order_id_seq")
    @Column(updatable = false)
    private int ordersId;
    @Column(name = "order_number")
    private Integer orderNumber;
    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "sys_id")
//    @Column(name = "sys_Id")
    private System system;
    @Column(name = "start_date")
    private Date startDate;
    @Column(name = "expiration_date")
    private Date expirationDate;
    @Column(name = "amount_of_money")
    private Double amountOfMoney;
    @Enumerated(EnumType.STRING)
    @Column(name = "payment_period")
    private Settlement paymentPeriod;
    @Column(name = "is_active")
    private boolean isActive;
    @Column(name = "sys_id", insertable = false, updatable = false)
    Integer sysId;

//    public Date dateFormat(String strDate) {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        try {
//            Date newDate = dateFormat.parse(strDate);
//            return newDate;
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }

//    public String dateToString(Date date) {
//        if (date == null) {
//            return "";
//        } else {
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            String dataString = dateFormat.format(date);
//            return dataString;
//        }
//    }

    public int getOrdersId() {
        return ordersId;
    }

    public int getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(int orderNumber) {
        this.orderNumber = orderNumber;
    }

    public System getSystem() {
        return system;
    }

    public void setSystem(System system) {
        this.system = system;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = DateUtil.dateFormat(startDate);
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public Double getAmountOfMoney() {
        return amountOfMoney;
    }

    public void setAmountOfMoney(Double amountOfMoney) {
        this.amountOfMoney = amountOfMoney;
    }

    public Settlement getPaymentPeriod() {
        return paymentPeriod;
    }

    public void setPaymentPeriod(Settlement paymentPeriod) {
        this.paymentPeriod = paymentPeriod;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public String isActiveAsString() {
        if (isActive) {
            return "Active";
        } else {
            return "no longer active";
        }
    }
}
